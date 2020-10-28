// -----------------------------------------------------------------------------
// Author    : Qingfeng Jiang
// Email     : qfjiang123@163.com
// File      : module ads_trans_fsm.v
// Create    : 2018-06-06 20:43:12
// Last edit : 2018-06-06 22:43:12
// Editor    : sublime text3, tab size (4)
// Vesion    : V1.0
// Abstract  : ??????DSP??DC??????????????????
// -----------------------------------------------------------------------------

`timescale 1ns/1ps
module ads_trans_fsm (
				//input signals
					//input signals from DSP
						input          wire              dsp_clk_60M_in,
						input          wire              dsp_rstn_in,
						input          wire              dsp_adc_en_in,
					//input signals from ADC
						input          wire              adc_data1_in,     
						input          wire              adc_data2_in,     
						input          wire              adc_data3_in,     
//						input          wire              adc_data4_in,
				//output signals
					//output signals to ADC
						output        reg                sam_clk_5M_out,
						output        wire               adc_clk_20M_out,
						output        reg                adc_fsync_out,//5M??????Tfsync>=256*Tclk20M,??????????56???????????????>=0
						output        reg    [3:0]       adc_pwdn_out,
					//output signals to DSP
						output        reg                convert_over_out,
						output        wire   [15:0]      adc_data1_out,
						output        wire   [15:0]      adc_data2_out,
						output        wire   [15:0]      adc_data3_out,
//						output        wire   [15:0]      adc_data4_out,
						output		  wire	 			 adc_data1_test,
						output		  wire	 			 adc_data2_test,
						output		  wire	 			 adc_data3_test,
					//output signals to Analog_MUX
						output        reg	 [1:0]		 pt_MUX1,
						output        reg	 [1:0]		 pt_MUX2										
					);
parameter                 IDLE        = 2'b00,
                          SAM_DATA    = 2'b01,
                          FINISH      = 2'b10;

parameter                data_num = 80;
reg      [1:0]     curr_sta;
reg      [1:0]     next_sta;  

reg                       rst_20M_reg0;
reg                       rst_20M_reg;
reg                       rst_5M_reg0;
reg                       rst_5M_reg;
reg        [2:0]          cnt_60_5;					//60M???12????M
reg		   [1:0]		  cnt_step1,cnt_step;		//60M???3????0M

reg        [4:0]          adc_en_cnt;
reg                       fpga_adc_en_reg;
reg                       fpga_adc_en_reg_delay;
reg                       fpga_adc_en_reg_delay2;
wire                      fpga_adc_en;

reg        [7:0]          data_cnt;
reg        [23:0]         dout1_reg;
reg        [23:0]         dout2_reg;
reg        [23:0]         dout3_reg;
//reg        [23:0]         dout4_reg;
reg        [1:0]          pt_MUX_cnt;				//???ADC?????????pt_MUX???

//-------------------------------???rst_20M_reg?0M?????????????--------------------//
//???????????????????
always @ (posedge adc_clk_20M_out or negedge dsp_rstn_in) 
begin
	if(~dsp_rstn_in)
		rst_20M_reg0 <= 1'b0;
	else
		rst_20M_reg0 <= 1'b1;
end
always @ (posedge adc_clk_20M_out or negedge dsp_rstn_in) 
begin
	if(~dsp_rstn_in)
		rst_20M_reg <= 1'b0;
	else
		rst_20M_reg <= rst_20M_reg0;
end
//-------------------------------???rst_5M_reg?M?????????????--------------------//
//???????????????????
always @ (posedge sam_clk_5M_out or negedge dsp_rstn_in) 
begin
	if(~dsp_rstn_in)
		rst_5M_reg0 <= 1'b0;
	else
		rst_5M_reg0 <= 1'b1;
end
always @ (posedge sam_clk_5M_out or negedge dsp_rstn_in) 
begin
	if(~dsp_rstn_in)
		rst_5M_reg <= 1'b0;
	else
		rst_5M_reg <= rst_5M_reg0;
end
//-------------------------------???fpga_adc_en_reg?M????????dc_en???---------------------//
always @ (posedge dsp_clk_60M_in or negedge dsp_rstn_in)
begin
	if(~dsp_rstn_in)
		fpga_adc_en_reg <= 1'b0;
	else if(dsp_adc_en_in)
		fpga_adc_en_reg <= 1'b1;
	else if(adc_en_cnt == 5'b11111)
		fpga_adc_en_reg <= 1'b0;
end
always @ (posedge dsp_clk_60M_in or negedge dsp_rstn_in)
begin
	if(~dsp_rstn_in)
		adc_en_cnt <= 5'b00000;
	else if(fpga_adc_en_reg)
		adc_en_cnt <= adc_en_cnt + 5'b00001;
end
always @ (posedge sam_clk_5M_out or negedge rst_5M_reg) 
begin
	if(~rst_5M_reg)
		fpga_adc_en_reg_delay <= 1'b0;
	else
		fpga_adc_en_reg_delay <= fpga_adc_en_reg;
end
always @ (posedge sam_clk_5M_out or negedge rst_5M_reg) 
begin
	if(~rst_5M_reg)
		fpga_adc_en_reg_delay2 <= 1'b0;
	else
		fpga_adc_en_reg_delay2 <= fpga_adc_en_reg_delay;
end
assign fpga_adc_en = fpga_adc_en_reg_delay & ~fpga_adc_en_reg_delay2;




//-------------------------------???adc_clk_20M_out,ADC????0M??????---------------------//
always @ (posedge dsp_clk_60M_in or negedge dsp_rstn_in)
begin
    if (~dsp_rstn_in)
        cnt_step <= 2'b00;
	else
		begin
			case (cnt_step)
				2'b00: cnt_step <= 2'b01;
				2'b01: cnt_step <= 2'b10;
				2'b10: cnt_step <= 2'b00;
				default: cnt_step <= 2'b00;
			endcase
		end
end

always @ (negedge dsp_clk_60M_in or negedge dsp_rstn_in)
begin
    if (~dsp_rstn_in)
        cnt_step1 <= 2'b00;
	else
		begin
			case (cnt_step1)
				2'b00: cnt_step1 <= 2'b01;
				2'b01: cnt_step1 <= 2'b10;
				2'b10: cnt_step1 <= 2'b00;
				default: cnt_step1 <= 2'b00;
			endcase
		end
end
assign adc_clk_20M_out =~ (cnt_step[1]|cnt_step1[1]);

//-------------------------------???sam_clk_5M_out?????DC?M??????---------------------//
//generate sam_clk_5M_out	
always @ (posedge dsp_clk_60M_in or negedge dsp_rstn_in) 
begin   
    if (~dsp_rstn_in)
		begin
			cnt_60_5 <= 3'b000;
			sam_clk_5M_out <= 1'b0;
		end
	else 
		begin
			if(cnt_60_5 == 5)
				begin
					sam_clk_5M_out <= ~sam_clk_5M_out;
					cnt_60_5 <= 0;
				end
			else
				cnt_60_5 <= cnt_60_5 + 3'b001;
		end
end

//-------------------------------???PWDN???????0M??????------------------------//
//
always @ (posedge adc_clk_20M_out or negedge rst_20M_reg) 
begin
	if(~rst_20M_reg) begin
		adc_pwdn_out <= 4'b1111;		
	end else begin
		adc_pwdn_out <= 4'b1111;
	end
end	

//-------------------------------???pt_MUX???????0M??????---------------------//
//
always @(posedge convert_over_out or negedge dsp_rstn_in)
begin
	if(~dsp_rstn_in)begin
		pt_MUX_cnt <= 2'b00;
	end else begin
		pt_MUX_cnt <= pt_MUX_cnt + 2'b01;
	end
end

always @(posedge convert_over_out or negedge dsp_rstn_in) 
begin
	if(~dsp_rstn_in)begin
		pt_MUX1 <= 2'b11;
		pt_MUX2 <= 2'b11;
	end else begin
		case(pt_MUX_cnt)
			2'b00:begin	
			pt_MUX1 <= 2'b00;
			pt_MUX2 <= 2'b00;
			end
			2'b01:begin	
			pt_MUX1 <= 2'b01;
			pt_MUX2 <= 2'b01;
			end
			2'b10:begin	
			pt_MUX1 <= 2'b10;
			pt_MUX2 <= 2'b10;
			end
			2'b11:begin	
			pt_MUX1 <= 2'b11;
			pt_MUX2 <= 2'b11;
			end
			default:begin	
			pt_MUX1 <= pt_MUX1;
			pt_MUX2 <= pt_MUX1;
			end
		endcase
	end 
end	



always @(posedge sam_clk_5M_out or negedge rst_5M_reg)
begin
	if(~rst_5M_reg)
		curr_sta <= IDLE;
	else
		curr_sta <= next_sta;
end

always @(*)
begin
	case (curr_sta)
		IDLE:begin
			if(fpga_adc_en)
				next_sta = SAM_DATA;
			else
				next_sta = IDLE;
		end
		SAM_DATA:begin
			if(data_cnt == data_num)
				next_sta = FINISH;
			else
				next_sta = SAM_DATA;
		end
		FINISH:begin
			next_sta = IDLE;
		end
		default:begin
			next_sta = IDLE;
		end
	endcase
end

always @(posedge sam_clk_5M_out or negedge rst_5M_reg)
begin
	if(~rst_5M_reg)
	begin
		data_cnt         <= 8'b0000_0000;
		convert_over_out <= 1'b0;
	end
	else
	begin
		case (next_sta)
			IDLE:begin
				data_cnt <= 8'b0000_0000;
				convert_over_out <= 1'b0;
			end
			SAM_DATA:begin
				data_cnt <= data_cnt + 8'b0000_0001;
			end
			FINISH:begin
				convert_over_out <= 1'b1;
			end
		endcase
	end
end

always @(negedge sam_clk_5M_out)
begin
	if(fpga_adc_en)
		adc_fsync_out <= 1'b0;
	else if(data_cnt>8'b0000_0001 & data_cnt <8'b0000_0101)
		adc_fsync_out <= 1'b1;
	else
		adc_fsync_out <= 1'b0;
end
always @(posedge sam_clk_5M_out or negedge rst_5M_reg)
begin
	if(~rst_5M_reg)
	begin
		dout1_reg <= 24'b0;
		dout2_reg <= 24'b0;
		dout3_reg <= 24'b0;
//		dout4_reg <= 24'b0;
	end
	else if(data_cnt>8'b0000_0001 & data_cnt <8'b0001_1010)
	begin
		dout1_reg[23:0] <= {dout1_reg[22:0],adc_data1_in};
		dout2_reg[23:0] <= {dout2_reg[22:0],adc_data2_in};
		dout3_reg[23:0] <= {dout3_reg[22:0],adc_data3_in};
//		dout4_reg[23:0] <= {dout4_reg[22:0],adc_data4_in};
	end
	else
	begin
		dout1_reg <= dout1_reg;
		dout2_reg <= dout2_reg;
		dout3_reg <= dout3_reg;
//		dout4_reg <= dout4_reg;
	end
end

assign adc_data1_out = dout1_reg[23:8];
assign adc_data2_out = dout2_reg[23:8];
assign adc_data3_out = dout3_reg[23:8];
//assign adc_data4_out = dout4_reg[23:8];

assign adc_data1_test = dout1_reg[0];
assign adc_data2_test = dout2_reg[0];
assign adc_data3_test = dout3_reg[0];

endmodule


