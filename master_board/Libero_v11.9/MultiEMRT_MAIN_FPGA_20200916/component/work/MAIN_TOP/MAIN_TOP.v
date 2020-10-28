//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jul 28 14:06:35 2020
// Version: v11.9 SP5 11.9.5.5
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MAIN_TOP
module MAIN_TOP(
    // Inputs
    CLKA,
    DSP_XRD,
    DSP_XRW,
    DSP_XWE,
    DSP_XZCS2,
    adc_din1,
    adc_din2,
    adc_din3,
    dsp_address,
    dsp_clk,
    gpio1,
    md2udi,
    xzcs0and1,
    // Outputs
    ALL_RST,
    CMD_INT1,
    DSP_XRD_TEST,
    RST_OUT,
    adc_clk_20M_out,
    adc_clk_5M_test,
    adc_data1_test,
    adc_data2_test,
    adc_data3_test,
    adc_en_test,
    adc_fsync_out,
    adc_fsync_test,
    adc_pwdn_out,
    bit35,
    dsp_xint2,
    m2_boo,
    m2_bzo,
    m5_boo,
    m5_bzo,
    m7_boo,
    m7_bzo,
    pt_MUX1,
    pt_MUX2,
    sam_clk_5M_out,
    tst_state,
    // Inouts
    Data
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLKA;
input         DSP_XRD;
input         DSP_XRW;
input         DSP_XWE;
input         DSP_XZCS2;
input         adc_din1;
input         adc_din2;
input         adc_din3;
input  [18:0] dsp_address;
input         dsp_clk;
input         gpio1;
input         md2udi;
input         xzcs0and1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        ALL_RST;
output        CMD_INT1;
output        DSP_XRD_TEST;
output        RST_OUT;
output        adc_clk_20M_out;
output        adc_clk_5M_test;
output        adc_data1_test;
output        adc_data2_test;
output        adc_data3_test;
output        adc_en_test;
output        adc_fsync_out;
output        adc_fsync_test;
output [3:0]  adc_pwdn_out;
output        bit35;
output        dsp_xint2;
output        m2_boo;
output        m2_bzo;
output        m5_boo;
output        m5_bzo;
output        m7_boo;
output        m7_bzo;
output [1:0]  pt_MUX1;
output [1:0]  pt_MUX2;
output        sam_clk_5M_out;
output [1:0]  tst_state;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] Data;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          adc_clk_20M_out_net_0;
wire          adc_data1_test_net_0;
wire          adc_data2_test_net_0;
wire          adc_data3_test_net_0;
wire          adc_din1;
wire          adc_din2;
wire          adc_din3;
wire          adc_en_test_net_0;
wire          adc_fsync_out_net_0;
wire   [3:0]  adc_pwdn_out_net_0;
wire          adc_rstn_test;
wire   [15:0] ADC_TOP_0_dataout;
wire   [1:0]  address_encoder_0_adc_data_choice;
wire          address_encoder_0_clr_m5_loadone_flag;
wire          address_encoder_0_clr_m7_loadone_flag;
wire          address_encoder_0_edib_interface_rst;
wire          address_encoder_0_m2_send;
wire          address_encoder_0_m2_sendone_rd_en;
wire          address_encoder_0_m2_wr_reg_en;
wire          address_encoder_0_m5_loadone_reg_rden;
wire          address_encoder_0_m5_send_en;
wire          address_encoder_0_m5_sendata_reg_wren;
wire          address_encoder_0_m7_loadone_reg_rden;
wire          address_encoder_0_m7_sendata_reg_wren;
wire          address_encoder_0_mux_ctrl;
wire          address_encoder_0_rcvd_datareg_en;
wire          ALL_RST_net_0;
wire          AND2_0_Y;
wire          bit35_net_0;
wire          CLKA;
wire          cmd_decoder_0_load;
wire          cmd_decoder_0_m2rxirqb;
wire   [15:0] cmd_decoder_0_rcvd_datareg;
wire          cmd_decoder_0_rst_out;
wire          CMD_INT1_net_0;
wire   [15:0] Data;
wire   [18:0] dsp_address;
wire          dsp_clk;
wire          DSP_CLK_TEST;
wire          DSP_XRD;
wire          DSP_XRD_TEST_net_0;
wire          DSP_XRW;
wire          DSP_XWE;
wire          DSP_XZCS2;
wire   [15:0] edib_ctrl_reg_0_dsp_data_out;
wire          edib_m2m5m7_clkgen_0_clk_m2_rcv;
wire          edib_m5m7_clkgen_0_clk_m5m7;
wire          edib_mode2_clkgen_0_clk_send;
wire          gpio1;
wire          m2_boo_net_0;
wire          m2_bzo_net_0;
wire          m5_boo_net_0;
wire          m5_bzo_net_0;
wire          m7_boo_net_0;
wire          m7_bzo_net_0;
wire          m7_send_en_TEST;
wire          md2udi;
wire   [15:0] MUX2_0_Result;
wire   [1:0]  pt_MUX1_net_0;
wire   [1:0]  pt_MUX2_net_0;
wire          RST_OUT_net_0;
wire          sam_clk_5M_out_net_0;
wire          test_dsp_int2;
wire          trans_m2_0_clr_reg_flag;
wire          trans_m5m7_0_load_datadone;
wire          trans_m7_0_load_datadone_m7;
wire   [15:0] tri_state_ctrl_0_Dout;
wire   [1:0]  tst_state_net_0;
wire          xzcs0and1;
wire          CMD_INT1_net_1;
wire          RST_OUT_net_1;
wire          ALL_RST_net_1;
wire          bit35_net_1;
wire          m2_bzo_net_1;
wire          m2_boo_net_1;
wire          m5_boo_net_1;
wire          m5_bzo_net_1;
wire          m7_boo_net_1;
wire          m7_bzo_net_1;
wire          adc_clk_20M_out_net_1;
wire          sam_clk_5M_out_net_1;
wire          adc_fsync_out_net_1;
wire          test_dsp_int2_net_0;
wire          sam_clk_5M_out_net_2;
wire          adc_en_test_net_1;
wire          DSP_XRD_TEST_net_1;
wire          adc_fsync_out_net_2;
wire          adc_data2_test_net_1;
wire          adc_data3_test_net_1;
wire          adc_data1_test_net_1;
wire   [1:0]  tst_state_net_1;
wire   [3:0]  adc_pwdn_out_net_1;
wire   [1:0]  pt_MUX1_net_1;
wire   [1:0]  pt_MUX2_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CMD_INT1_net_1        = CMD_INT1_net_0;
assign CMD_INT1              = CMD_INT1_net_1;
assign RST_OUT_net_1         = RST_OUT_net_0;
assign RST_OUT               = RST_OUT_net_1;
assign ALL_RST_net_1         = ALL_RST_net_0;
assign ALL_RST               = ALL_RST_net_1;
assign bit35_net_1           = bit35_net_0;
assign bit35                 = bit35_net_1;
assign m2_bzo_net_1          = m2_bzo_net_0;
assign m2_bzo                = m2_bzo_net_1;
assign m2_boo_net_1          = m2_boo_net_0;
assign m2_boo                = m2_boo_net_1;
assign m5_boo_net_1          = m5_boo_net_0;
assign m5_boo                = m5_boo_net_1;
assign m5_bzo_net_1          = m5_bzo_net_0;
assign m5_bzo                = m5_bzo_net_1;
assign m7_boo_net_1          = m7_boo_net_0;
assign m7_boo                = m7_boo_net_1;
assign m7_bzo_net_1          = m7_bzo_net_0;
assign m7_bzo                = m7_bzo_net_1;
assign adc_clk_20M_out_net_1 = adc_clk_20M_out_net_0;
assign adc_clk_20M_out       = adc_clk_20M_out_net_1;
assign sam_clk_5M_out_net_1  = sam_clk_5M_out_net_0;
assign sam_clk_5M_out        = sam_clk_5M_out_net_1;
assign adc_fsync_out_net_1   = adc_fsync_out_net_0;
assign adc_fsync_out         = adc_fsync_out_net_1;
assign test_dsp_int2_net_0   = test_dsp_int2;
assign dsp_xint2             = test_dsp_int2_net_0;
assign sam_clk_5M_out_net_2  = sam_clk_5M_out_net_0;
assign adc_clk_5M_test       = sam_clk_5M_out_net_2;
assign adc_en_test_net_1     = adc_en_test_net_0;
assign adc_en_test           = adc_en_test_net_1;
assign DSP_XRD_TEST_net_1    = DSP_XRD_TEST_net_0;
assign DSP_XRD_TEST          = DSP_XRD_TEST_net_1;
assign adc_fsync_out_net_2   = adc_fsync_out_net_0;
assign adc_fsync_test        = adc_fsync_out_net_2;
assign adc_data2_test_net_1  = adc_data2_test_net_0;
assign adc_data2_test        = adc_data2_test_net_1;
assign adc_data3_test_net_1  = adc_data3_test_net_0;
assign adc_data3_test        = adc_data3_test_net_1;
assign adc_data1_test_net_1  = adc_data1_test_net_0;
assign adc_data1_test        = adc_data1_test_net_1;
assign tst_state_net_1       = tst_state_net_0;
assign tst_state[1:0]        = tst_state_net_1;
assign adc_pwdn_out_net_1    = adc_pwdn_out_net_0;
assign adc_pwdn_out[3:0]     = adc_pwdn_out_net_1;
assign pt_MUX1_net_1         = pt_MUX1_net_0;
assign pt_MUX1[1:0]          = pt_MUX1_net_1;
assign pt_MUX2_net_1         = pt_MUX2_net_0;
assign pt_MUX2[1:0]          = pt_MUX2_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------ADC_TOP
ADC_TOP ADC_TOP_0(
        // Inputs
        .dsp_clk_in       ( DSP_CLK_TEST ),
        .adc_din3         ( adc_din3 ),
        .adc_din1         ( adc_din1 ),
        .adc_din2         ( adc_din2 ),
        .dsp_rstn_in      ( adc_rstn_test ),
        .dsp_adc_en_in    ( adc_en_test_net_0 ),
        .choice           ( address_encoder_0_adc_data_choice ),
        // Outputs
        .adc_clk_20M_out  ( adc_clk_20M_out_net_0 ),
        .adc_fsync_out    ( adc_fsync_out_net_0 ),
        .sam_clk_5M_out   ( sam_clk_5M_out_net_0 ),
        .convert_over_out ( test_dsp_int2 ),
        .adc_data2_test   ( adc_data2_test_net_0 ),
        .adc_data3_test   ( adc_data3_test_net_0 ),
        .adc_data1_test   ( adc_data1_test_net_0 ),
        .adc_pwdn_out     ( adc_pwdn_out_net_0 ),
        .dataout          ( ADC_TOP_0_dataout ),
        .pt_MUX1          ( pt_MUX1_net_0 ),
        .pt_MUX2          ( pt_MUX2_net_0 ) 
        );

//--------address_encoder
address_encoder address_encoder_0(
        // Inputs
        .reset               ( adc_rstn_test ),
        .dsp_clkout          ( DSP_CLK_TEST ),
        .clk_m2_up           ( edib_mode2_clkgen_0_clk_send ),
        .xzcs0and1           ( xzcs0and1 ),
        .dsp_address         ( dsp_address ),
        // Outputs
        .edib_clk_source_rst (  ),
        .edib_interface_rst  ( address_encoder_0_edib_interface_rst ),
        .m2_send             ( address_encoder_0_m2_send ),
        .m2_wr_reg_en        ( address_encoder_0_m2_wr_reg_en ),
        .m2_sendone_rd_en    ( address_encoder_0_m2_sendone_rd_en ),
        .rcvd_datareg_en     ( address_encoder_0_rcvd_datareg_en ),
        .clr_m5_loadone_flag ( address_encoder_0_clr_m5_loadone_flag ),
        .m5_sendata_reg_wren ( address_encoder_0_m5_sendata_reg_wren ),
        .m5_loadone_reg_rden ( address_encoder_0_m5_loadone_reg_rden ),
        .m5_send_en          ( address_encoder_0_m5_send_en ),
        .clr_m7_loadone_flag ( address_encoder_0_clr_m7_loadone_flag ),
        .m7_sendata_reg_wren ( address_encoder_0_m7_sendata_reg_wren ),
        .m7_loadone_reg_rden ( address_encoder_0_m7_loadone_reg_rden ),
        .m7_send_en          ( m7_send_en_TEST ),
        .adc_open            ( adc_en_test_net_0 ),
        .mux_ctrl            ( address_encoder_0_mux_ctrl ),
        .mux1_en_open        (  ),
        .mux2_en_open        (  ),
        .mux1_en_close       (  ),
        .mux2_en_close       (  ),
        .S2_Open             (  ),
        .S2_close            (  ),
        .adc_data_choice     ( address_encoder_0_adc_data_choice ) 
        );

//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( xzcs0and1 ),
        .B ( DSP_XZCS2 ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------CLKBUF
CLKBUF CLKBUF_0(
        // Inputs
        .PAD ( dsp_clk ),
        // Outputs
        .Y   ( DSP_CLK_TEST ) 
        );

//--------cmd_decoder
cmd_decoder cmd_decoder_0(
        // Inputs
        .md2udi       ( md2udi ),
        .reset_       ( address_encoder_0_edib_interface_rst ),
        .clock_m2rx24 ( edib_m2m5m7_clkgen_0_clk_m2_rcv ),
        .clock_system ( edib_m2m5m7_clkgen_0_clk_m2_rcv ),
        // Outputs
        .m2rxirqb     ( cmd_decoder_0_m2rxirqb ),
        .rst_out      ( cmd_decoder_0_rst_out ),
        .load         ( cmd_decoder_0_load ),
        .bit35        ( bit35_net_0 ),
        .rcvd_datareg ( cmd_decoder_0_rcvd_datareg ),
        .tst_state    ( tst_state_net_0 ) 
        );

//--------edib_ctrl_reg
edib_ctrl_reg edib_ctrl_reg_0(
        // Inputs
        .dsp_clkout          ( DSP_CLK_TEST ),
        .m2_clr_reg_flag     ( trans_m2_0_clr_reg_flag ),
        .reset               ( address_encoder_0_edib_interface_rst ),
        .m2_send             ( address_encoder_0_m2_send ),
        .m2_sendone_reg_en   ( address_encoder_0_m2_sendone_rd_en ),
        .rdh_wrl             ( DSP_XRW ),
        .rcvd_datareg_en     ( address_encoder_0_rcvd_datareg_en ),
        .m2rxiqb             ( cmd_decoder_0_m2rxirqb ),
        .m5_loadone_reg_en   ( address_encoder_0_m5_loadone_reg_rden ),
        .load_data_shift_m5  ( trans_m5m7_0_load_datadone ),
        .clr_m5_loadone_flag ( address_encoder_0_clr_m5_loadone_flag ),
        .m7_loadone_reg_en   ( address_encoder_0_m7_loadone_reg_rden ),
        .load_data_shift_m7  ( trans_m7_0_load_datadone_m7 ),
        .clr_m7_loadone_flag ( address_encoder_0_clr_m7_loadone_flag ),
        .rcvreg_load         ( cmd_decoder_0_load ),
        .rcvd_data           ( cmd_decoder_0_rcvd_datareg ),
        // Outputs
        .m2_sendone_flag     (  ),
        .tst_m5_loadone_flag (  ),
        .tst_m7_loadone_flag (  ),
        .dsp_data_out        ( edib_ctrl_reg_0_dsp_data_out ) 
        );

//--------edib_m2m5m7_clkgen
edib_m2m5m7_clkgen edib_m2m5m7_clkgen_0(
        // Inputs
        .reset      ( VCC_net ),
        .clk_12m    ( CLKA ),
        // Outputs
        .clk_m2_rcv ( edib_m2m5m7_clkgen_0_clk_m2_rcv ) 
        );

//--------edib_m5m7_clkgen
edib_m5m7_clkgen edib_m5m7_clkgen_0(
        // Inputs
        .reset    ( VCC_net ),
        .clk_12m  ( CLKA ),
        // Outputs
        .clk_m5m7 ( edib_m5m7_clkgen_0_clk_m5m7 ) 
        );

//--------edib_mode2_clkgen
edib_mode2_clkgen edib_mode2_clkgen_0(
        // Inputs
        .reset    ( VCC_net ),
        .clk_12m  ( CLKA ),
        // Outputs
        .clk_send ( edib_mode2_clkgen_0_clk_send ) 
        );

//--------INBUF
INBUF INBUF_0(
        // Inputs
        .PAD ( gpio1 ),
        // Outputs
        .Y   ( adc_rstn_test ) 
        );

//--------INBUF
INBUF INBUF_1(
        // Inputs
        .PAD ( DSP_XRD ),
        // Outputs
        .Y   ( DSP_XRD_TEST_net_0 ) 
        );

//--------MUX2
MUX2 MUX2_0(
        // Inputs
        .Sel0       ( address_encoder_0_mux_ctrl ),
        .Data0_port ( edib_ctrl_reg_0_dsp_data_out ),
        .Data1_port ( ADC_TOP_0_dataout ),
        // Outputs
        .Result     ( MUX2_0_Result ) 
        );

//--------OUTBUF
OUTBUF OUTBUF_0(
        // Inputs
        .D   ( cmd_decoder_0_m2rxirqb ),
        // Outputs
        .PAD ( CMD_INT1_net_0 ) 
        );

//--------OUTBUF
OUTBUF OUTBUF_1(
        // Inputs
        .D   ( cmd_decoder_0_rst_out ),
        // Outputs
        .PAD ( RST_OUT_net_0 ) 
        );

//--------OUTBUF
OUTBUF OUTBUF_2(
        // Inputs
        .D   ( adc_rstn_test ),
        // Outputs
        .PAD ( ALL_RST_net_0 ) 
        );

//--------trans_m2
trans_m2 trans_m2_0(
        // Inputs
        .clock_system    ( DSP_CLK_TEST ),
        .clock_m2_up     ( edib_mode2_clkgen_0_clk_send ),
        .reset_low       ( address_encoder_0_edib_interface_rst ),
        .m2_start        ( address_encoder_0_m2_send ),
        .wr_low          ( DSP_XWE ),
        .ma_en           ( address_encoder_0_m2_wr_reg_en ),
        .db              ( tri_state_ctrl_0_Dout ),
        // Outputs
        .m2_bzo          ( m2_bzo_net_0 ),
        .m2_boo          ( m2_boo_net_0 ),
        .tst_loaddata    (  ),
        .tst_shift       (  ),
        .tst_inc_counter (  ),
        .tst_clr_counter (  ),
        .clr_reg_flag    ( trans_m2_0_clr_reg_flag ) 
        );

//--------trans_m5m7
trans_m5m7 trans_m5m7_0(
        // Inputs
        .reset_              ( address_encoder_0_edib_interface_rst ),
        .clock_57            ( edib_m5m7_clkgen_0_clk_m5m7 ),
        .rden5               ( address_encoder_0_m5_send_en ),
        .dsp_clk             ( DSP_CLK_TEST ),
        .m5_sendata_reg_wren ( address_encoder_0_m5_sendata_reg_wren ),
        .dsp_wr              ( DSP_XWE ),
        .dsp_data            ( tri_state_ctrl_0_Dout ),
        // Outputs
        .m5_bzo              ( m5_bzo_net_0 ),
        .m5_boo              ( m5_boo_net_0 ),
        .load_datadone       ( trans_m5m7_0_load_datadone ) 
        );

//--------trans_m7
trans_m7 trans_m7_0(
        // Inputs
        .reset_              ( address_encoder_0_edib_interface_rst ),
        .clock_57            ( edib_m5m7_clkgen_0_clk_m5m7 ),
        .rden7               ( m7_send_en_TEST ),
        .dsp_clk             ( DSP_CLK_TEST ),
        .m7_sendata_reg_wren ( address_encoder_0_m7_sendata_reg_wren ),
        .dsp_wr              ( DSP_XWE ),
        .dsp_data            ( tri_state_ctrl_0_Dout ),
        // Outputs
        .m7_bzo              ( m7_bzo_net_0 ),
        .m7_boo              ( m7_boo_net_0 ),
        .load_datadone_m7    ( trans_m7_0_load_datadone_m7 ) 
        );

//--------tri_state_ctrl
tri_state_ctrl tri_state_ctrl_0(
        // Inputs
        .rdh_wrl ( DSP_XRW ),
        .xcsz    ( AND2_0_Y ),
        .Din     ( MUX2_0_Result ),
        // Outputs
        .Dout    ( tri_state_ctrl_0_Dout ),
        // Inouts
        .Data    ( Data ) 
        );


endmodule
