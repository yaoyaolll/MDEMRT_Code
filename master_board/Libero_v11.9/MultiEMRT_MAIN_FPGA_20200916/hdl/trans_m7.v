// trans_m7.v
module trans_m7
(
    reset_,clock_57,dsp_data,rden7,dsp_clk,m7_bzo,m7_boo,m7_sendata_reg_wren,dsp_wr,load_datadone_m7
);

parameter width_double_word = 32;
parameter width_byte=8;
parameter number_bit_counter=32;
parameter number_state=3;
parameter mc7_head=32'b11111111111010101010101010000111;
parameter mc7_headno=32'b11111111110101010101010101111000;

parameter idle=3'b001;
parameter sending_head=3'b010;
parameter sending_data=3'b100;

input reset_;
input clock_57;
input [15:0] dsp_data;
input rden7;
input dsp_clk;
input m7_sendata_reg_wren;
input dsp_wr;
output m7_bzo;
output m7_boo;
output load_datadone_m7;


reg [width_double_word-1:0] m7_t_mc_shiftreg;
reg [width_double_word-1:0] m7_t_no_shiftreg;
reg bit_counter_clear,bit_counter_inc,shift;
reg [number_bit_counter-1:0] bit_count;
reg [width_double_word-1:0] m7_t_mc_reg;
reg load_head_shiftreg;
reg load_data_shiftreg;
reg [number_state-1:0] state,next_state;
reg mcoutdisable;
reg [15:0] q7;
reg rden77;

assign m7_boo=m7_t_mc_shiftreg[31];
assign m7_bzo=m7_t_no_shiftreg[31];
assign load_datadone_m7=load_data_shiftreg;

always @(negedge clock_57,negedge reset_)
begin
   if(!reset_)
   state <= idle;
   else
   state <= next_state;
end
always @(state,bit_count,m7_t_mc_reg,rden7,rden77)
begin

	bit_counter_clear = 0 ;
	bit_counter_inc = 0 ;
	load_head_shiftreg = 0 ;
	load_data_shiftreg = 0 ;
	shift = 0 ;
	mcoutdisable = 1 ;
	
	case(state)
		idle:
        begin
		if(rden77==1)
				begin
					mcoutdisable = 0 ;
					load_head_shiftreg=1;
					bit_counter_clear = 1 ;
					next_state=sending_head;
				end
        else
                    next_state = idle;
		end				
		sending_head:
		
			begin
				mcoutdisable = 0 ;
				
				if(bit_count != 32'b10000000000000000000000000000000)
					begin
						shift=1;
						bit_counter_inc = 1 ;
                        next_state = sending_head;
					end
				else
					begin
						next_state=sending_data;
						load_data_shiftreg=1;
						bit_counter_clear=1;
					end
			end
			              
		sending_data:
		    begin
				if(bit_count!=32'b10000000000000000000000000000000)
					begin
						mcoutdisable= 0 ;
						shift=1;
						bit_counter_inc = 1 ;
                        next_state = sending_data;
					end
				else if(rden7==0)
					begin
						bit_counter_clear=1;
						next_state=idle;
						
					end
				else
					
					begin
						mcoutdisable = 0 ;
						bit_counter_clear=1;
						load_data_shiftreg=1;
                        next_state = sending_data;
					end
		      end
		default:
			next_state=idle;
	endcase

end


always @(negedge clock_57,negedge reset_)
   begin 
      if(reset_==0)
          begin
             m7_t_mc_reg=32'b00000000000000000000000000000000;
          end
      else if(rden7==0)
          begin
             m7_t_mc_reg=32'b00000000000000000000000000000000;
          end

     else if((bit_count==32'b00000000000000001000000000000000)&&(rden7==1)&&(rden77==1))
		  begin
		    m7_t_mc_reg[1:0]=q7[0]?2'b10:2'b01;
			m7_t_mc_reg[3:2]=q7[1]?2'b10:2'b01;
			m7_t_mc_reg[5:4]=q7[2]?2'b10:2'b01;
			m7_t_mc_reg[7:6]=q7[3]?2'b10:2'b01;
			m7_t_mc_reg[9:8]=q7[4]?2'b10:2'b01;
			m7_t_mc_reg[11:10]=q7[5]?2'b10:2'b01;
			m7_t_mc_reg[13:12]=q7[6]?2'b10:2'b01;
			m7_t_mc_reg[15:14]=q7[7]?2'b10:2'b01;
			m7_t_mc_reg[17:16]=q7[8]?2'b10:2'b01;
			m7_t_mc_reg[19:18]=q7[9]?2'b10:2'b01;
			m7_t_mc_reg[21:20]=q7[10]?2'b10:2'b01;
			m7_t_mc_reg[23:22]=q7[11]?2'b10:2'b01;
			m7_t_mc_reg[25:24]=q7[12]?2'b10:2'b01;
			m7_t_mc_reg[27:26]=q7[13]?2'b10:2'b01;
			m7_t_mc_reg[29:28]=q7[14]?2'b10:2'b01;
			m7_t_mc_reg[31:30]=q7[15]?2'b10:2'b01;
		  end		
	 
           
   end

always @(negedge clock_57,negedge reset_)
begin	
    if(reset_==0)
		begin
			

			m7_t_mc_shiftreg <= 32'b10000000000000000000000000000000 ;
			m7_t_no_shiftreg <= 32'b10000000000000000000000000000000 ;
			bit_count <= 32'b00000000000000000000000000000001;
		end
	else
		begin

			
			if(load_head_shiftreg==1)
				begin
					m7_t_mc_shiftreg <= mc7_head ;
					m7_t_no_shiftreg <= mc7_headno ;
				end
				
				
			if(load_data_shiftreg==1)
				begin
					m7_t_mc_shiftreg <= ~m7_t_mc_reg ;
					m7_t_no_shiftreg <= m7_t_mc_reg ;
				end
				
			if(bit_counter_clear==1)
				bit_count <= 32'b00000000000000000000000000000001;
				
			if(bit_counter_inc ==1)
				bit_count <= {bit_count[30:0],1'b0};
			
			
			if(shift==1)
				begin
					m7_t_mc_shiftreg <= {m7_t_mc_shiftreg[30:0],1'b0} ;
					m7_t_no_shiftreg <= {m7_t_no_shiftreg[30:0],1'b0} ;	
				end
				
			if(mcoutdisable == 1)
				begin
					m7_t_mc_shiftreg <= 32'b10000000000000000000000000000000 ;
					m7_t_no_shiftreg <= 32'b10000000000000000000000000000000 ;
				end
				
		end
end
always @(posedge dsp_clk,negedge reset_ )
   begin
     if(!reset_)
          q7<=16'b0000_0000_0000_0000;
     else 
        if((m7_sendata_reg_wren==1)&&(dsp_wr==0))
          q7<=dsp_data;
   end

always @(negedge dsp_clk,negedge reset_)
   begin
     if (!reset_)
        rden77<=0;
     else if (rden7==1)
        rden77<=1;
	 else 
        rden77<=0;	
   end
endmodule
