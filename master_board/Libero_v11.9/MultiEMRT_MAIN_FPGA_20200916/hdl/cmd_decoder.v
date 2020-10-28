// cmd_decoder.v
module cmd_decoder
(
	md2udi, reset_, clock_m2rx24, clock_system, rcvd_datareg, m2rxirqb,rst_out,load,tst_state,bit35
);

// clock_m2rx24 clock_system
parameter word_size = 34;
parameter num_state_bits = 10;

parameter idle = 10'b0000000001;
parameter heading = 10'b0000000010;
parameter starting = 10'b0000000100;
parameter receiving = 10'b0000001000;
parameter waiting = 10'b0000010000;
parameter waiting1 = 10'b0000100000;
parameter idle1 = 10'b0001000000;
parameter heading1 = 10'b0010000000;
parameter starting1 = 10'b0100000000;
parameter receiving1 = 10'b1000000000;


parameter state_1=2'b01;
parameter state_2=2'b10;

parameter state_11=4'b01;
parameter state_22=4'b10;


	input md2udi;
	input reset_;
	input clock_m2rx24;
	input clock_system;
	output [15:0] rcvd_datareg;
	output m2rxirqb;
    output rst_out;
    output load;
    output [1:0] tst_state;
    output bit35;

reg [word_size-1:0] rcv_shftreg;
reg [23:0] sample_counter;
reg [34:0] bit_counter;
reg inc_bit_counter,clr_bit_counter;
reg inc_sample_counter,clr_sample_counter;
reg shift,load;
reg [15:0] rcvd_datareg;
reg [num_state_bits-1:0] state,next_state;
reg [1:0] state_ii,next_state_ii;
reg [6:0] headreg ;
reg headshift ;
reg headshift_clr ;
reg loaddata ;
reg m2rxirq_out;
reg m2rxirqb ;
reg [8:0] int_counter ;
reg int_counter_inc ;
reg int_counter_clr ;
reg md2udireg;

reg rst_out;
reg rst_out_en;
reg [1:0] state_iii , next_state_iii ;
reg [34:0] rst_counter ;
reg rst_counter_clr , rst_counter_inc;
reg [1:0] tst_state;
wire bit35;

assign bit35=bit_counter[34];

always @(posedge clock_system)
begin
	if(reset_ == 0)
		md2udireg <= 1'b0;
	else if(state == idle || state == idle1 || state == waiting || state == waiting1)
		md2udireg <= md2udi;

end
always @(posedge clock_m2rx24, negedge reset_)
begin
     if(reset_==0)
     begin
        state<=idle;
     end       
     else
        begin
            state<=next_state;
        end
end

always @(state,md2udireg,headreg,sample_counter,bit_counter,rcv_shftreg)
begin
    m2rxirq_out=0;
	clr_sample_counter=0;
	clr_bit_counter=0;
	inc_sample_counter=0;
	inc_bit_counter=0;
	shift=0;
	load=0;
	headshift = 0 ;
	headshift_clr = 0 ;
	loaddata = 0 ;
	next_state=state;
    rst_out_en = 0;

	case(state)
	idle:
		if(md2udireg == 1)
			begin
				next_state = heading ;
				headshift_clr = 1 ;
                tst_state=2'b00;
			end
			
	heading:
		if(sample_counter != 24'b000000000000001000000000)
			inc_sample_counter = 1 ;
		else
			begin
				headshift = 1 ;
				next_state = starting ;
				clr_sample_counter = 1 ;
			end
			
	starting:
		begin
            tst_state=2'b01;
			if(sample_counter != 24'b100000000000000000000000)
				inc_sample_counter = 1 ;
			else
				begin
				headshift = 1 ;
				clr_sample_counter = 1 ;
				end
			
			if( (headreg == 7'b0001001) || (headreg == 7'b0001010) || (headreg == 7'b0000101) || (headreg == 7'b0000110) )//cmd
                begin
					loaddata = 1 ;
					next_state = receiving ;
				end

            if(headreg == 7'b0000000)
				next_state = idle ;
		end
		
	receiving:
		if(sample_counter != 24'b100000000000000000000000)
        begin
			inc_sample_counter=1;
            tst_state=2'b10;
        end
		else
			begin
				clr_sample_counter=1;
				
				if(bit_counter!=35'b10000000000000000000000000000000000)
					begin
						shift=1;
						inc_bit_counter=1;
					end
				else
					begin					
						clr_bit_counter=1;
						load=1;
						headshift_clr = 1 ;
                        tst_state=2'b11;
                        case({rcv_shftreg[33],rcv_shftreg[31],rcv_shftreg[29],rcv_shftreg[27],rcv_shftreg[25],rcv_shftreg[23],rcv_shftreg[21],rcv_shftreg[19],rcv_shftreg[17],rcv_shftreg[15],rcv_shftreg[13],rcv_shftreg[11]})                            
                            12'b1001_1001_0011:
                            begin
                                m2rxirq_out = 1'b1;//0x993x,receive data cmd
                                next_state = waiting1;
                            end 
                            12'b1001_1001_0010:
                            begin
                                m2rxirq_out = 1'b1;//0x992x,send table data cmd
                                next_state = waiting1;
                            end                       
                            12'b1001_1001_0101:
                            begin
                                m2rxirq_out = 1'b1;//0x995x,modify para cmd
                                next_state = waiting1;
                            end
                            12'b1001_1001_0110:
                            begin
                                m2rxirq_out = 1'b1;//0x996x,modify para cmd
                                next_state = waiting1;
                            end
                            12'b1001_1001_0111:
                            begin
                                m2rxirq_out = 1'b1;//0x997x,modify para cmd
                                next_state = waiting1;
                            end
                            12'b1001_1001_1000:
                            begin
                                m2rxirq_out = 1'b1;//0x998x,modify para cmd
                                next_state = waiting1;
                            end
                            12'b1001_1001_1010:
                            begin
                                m2rxirq_out = 1'b1;//0x99ax,modify para cmd
                                next_state = waiting1;
                            end
                            12'b1001_1001_0001:
                            begin
                                m2rxirq_out = 1'b1;//0x991x,only acquire cmd, no data
                                next_state = waiting;
                            end
                            12'b1001_1001_0100:
                            begin
                                m2rxirq_out = 1'b1;//0x994x,only send cmd, no data
                                next_state = waiting;
                            end
                            12'b1001_1001_0000:
                            begin
                                m2rxirq_out = 1'b1;//0x990x,check cmd, no data
                                next_state = waiting;
                            end
                            12'b1001_1001_1001:
                            begin
                                m2rxirq_out = 1'b1;//0x999x,modify para cmd
                                next_state = waiting1;
                            end
                            12'b0000_0011_0100:
                            begin
                                m2rxirq_out = 1'b1;//0x034x,only send cmd, no data
                                next_state = waiting;
                            end
							default:
								next_state=waiting;
						endcase		 
                        
                        if(({rcv_shftreg[33],rcv_shftreg[31],rcv_shftreg[29],rcv_shftreg[27],rcv_shftreg[25],rcv_shftreg[23],rcv_shftreg[21],rcv_shftreg[19],rcv_shftreg[17],rcv_shftreg[15],rcv_shftreg[13],rcv_shftreg[11],rcv_shftreg[9],rcv_shftreg[7],rcv_shftreg[5],rcv_shftreg[3]})
				        == 16'b0000_0011_0000_0000)
                            rst_out_en = 1;//0x0300: reset DSP cmd
                   end
			end
	waiting:
		if(md2udireg == 1)
		   next_state = idle;
	waiting1:
		//if((md2udireg == 0)||(md2udireg == 1))
		if(md2udireg == 0)
        	next_state = idle1;
	idle1:
        begin
        tst_state=2'b00;
		if(md2udireg == 1)
			begin
				next_state = heading1 ;
				headshift_clr = 1 ;
			end
        end
	heading1:
		if(sample_counter != 24'b000000000000001000000000)
        begin
			inc_sample_counter = 1 ;
        end
		else
			begin
				headshift = 1 ;
				next_state = starting1 ;
				clr_sample_counter = 1 ;
			end
	starting1:
		begin
            tst_state=2'b01;
			if(sample_counter != 24'b100000000000000000000000)
					inc_sample_counter = 1 ;
				else
					begin
					headshift = 1 ;
					clr_sample_counter = 1 ;
					end
		
			if(headreg == 7'b1111001 || headreg == 7'b1111010 || headreg == 7'b1110101 || headreg == 7'b1110110)//data
				begin
					loaddata = 1 ;
					next_state = receiving1 ;
				end
				
			if((headreg == 7'b0001001) || (headreg == 7'b0001010) || (headreg == 7'b0000101) || (headreg == 7'b0000110))//cmd
				begin
					loaddata = 1 ;
					next_state = receiving ;
				end
            if(headreg == 7'b0000000)
				next_state = idle ;
		end
	receiving1:
		if(sample_counter != 24'b100000000000000000000000)
        begin
			inc_sample_counter=1;
            tst_state=2'b10;
        end
		else
			begin
				clr_sample_counter=1;
				
				if(bit_counter!=35'b10000000000000000000000000000000000)
					begin
						shift=1;
						inc_bit_counter=1;
					end
				else
					begin
						next_state = waiting1;
						clr_bit_counter=1;
						load=1;
						headshift_clr = 1 ;
						m2rxirq_out = 1'b1;
                        tst_state=2'b11;		 
					end
			end		
    default:       
           next_state = idle;
   endcase 
end



always @(posedge clock_m2rx24, negedge reset_)
begin
	if(reset_==0)
		begin
			sample_counter<=24'b000000000000000000000001;
			bit_counter<=35'b00000000000000000000000000000000001;
			rcvd_datareg<=0;
			rcv_shftreg<=0;
			headreg <= 7'b0000000 ;
		end
	else
		begin
			
			if(headshift_clr == 1)
				headreg <= 7'b0000000 ;
			
			if(clr_sample_counter==1)
				sample_counter<=24'b000000000000000000000001;
				
			if(inc_sample_counter==1)
				sample_counter<={sample_counter[22:0],1'b0};
			
			if(clr_bit_counter==1)
				bit_counter<=35'b00000000000000000000000000000000001;
				
			if(inc_bit_counter==1)
				bit_counter<={bit_counter[33:0],1'b0};
				
			if(loaddata == 1)
				begin
					bit_counter<=35'b00000000000000000000000000000010000;
					rcv_shftreg<={rcv_shftreg[29:0],headreg[3:0]};
				end
				
			if(shift==1)
				rcv_shftreg<={rcv_shftreg[word_size-2:0],md2udi};
			
			if(headshift == 1)
				headreg <= {headreg[5:0],md2udi} ;
			
			if(load==1)
				begin
					rcvd_datareg[15]<=rcv_shftreg[33];
					rcvd_datareg[14]<=rcv_shftreg[31];
					rcvd_datareg[13]<=rcv_shftreg[29];
					rcvd_datareg[12]<=rcv_shftreg[27];
					rcvd_datareg[11]<=rcv_shftreg[25];
					rcvd_datareg[10]<=rcv_shftreg[23];
					rcvd_datareg[9]<=rcv_shftreg[21];
					rcvd_datareg[8]<=rcv_shftreg[19];
					rcvd_datareg[7]<=rcv_shftreg[17];
					rcvd_datareg[6]<=rcv_shftreg[15];
					rcvd_datareg[5]<=rcv_shftreg[13];
					rcvd_datareg[4]<=rcv_shftreg[11];
					rcvd_datareg[3]<=rcv_shftreg[9];
					rcvd_datareg[2]<=rcv_shftreg[7];
					rcvd_datareg[1]<=rcv_shftreg[5];
					rcvd_datareg[0]<=rcv_shftreg[3];
				end

		end
end



always @(state_ii,m2rxirq_out,int_counter)
begin
	m2rxirqb=0;
	int_counter_inc = 0 ;
	int_counter_clr = 0 ;
	next_state_ii=state_ii ;

	case(state_ii)
	state_1:
		if(m2rxirq_out==1 )
			next_state_ii=state_2;
	state_2:
			if(int_counter == 9'b100000000)
				begin
					int_counter_clr = 1 ;
					m2rxirqb = 1 ;
					next_state_ii=state_1;
				end
			else
				begin
					int_counter_inc = 1 ;
					m2rxirqb = 1 ;
				end
	default:
		next_state_ii=state_1;
		
	endcase
end

always @(posedge clock_m2rx24, negedge reset_)
begin
	if(reset_==0)
		begin
			state_ii <= state_1 ;
			int_counter <= 9'b000000001 ;
		end
	else
		begin
			state_ii <= next_state_ii ;
			
			if(int_counter_inc == 1)
				int_counter <= {int_counter[7:0],1'b0} ;
				
			if(int_counter_clr == 1)
				int_counter <= 9'b000000001 ;
		end
end
			
always @(state_iii,rst_counter,rst_out_en)
begin

    rst_out = 1;
    rst_counter_clr = 0;
    rst_counter_inc = 0;
    next_state_iii = state_iii;

    case(state_iii)
    state_11:
    begin
        if(rst_out_en == 1)
            next_state_iii = state_22;
    end
    state_22:
    begin
        rst_out = 0;//outp DSP reset !!

        if(rst_counter == 35'b10000000000000000000000000000000000)
        begin
            rst_counter_clr = 1 ;
			next_state_iii = state_11;
		end
        else
            rst_counter_inc = 1 ;
    end
    default:
        next_state_iii = state_11;
    endcase
end

always @(posedge clock_system)
begin
		if(rst_out_en == 0)
			begin
				state_iii<=state_11;
				rst_counter <= 35'b00000000000000000000000000000000001;
			end
		else
			begin
				state_iii<=next_state_iii;
				
				if(rst_counter_inc == 1)
					rst_counter <= {rst_counter[33:0],1'b0} ;
					
				if(rst_counter_clr == 1)
					rst_counter <= 35'b00000000000000000000000000000000001;
			end
end

            

endmodule



