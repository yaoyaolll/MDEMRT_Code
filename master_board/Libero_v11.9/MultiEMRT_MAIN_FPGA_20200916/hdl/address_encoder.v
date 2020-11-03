// address_encoder.v
module address_encoder
(
	reset,
	dsp_clkout,
	clk_m2_up,
	xzcs0and1,
	dsp_address,
	edib_clk_source_rst,
	edib_interface_rst,
	m2_send,
	m2_wr_reg_en,
	m2_sendone_rd_en,
	rcvd_datareg_en,
	clr_m5_loadone_flag,
	m5_sendata_reg_wren,
	m5_loadone_reg_rden,
	m5_send_en,
	clr_m7_loadone_flag,
	m7_sendata_reg_wren,
	m7_loadone_reg_rden,
	m7_send_en,
	adc_open,
	adc_data_choice,
	mux_ctrl,
	mux1_en_open,
	mux2_en_open,
	mux1_en_close,
	mux2_en_close,
	S2_Open,
	S2_close
);
input 			reset;
input 			dsp_clkout;
input 			clk_m2_up;
input 			xzcs0and1;
input [18:0]	dsp_address;
//input [15:0]dsp_data;
output 			edib_clk_source_rst;
output 			edib_interface_rst;
output 			m2_send;
output 			m2_wr_reg_en;
output 			m2_sendone_rd_en;
output 			rcvd_datareg_en;
output 			clr_m5_loadone_flag,m5_sendata_reg_wren,m5_loadone_reg_rden,m5_send_en;
output 			clr_m7_loadone_flag,m7_sendata_reg_wren,m7_loadone_reg_rden,m7_send_en;
//////////////////////////////////
output 			adc_open;
output [1:0]	adc_data_choice;
output 			mux_ctrl;
output 			mux1_en_open;
output 			mux2_en_open;
output 			mux1_en_close;
output 			mux2_en_close;
output 			S2_Open,S2_close;

reg   			mux1_en_open;
reg   			mux2_en_open;
reg   			mux1_en_close;
reg   			mux2_en_close;
reg   			adc_open;
reg	  [1:0]		adc_data_choice;
reg   			mux_ctrl;
/////////////////////////////////

reg 			edib_clk_source_rst;
reg 			edib_interface_rst;
reg [8:0] 		m2start_pulse_counter;
reg 			m2start_pulse_counter_inc;
reg 			m2start_pulse_counter_clr;
reg [1:0] 		state;
reg [1:0]		next_state;
reg  			S2_Open;
reg 			S2_close;
//reg [15:0]m2send_reg;
reg 			m2_send_en;
reg 			m2_send;
reg 			m2_wr_reg_en;
reg 			m2_sendone_rd_en;
reg 			rcvd_datareg_en;
reg 			clr_m5_loadone_flag,m5_sendata_reg_wren,m5_loadone_reg_rden,m5_send_en;
reg 			clr_m7_loadone_flag,m7_sendata_reg_wren,m7_loadone_reg_rden,m7_send_en;

parameter ECSR_ON_ADDRESS =19'h04000;
parameter ECSR_OFF_ADDRESS =19'h04001;
parameter EIR_ON_ADDRESS =19'h04002;
parameter EIR_OFF_ADDRESS =19'h04003;
parameter M2SEND_ADDRESS =19'h04004;
parameter M5SEND_ON_ADDRESS =19'h04006;
parameter M5SEND_OFF_ADDRESS =19'h04007;
parameter CLR_M5_LOADONE_FLAG_ADDRESS =19'h04008;
parameter M7SEND_ON_ADDRESS =19'h04009;
parameter M7SEND_OFF_ADDRESS =19'h0400A;
parameter CLR_M7_LOADONE_FLAG_ADDRESS =19'h0400B;
parameter RCVD_DATAREG_ADDRESS =19'h02000;
parameter M2_REG_ADDRESS =19'h2005;
parameter M2_SENDONE_ADDRESS =19'h2006;
parameter M5_LOADONE_REG_ADDRESS=19'h2007;
parameter M5_SENDATA_REG_ADDRESS=19'h2008;
parameter M7_LOADONE_REG_ADDRESS=19'h2009;
parameter M7_SENDATA_REG_ADDRESS=19'h200A;
//////////////////////////////

parameter  AdcOPEN_ADDRESS=19'h4010;
parameter  AdcCLOSE_ADDRESS=19'h4011;
parameter  Mux1OPEN_ADDRESS=19'h4012;
parameter  Mux1CLOSE_ADDRESS=19'h4013;
parameter  Mux2OPEN_ADDRESS=19'h4014;
parameter  Mux2CLOSE_ADDRESS=19'h4015;
parameter  S2OPEN_ADDRESS=19'h4016;
parameter  S2CLOSE_ADDRESS=19'h4017;
parameter  AdcDATA1_CHOICE_ADDRESS=19'h4018;
parameter  AdcDATA2_CHOICE_ADDRESS=19'h4019;
parameter  AdcDATA3_CHOICE_ADDRESS=19'h401A;
parameter  AdcDATA4_CHOICE_ADDRESS=19'h401B;

////////////////////////////////

parameter state1=2'b01;
parameter state2=2'b10;

always @(posedge dsp_clkout,negedge reset)
begin
    if(reset==0)
    begin
		mux_ctrl<=0;
		edib_clk_source_rst<=1;
		edib_interface_rst<=1;

		m2_send_en<=0;
		m2_wr_reg_en<=0;
		m2_sendone_rd_en<=0;
		rcvd_datareg_en<=0;

		m5_send_en<=0;
		clr_m5_loadone_flag<=0;
		m5_sendata_reg_wren<=0;
		m5_loadone_reg_rden<=0;

		m7_send_en<=0;
		clr_m7_loadone_flag<=0;
		m7_sendata_reg_wren<=0;
		m7_loadone_reg_rden<=0; 

		/////////////////////////////////////
		adc_open<=0;
		mux1_en_open<=0;
		mux2_en_open<=0;
		//mux1_en_close<=0;
		//mux2_en_close<=0;
		S2_Open<=0;
		S2_close<=0;
		///////////////////////////////////
    end
    else
    begin
        if(xzcs0and1==0)
        begin
            case(dsp_address)
            ECSR_ON_ADDRESS: 
                edib_clk_source_rst<=0;
            ECSR_OFF_ADDRESS:
                edib_clk_source_rst<=1; 
            EIR_ON_ADDRESS:
                edib_interface_rst<=0;
            EIR_OFF_ADDRESS: 
                edib_interface_rst<=1;

            M5SEND_ON_ADDRESS:
                m5_send_en<=1;
            M5SEND_OFF_ADDRESS:
                m5_send_en<=0;
            CLR_M5_LOADONE_FLAG_ADDRESS:
                clr_m5_loadone_flag<=1;
            M5_LOADONE_REG_ADDRESS:
                m5_loadone_reg_rden<=1;
            M5_SENDATA_REG_ADDRESS:
                m5_sendata_reg_wren<=1;

            M7SEND_ON_ADDRESS:
                m7_send_en<=1;
            M7SEND_OFF_ADDRESS:
                m7_send_en<=0;
            CLR_M7_LOADONE_FLAG_ADDRESS:
                clr_m7_loadone_flag<=1;
            M7_LOADONE_REG_ADDRESS:
                m7_loadone_reg_rden<=1;
            M7_SENDATA_REG_ADDRESS:
                m7_sendata_reg_wren<=1;

            M2SEND_ADDRESS:
                m2_send_en<=1;
            M2_REG_ADDRESS:
                m2_wr_reg_en<=1;
            M2_SENDONE_ADDRESS:
                m2_sendone_rd_en<=1;
            RCVD_DATAREG_ADDRESS:
                rcvd_datareg_en<=1;     

            AdcOPEN_ADDRESS:
				begin
					mux_ctrl<=1;
					adc_open<=1;
				end
            AdcCLOSE_ADDRESS:
				begin
					mux_ctrl<=0;
					adc_open<=0;
				end
			AdcDATA1_CHOICE_ADDRESS:
				adc_data_choice<=2'b00;
			AdcDATA2_CHOICE_ADDRESS:
				adc_data_choice<=2'b01;
			AdcDATA3_CHOICE_ADDRESS:
				adc_data_choice<=2'b10;
			AdcDATA4_CHOICE_ADDRESS:
				adc_data_choice<=2'b11;
				
            Mux1OPEN_ADDRESS:
                mux1_en_open<=1;
            Mux1CLOSE_ADDRESS:
                mux1_en_open<=0;
            Mux2OPEN_ADDRESS:
                mux2_en_open<=1;
            Mux2CLOSE_ADDRESS:
                mux2_en_open<=0;
            S2OPEN_ADDRESS:
                S2_Open<=1;
            S2CLOSE_ADDRESS:
                S2_close<=1;
            endcase 
        end
        else
        begin
			m2_send_en<=0;
			m2_wr_reg_en<=0;
			m2_sendone_rd_en<=0; 
			rcvd_datareg_en<=0;

			clr_m5_loadone_flag<=0;
			m5_loadone_reg_rden<=0;
			m5_sendata_reg_wren<=0;

			clr_m7_loadone_flag<=0;
			m7_loadone_reg_rden<=0;
			m7_sendata_reg_wren<=0;  

			adc_open<=0;
			// mux1_en_open<=0;
			// mux2_en_open<=0;
			// mux1_en_close<=0;
			// mux2_en_close<=0;
			// S2_Open<=0;
			// S2_close<=0;
        end
    end
end


always @(reset,state,m2_send,m2start_pulse_counter,m2_send_en)
begin
    if(!reset)
         m2_send=0;
    if(m2_send_en==1)
    begin
        m2_send=1;
    end
    m2start_pulse_counter_inc=0;
    m2start_pulse_counter_clr=0;
    next_state=state;

    case(state)
    state1:
        if(m2_send==1)
        begin
            next_state=state2;
            m2start_pulse_counter_clr=1;
        end
    state2:
        if(m2start_pulse_counter==9'b100000000)
        begin
           m2start_pulse_counter_clr=1;
           m2_send=0;
           next_state=state1; 
        end
        else
        begin
           m2start_pulse_counter_inc=1;
           m2_send=1;
        end
    endcase
end

always @(posedge clk_m2_up,negedge reset)
begin
    if(reset==0)
    begin
        state<=state1;
        m2start_pulse_counter<=9'b000000001;
    end
    else
    begin
        state<=next_state;
        if(m2start_pulse_counter_inc==1)
            m2start_pulse_counter<={m2start_pulse_counter[7:0],1'b0};
        if(m2start_pulse_counter_clr==1)
            m2start_pulse_counter<=9'b000000001; 
    end
end

endmodule