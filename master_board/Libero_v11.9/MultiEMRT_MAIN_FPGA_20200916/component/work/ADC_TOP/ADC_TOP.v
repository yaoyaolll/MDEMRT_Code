//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jan 23 10:48:19 2019
// Version: v11.8 SP3 11.8.3.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// ADC_TOP
module ADC_TOP(
    // Inputs
    adc_din1,
    adc_din2,
    adc_din3,
    choice,
    dsp_adc_en_in,
    dsp_clk_in,
    dsp_rstn_in,
    // Outputs
    adc_clk_20M_out,
    adc_data1_test,
    adc_data2_test,
    adc_data3_test,
    adc_fsync_out,
    adc_pwdn_out,
    convert_over_out,
    dataout,
    pt_MUX1,
    pt_MUX2,
    sam_clk_5M_out
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         adc_din1;
input         adc_din2;
input         adc_din3;
input  [1:0]  choice;
input         dsp_adc_en_in;
input         dsp_clk_in;
input         dsp_rstn_in;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        adc_clk_20M_out;
output        adc_data1_test;
output        adc_data2_test;
output        adc_data3_test;
output        adc_fsync_out;
output [3:0]  adc_pwdn_out;
output        convert_over_out;
output [15:0] dataout;
output [1:0]  pt_MUX1;
output [1:0]  pt_MUX2;
output        sam_clk_5M_out;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          adc_data1_test_1;
wire          adc_data2_test_net_0;
wire          adc_data3_test_net_0;
wire          adc_din1;
wire          adc_din2;
wire          adc_din3;
wire   [3:0]  adc_pwdn_out_net_0;
wire   [15:0] ads_trans_fsm_0_adc_data1_out;
wire   [15:0] ads_trans_fsm_0_adc_data2_out;
wire   [15:0] ads_trans_fsm_0_adc_data3_out;
wire   [1:0]  choice;
wire          convert_over_out_net_0;
wire   [15:0] dataout_net_0;
wire          dsp_adc_en_in;
wire          dsp_clk_in;
wire          dsp_rstn_in;
wire   [1:0]  pt_MUX1_net_0;
wire   [1:0]  pt_MUX2_net_0;
wire          test_clk5;
wire          test_clk20;
wire          test_fsync;
wire          test_clk20_net_0;
wire          test_fsync_net_0;
wire          test_clk5_net_0;
wire          convert_over_out_net_1;
wire   [3:0]  adc_pwdn_out_net_1;
wire   [15:0] dataout_net_1;
wire   [1:0]  pt_MUX1_net_1;
wire   [1:0]  pt_MUX2_net_1;
wire          adc_data2_test_net_1;
wire          adc_data3_test_net_1;
wire          adc_data1_test_1_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign test_clk20_net_0       = test_clk20;
assign adc_clk_20M_out        = test_clk20_net_0;
assign test_fsync_net_0       = test_fsync;
assign adc_fsync_out          = test_fsync_net_0;
assign test_clk5_net_0        = test_clk5;
assign sam_clk_5M_out         = test_clk5_net_0;
assign convert_over_out_net_1 = convert_over_out_net_0;
assign convert_over_out       = convert_over_out_net_1;
assign adc_pwdn_out_net_1     = adc_pwdn_out_net_0;
assign adc_pwdn_out[3:0]      = adc_pwdn_out_net_1;
assign dataout_net_1          = dataout_net_0;
assign dataout[15:0]          = dataout_net_1;
assign pt_MUX1_net_1          = pt_MUX1_net_0;
assign pt_MUX1[1:0]           = pt_MUX1_net_1;
assign pt_MUX2_net_1          = pt_MUX2_net_0;
assign pt_MUX2[1:0]           = pt_MUX2_net_1;
assign adc_data2_test_net_1   = adc_data2_test_net_0;
assign adc_data2_test         = adc_data2_test_net_1;
assign adc_data3_test_net_1   = adc_data3_test_net_0;
assign adc_data3_test         = adc_data3_test_net_1;
assign adc_data1_test_1_net_0 = adc_data1_test_1;
assign adc_data1_test         = adc_data1_test_1_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------ads_trans_fsm
ads_trans_fsm ads_trans_fsm_0(
        // Inputs
        .dsp_clk_60M_in   ( dsp_clk_in ),
        .dsp_rstn_in      ( dsp_rstn_in ),
        .dsp_adc_en_in    ( dsp_adc_en_in ),
        .adc_data1_in     ( adc_din1 ),
        .adc_data2_in     ( adc_din2 ),
        .adc_data3_in     ( adc_din3 ),
        // Outputs
        .sam_clk_5M_out   ( test_clk5 ),
        .adc_clk_20M_out  ( test_clk20 ),
        .adc_fsync_out    ( test_fsync ),
        .adc_pwdn_out     ( adc_pwdn_out_net_0 ),
        .convert_over_out ( convert_over_out_net_0 ),
        .adc_data1_out    ( ads_trans_fsm_0_adc_data1_out ),
        .adc_data2_out    ( ads_trans_fsm_0_adc_data2_out ),
        .adc_data3_out    ( ads_trans_fsm_0_adc_data3_out ),
        .adc_data1_test   ( adc_data1_test_1 ),
        .adc_data2_test   ( adc_data2_test_net_0 ),
        .adc_data3_test   ( adc_data3_test_net_0 ),
        .pt_MUX1          ( pt_MUX1_net_0 ),
        .pt_MUX2          ( pt_MUX2_net_0 ) 
        );

//--------rdata_choice
rdata_choice rdata_choice_0(
        // Inputs
        .data1   ( ads_trans_fsm_0_adc_data1_out ),
        .data2   ( ads_trans_fsm_0_adc_data2_out ),
        .data3   ( ads_trans_fsm_0_adc_data3_out ),
        .choice  ( choice ),
        // Outputs
        .dataout ( dataout_net_0 ) 
        );


endmodule
