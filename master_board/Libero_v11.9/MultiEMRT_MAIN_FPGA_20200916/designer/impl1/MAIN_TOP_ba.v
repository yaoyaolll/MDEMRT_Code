`timescale 1 ns/100 ps
// Version: v11.9 SP5 11.9.5.5
// File used only for Simulation


module MAIN_TOP(
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
       Data
    );
input  CLKA;
input  DSP_XRD;
input  DSP_XRW;
input  DSP_XWE;
input  DSP_XZCS2;
input  adc_din1;
input  adc_din2;
input  adc_din3;
input  [18:0] dsp_address;
input  dsp_clk;
input  gpio1;
input  md2udi;
input  xzcs0and1;
output ALL_RST;
output CMD_INT1;
output DSP_XRD_TEST;
output RST_OUT;
output adc_clk_20M_out;
output adc_clk_5M_test;
output adc_data1_test;
output adc_data2_test;
output adc_data3_test;
output adc_en_test;
output adc_fsync_out;
output adc_fsync_test;
output [3:0] adc_pwdn_out;
output bit35;
output dsp_xint2;
output m2_boo;
output m2_bzo;
output m5_boo;
output m5_bzo;
output m7_boo;
output m7_bzo;
output [1:0] pt_MUX1;
output [1:0] pt_MUX2;
output sam_clk_5M_out;
output [1:0] tst_state;
inout  [15:0] Data;

    wire \address_encoder_0_adc_data_choice[0] , 
        \address_encoder_0_adc_data_choice[1] , DSP_CLK_TEST, 
        adc_rstn_test, \ADC_TOP_0_dataout[0] , \ADC_TOP_0_dataout[1] , 
        \ADC_TOP_0_dataout[2] , \ADC_TOP_0_dataout[3] , 
        \ADC_TOP_0_dataout[4] , \ADC_TOP_0_dataout[5] , 
        \ADC_TOP_0_dataout[6] , \ADC_TOP_0_dataout[7] , 
        \ADC_TOP_0_dataout[8] , \ADC_TOP_0_dataout[9] , 
        \ADC_TOP_0_dataout[10] , \ADC_TOP_0_dataout[11] , 
        \ADC_TOP_0_dataout[12] , \ADC_TOP_0_dataout[13] , 
        \ADC_TOP_0_dataout[14] , \ADC_TOP_0_dataout[15] , 
        edib_mode2_clkgen_0_clk_send, 
        address_encoder_0_edib_interface_rst, 
        address_encoder_0_m2_wr_reg_en, 
        address_encoder_0_m2_sendone_rd_en, 
        address_encoder_0_rcvd_datareg_en, 
        address_encoder_0_clr_m5_loadone_flag, 
        address_encoder_0_m5_sendata_reg_wren, 
        address_encoder_0_m5_loadone_reg_rden, 
        address_encoder_0_m5_send_en, 
        address_encoder_0_clr_m7_loadone_flag, 
        address_encoder_0_m7_sendata_reg_wren, 
        address_encoder_0_m7_loadone_reg_rden, m7_send_en_TEST, 
        address_encoder_0_mux_ctrl, edib_m2m5m7_clkgen_0_clk_m2_rcv, 
        \cmd_decoder_0_rcvd_datareg[0] , 
        \cmd_decoder_0_rcvd_datareg[1] , 
        \cmd_decoder_0_rcvd_datareg[2] , 
        \cmd_decoder_0_rcvd_datareg[3] , 
        \cmd_decoder_0_rcvd_datareg[4] , 
        \cmd_decoder_0_rcvd_datareg[5] , 
        \cmd_decoder_0_rcvd_datareg[6] , 
        \cmd_decoder_0_rcvd_datareg[7] , 
        \cmd_decoder_0_rcvd_datareg[8] , 
        \cmd_decoder_0_rcvd_datareg[9] , 
        \cmd_decoder_0_rcvd_datareg[10] , 
        \cmd_decoder_0_rcvd_datareg[11] , 
        \cmd_decoder_0_rcvd_datareg[12] , 
        \cmd_decoder_0_rcvd_datareg[13] , 
        \cmd_decoder_0_rcvd_datareg[14] , 
        \cmd_decoder_0_rcvd_datareg[15] , cmd_decoder_0_m2rxirqb, 
        trans_m2_0_clr_reg_flag, \edib_ctrl_reg_0_dsp_data_out[0] , 
        \edib_ctrl_reg_0_dsp_data_out[1] , 
        \edib_ctrl_reg_0_dsp_data_out[2] , 
        \edib_ctrl_reg_0_dsp_data_out[3] , 
        \edib_ctrl_reg_0_dsp_data_out[4] , 
        \edib_ctrl_reg_0_dsp_data_out[5] , 
        \edib_ctrl_reg_0_dsp_data_out[6] , 
        \edib_ctrl_reg_0_dsp_data_out[7] , 
        \edib_ctrl_reg_0_dsp_data_out[8] , 
        \edib_ctrl_reg_0_dsp_data_out[9] , 
        \edib_ctrl_reg_0_dsp_data_out[10] , 
        \edib_ctrl_reg_0_dsp_data_out[11] , 
        \edib_ctrl_reg_0_dsp_data_out[12] , 
        \edib_ctrl_reg_0_dsp_data_out[13] , 
        \edib_ctrl_reg_0_dsp_data_out[14] , 
        \edib_ctrl_reg_0_dsp_data_out[15] , 
        edib_m5m7_clkgen_0_clk_m5m7, \MUX2_0_Result[0] , 
        \MUX2_0_Result[1] , \MUX2_0_Result[2] , \MUX2_0_Result[3] , 
        \MUX2_0_Result[4] , \MUX2_0_Result[5] , \MUX2_0_Result[6] , 
        \MUX2_0_Result[7] , \MUX2_0_Result[8] , \MUX2_0_Result[9] , 
        \MUX2_0_Result[10] , \MUX2_0_Result[11] , \MUX2_0_Result[12] , 
        \MUX2_0_Result[13] , \MUX2_0_Result[14] , \MUX2_0_Result[15] , 
        \tri_state_ctrl_0.Data_1 , 
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 , 
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 , 
        \cnt_step_RNIJQIE[1] , \Data_in[0] , \Data_in[1] , 
        \Data_in[2] , \Data_in[3] , \Data_in[4] , \Data_in[5] , 
        \Data_in[6] , \Data_in[7] , \Data_in[8] , \Data_in[9] , 
        \Data_in[10] , \Data_in[11] , \Data_in[12] , \Data_in[13] , 
        \Data_in[14] , \Data_in[15] , CLKA_c, DSP_XRW_c, DSP_XWE_c, 
        DSP_XZCS2_c, adc_din1_c, adc_din2_c, adc_din3_c, 
        \dsp_address_c[0] , \dsp_address_c[1] , \dsp_address_c[2] , 
        \dsp_address_c[3] , \dsp_address_c[4] , \dsp_address_c[5] , 
        \dsp_address_c[6] , \dsp_address_c[7] , \dsp_address_c[8] , 
        \dsp_address_c[9] , \dsp_address_c[10] , \dsp_address_c[11] , 
        \dsp_address_c[12] , \dsp_address_c[13] , \dsp_address_c[14] , 
        \dsp_address_c[15] , \dsp_address_c[16] , \dsp_address_c[17] , 
        \dsp_address_c[18] , md2udi_c, xzcs0and1_c, DSP_XRD_TEST_c, 
        adc_data1_test_c, adc_data2_test_c, adc_data3_test_c, 
        adc_en_test_c, adc_fsync_out_c_c, bit35_c, convert_over_out, 
        m2_boo_c, m2_bzo_c, m5_boo_c, m5_bzo_c, m7_boo_c, m7_bzo_c, 
        \pt_MUX1_c_c[0] , \pt_MUX1_c_c[1] , sam_clk_5M_out_net_1, 
        \tst_state_c[0] , \tst_state_c[1] , cmd_decoder_0_load, 
        \tri_state_ctrl_0_Dout[14] , \tri_state_ctrl_0_Dout[15] , 
        \tri_state_ctrl_0_Dout[12] , \tri_state_ctrl_0_Dout[13] , 
        \tri_state_ctrl_0_Dout[10] , \tri_state_ctrl_0_Dout[11] , 
        \tri_state_ctrl_0_Dout[8] , \tri_state_ctrl_0_Dout[9] , 
        \tri_state_ctrl_0_Dout[6] , \tri_state_ctrl_0_Dout[7] , 
        \tri_state_ctrl_0_Dout[4] , \tri_state_ctrl_0_Dout[5] , 
        \tri_state_ctrl_0_Dout[2] , \tri_state_ctrl_0_Dout[3] , 
        \tri_state_ctrl_0_Dout[0] , \tri_state_ctrl_0_Dout[1] , 
        xzcs0and1_c_i, \cmd_decoder_0.state_iii_i[0] , DSP_XRW_c_0, 
        m7_send_en_TEST_0, address_encoder_0_m5_send_en_0, 
        adc_rstn_test_0, adc_rstn_test_1, 
        \address_encoder_0_adc_data_choice_0[1] , 
        \address_encoder_0_adc_data_choice_0[0] , 
        \state_RNISNSU1_0[0] , \edib_m5m7_clkgen_0/clk_m5m7_i , 
        \edib_m5m7_clkgen_0/counter_i[0] , 
        \edib_m5m7_clkgen_0/counter[0]_net_1 , 
        \edib_m5m7_clkgen_0/N_14_i , \edib_m5m7_clkgen_0/N_9 , 
        \edib_m5m7_clkgen_0/counter[3]_net_1 , 
        \edib_m5m7_clkgen_0/counter[4]_net_1 , 
        \edib_m5m7_clkgen_0/N_13_i , \edib_m5m7_clkgen_0/N_12_i , 
        \edib_m5m7_clkgen_0/counter[1]_net_1 , 
        \edib_m5m7_clkgen_0/counter[2]_net_1 , 
        \edib_m5m7_clkgen_0/N_11_i , \edib_m5m7_clkgen_0/counter13 , 
        \edib_m5m7_clkgen_0/clk_m5m7_RNO_net_1 , 
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_i , 
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 , 
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 , 
        \edib_m2m5m7_clkgen_0/counter[3]_net_1 , 
        \edib_m2m5m7_clkgen_0/DWACT_FINC_E[0] , 
        \edib_m2m5m7_clkgen_0/counter13_2 , 
        \edib_m2m5m7_clkgen_0/counter[4]_net_1 , 
        \edib_m2m5m7_clkgen_0/counter13_1 , 
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 , 
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_RNO_net_1 , 
        \edib_m2m5m7_clkgen_0/counter_3[2] , 
        \edib_m2m5m7_clkgen_0/I_7 , 
        \edib_m2m5m7_clkgen_0/counter_3[1] , 
        \edib_m2m5m7_clkgen_0/I_5 , \edib_m2m5m7_clkgen_0/I_4 , 
        \edib_m2m5m7_clkgen_0/I_9 , \edib_m2m5m7_clkgen_0/I_12 , 
        \edib_m2m5m7_clkgen_0/N_3 , \trans_m2_0/state_2[1]_net_1 , 
        \trans_m2_0/N_321 , \trans_m2_0/state_1[1]_net_1 , 
        \trans_m2_0/state_0[1]_net_1 , \trans_m2_0/counter_1_sqmuxa_0 , 
        \trans_m2_0/state[0]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 , \trans_m2_0/N_464 , 
        \trans_m2_0/N_465 , \trans_m2_0/N_466 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 , \trans_m2_0/state_0[0] , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_37 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_31 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_30 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_34 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_36 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_25 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_24 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_33 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_17 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_16 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_29 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_13 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_12 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_27 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_5 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_4 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_23 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_0 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_21 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_19 , 
        \trans_m2_0/counter[2]_net_1 , \trans_m2_0/counter[1]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_15 , 
        \trans_m2_0/counter[9]_net_1 , \trans_m2_0/counter[8]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_11 , 
        \trans_m2_0/counter[32]_net_1 , \trans_m2_0/counter[31]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_9 , 
        \trans_m2_0/counter[36]_net_1 , \trans_m2_0/counter[35]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_7 , 
        \trans_m2_0/counter[25]_net_1 , \trans_m2_0/counter[24]_net_1 , 
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_3 , 
        \trans_m2_0/counter[11]_net_1 , \trans_m2_0/counter[30]_net_1 , 
        \trans_m2_0/counter[0]_net_1 , \trans_m2_0/counter[6]_net_1 , 
        \trans_m2_0/counter[3]_net_1 , \trans_m2_0/counter[7]_net_1 , 
        \trans_m2_0/counter[4]_net_1 , \trans_m2_0/counter[5]_net_1 , 
        \trans_m2_0/counter[12]_net_1 , \trans_m2_0/counter[13]_net_1 , 
        \trans_m2_0/counter[20]_net_1 , \trans_m2_0/counter[21]_net_1 , 
        \trans_m2_0/counter[16]_net_1 , \trans_m2_0/counter[17]_net_1 , 
        \trans_m2_0/counter[33]_net_1 , \trans_m2_0/counter[34]_net_1 , 
        \trans_m2_0/counter[27]_net_1 , \trans_m2_0/counter[38]_net_1 , 
        \trans_m2_0/counter[28]_net_1 , \trans_m2_0/counter[29]_net_1 , 
        \trans_m2_0/counter[14]_net_1 , \trans_m2_0/counter[37]_net_1 , 
        \trans_m2_0/counter[22]_net_1 , \trans_m2_0/counter[10]_net_1 , 
        \trans_m2_0/counter[18]_net_1 , \trans_m2_0/counter[15]_net_1 , 
        \trans_m2_0/counter[26]_net_1 , \trans_m2_0/counter[23]_net_1 , 
        \trans_m2_0/counter[39]_net_1 , \trans_m2_0/counter[19]_net_1 , 
        \trans_m2_0/un3_m2_check_12 , \trans_m2_0/un3_m2_check_1 , 
        \trans_m2_0/un3_m2_check_0 , \trans_m2_0/un3_m2_check_9 , 
        \trans_m2_0/un3_m2_check_11 , \trans_m2_0/un3_m2_check_7 , 
        \trans_m2_0/un3_m2_check_10 , \trans_m2_0/un3_m2_check_5 , 
        \trans_m2_0/un3_m2_check_3 , \trans_m2_0/state_RNO[0]_net_1 , 
        \trans_m2_0/N_704 , \trans_m2_0/state[1]_net_1 , 
        \trans_m2_0/N_473 , \trans_m2_0/N_80 , 
        \trans_m2_0/shift_reg_boo[38]_net_1 , 
        \trans_m2_0/un3_m2_check , \trans_m2_0/shift_reg_boo_2_sqmuxa , 
        \trans_m2_0/m2_data5_net_1 , \trans_m2_0/shift_reg_boo_6[34] , 
        \trans_m2_0/shift_reg_boo[33]_net_1 , 
        \trans_m2_0/shift_reg_boo_6[35] , 
        \trans_m2_0/shift_reg_boo[34]_net_1 , 
        \trans_m2_0/shift_reg_boo_6[36] , 
        \trans_m2_0/shift_reg_boo[35]_net_1 , 
        \trans_m2_0/shift_reg_bzo_6[37] , 
        \trans_m2_0/shift_reg_bzo[36]_net_1 , 
        \trans_m2_0/shift_reg_bzo_6[38] , 
        \trans_m2_0/shift_reg_bzo[37]_net_1 , \trans_m2_0/N_7 , 
        \trans_m2_0/shift_reg_boo[1]_net_1 , \trans_m2_0/N_324 , 
        \trans_m2_0/N_9 , \trans_m2_0/shift_reg_boo[2]_net_1 , 
        \trans_m2_0/N_325 , \trans_m2_0/N_11 , 
        \trans_m2_0/shift_reg_boo[3]_net_1 , \trans_m2_0/N_326 , 
        \trans_m2_0/N_13 , \trans_m2_0/shift_reg_boo[4]_net_1 , 
        \trans_m2_0/N_327 , \trans_m2_0/N_15 , 
        \trans_m2_0/shift_reg_bzo[1]_net_1 , \trans_m2_0/N_17 , 
        \trans_m2_0/shift_reg_bzo[2]_net_1 , \trans_m2_0/N_19 , 
        \trans_m2_0/shift_reg_bzo[3]_net_1 , \trans_m2_0/N_21 , 
        \trans_m2_0/shift_reg_bzo[4]_net_1 , \trans_m2_0/N_23 , 
        \trans_m2_0/shift_reg_boo[5]_net_1 , \trans_m2_0/N_328 , 
        \trans_m2_0/N_25 , \trans_m2_0/shift_reg_boo[6]_net_1 , 
        \trans_m2_0/N_329 , \trans_m2_0/N_27 , 
        \trans_m2_0/shift_reg_boo[7]_net_1 , \trans_m2_0/N_330 , 
        \trans_m2_0/N_29 , \trans_m2_0/shift_reg_boo[8]_net_1 , 
        \trans_m2_0/N_331 , \trans_m2_0/N_31 , 
        \trans_m2_0/shift_reg_bzo[5]_net_1 , \trans_m2_0/N_33 , 
        \trans_m2_0/shift_reg_bzo[6]_net_1 , \trans_m2_0/N_35 , 
        \trans_m2_0/shift_reg_bzo[7]_net_1 , \trans_m2_0/N_40 , 
        \trans_m2_0/shift_reg_boo[9]_net_1 , \trans_m2_0/N_332 , 
        \trans_m2_0/N_44 , \trans_m2_0/shift_reg_boo[11]_net_1 , 
        \trans_m2_0/N_334 , \trans_m2_0/N_46 , 
        \trans_m2_0/shift_reg_boo[12]_net_1 , \trans_m2_0/N_335 , 
        \trans_m2_0/N_48 , \trans_m2_0/shift_reg_bzo[9]_net_1 , 
        \trans_m2_0/N_333 , \trans_m2_0/N_50 , 
        \trans_m2_0/shift_reg_bzo[10]_net_1 , \trans_m2_0/N_52 , 
        \trans_m2_0/shift_reg_bzo[11]_net_1 , \trans_m2_0/N_54 , 
        \trans_m2_0/shift_reg_bzo[12]_net_1 , \trans_m2_0/N_58 , 
        \trans_m2_0/shift_reg_boo[13]_net_1 , \trans_m2_0/N_336 , 
        \trans_m2_0/N_61 , \trans_m2_0/shift_reg_boo[14]_net_1 , 
        \trans_m2_0/N_337 , \trans_m2_0/N_65 , 
        \trans_m2_0/shift_reg_boo[15]_net_1 , \trans_m2_0/N_338 , 
        \trans_m2_0/N_70 , \trans_m2_0/shift_reg_bzo[13]_net_1 , 
        \trans_m2_0/N_74 , \trans_m2_0/shift_reg_bzo[14]_net_1 , 
        \trans_m2_0/N_93 , \trans_m2_0/shift_reg_bzo[15]_net_1 , 
        \trans_m2_0/N_339 , \trans_m2_0/N_95 , 
        \trans_m2_0/shift_reg_bzo[16]_net_1 , \trans_m2_0/N_152 , 
        \trans_m2_0/shift_reg_boo[23]_net_1 , \trans_m2_0/N_346 , 
        \trans_m2_0/N_155 , \trans_m2_0/shift_reg_boo[24]_net_1 , 
        \trans_m2_0/N_347 , \trans_m2_0/N_159 , 
        \trans_m2_0/shift_reg_bzo[22]_net_1 , \trans_m2_0/N_344 , 
        \trans_m2_0/N_161 , \trans_m2_0/shift_reg_bzo[23]_net_1 , 
        \trans_m2_0/N_163 , \trans_m2_0/shift_reg_bzo[24]_net_1 , 
        \trans_m2_0/N_165 , \trans_m2_0/shift_reg_boo[25]_net_1 , 
        \trans_m2_0/N_348 , \trans_m2_0/N_167 , 
        \trans_m2_0/shift_reg_boo[26]_net_1 , \trans_m2_0/N_349 , 
        \trans_m2_0/N_169 , \trans_m2_0/shift_reg_boo[27]_net_1 , 
        \trans_m2_0/N_350 , \trans_m2_0/N_171 , 
        \trans_m2_0/shift_reg_boo[28]_net_1 , \trans_m2_0/N_351 , 
        \trans_m2_0/N_173 , \trans_m2_0/shift_reg_bzo[25]_net_1 , 
        \trans_m2_0/N_175 , \trans_m2_0/shift_reg_bzo[26]_net_1 , 
        \trans_m2_0/N_177 , \trans_m2_0/shift_reg_bzo[27]_net_1 , 
        \trans_m2_0/N_179 , \trans_m2_0/shift_reg_bzo[28]_net_1 , 
        \trans_m2_0/N_181 , \trans_m2_0/shift_reg_boo[29]_net_1 , 
        \trans_m2_0/N_352 , \trans_m2_0/N_183 , 
        \trans_m2_0/shift_reg_boo[30]_net_1 , \trans_m2_0/N_353 , 
        \trans_m2_0/N_185 , \trans_m2_0/shift_reg_boo[31]_net_1 , 
        \trans_m2_0/N_354 , \trans_m2_0/N_187 , 
        \trans_m2_0/shift_reg_boo[32]_net_1 , \trans_m2_0/N_355 , 
        \trans_m2_0/N_189 , \trans_m2_0/shift_reg_bzo[29]_net_1 , 
        \trans_m2_0/N_191 , \trans_m2_0/shift_reg_bzo[30]_net_1 , 
        \trans_m2_0/N_193 , \trans_m2_0/shift_reg_bzo[31]_net_1 , 
        \trans_m2_0/N_59 , \trans_m2_0/shift_reg_bzo[33]_net_1 , 
        \trans_m2_0/N_57 , \trans_m2_0/shift_reg_bzo[34]_net_1 , 
        \trans_m2_0/N_55 , \trans_m2_0/shift_reg_bzo[35]_net_1 , 
        \trans_m2_0/shift_reg_bzo_6[39] , 
        \trans_m2_0/shift_reg_bzo[38]_net_1 , \trans_m2_0/N_238 , 
        \trans_m2_0/shift_reg_bzo[32]_net_1 , \trans_m2_0/N_319 , 
        \trans_m2_0/shift_reg_boo[37]_net_1 , 
        \trans_m2_0/m2_data[0]_net_1 , \trans_m2_0/m2_data[1]_net_1 , 
        \trans_m2_0/m2_data[2]_net_1 , \trans_m2_0/m2_data[3]_net_1 , 
        \trans_m2_0/m2_data[4]_net_1 , \trans_m2_0/m2_data[5]_net_1 , 
        \trans_m2_0/m2_data[6]_net_1 , \trans_m2_0/m2_data[7]_net_1 , 
        \trans_m2_0/N_340 , \trans_m2_0/m2_data[8]_net_1 , 
        \trans_m2_0/N_341 , \trans_m2_0/m2_data[11]_net_1 , 
        \trans_m2_0/m2_data[12]_net_1 , \trans_m2_0/m2_data[13]_net_1 , 
        \trans_m2_0/m2_data[14]_net_1 , \trans_m2_0/m2_data[15]_net_1 , 
        \trans_m2_0/N_388 , \trans_m2_0/m2_check_net_1 , 
        \trans_m2_0/shift_reg_bzo[0]_net_1 , \trans_m2_0/N_387 , 
        \trans_m2_0/shift_reg_boo[0]_net_1 , \trans_m2_0/N_322 , 
        \trans_m2_0/N_62 , \trans_m2_0/N_64 , 
        \trans_m2_0/shift_reg_boo[36]_net_1 , \trans_m2_0/N_66 , 
        \trans_m2_0/N_42 , \trans_m2_0/shift_reg_boo[10]_net_1 , 
        \trans_m2_0/N_38 , \trans_m2_0/shift_reg_bzo[8]_net_1 , 
        \trans_m2_0/shift_reg_bzo_6[0] , 
        \trans_m2_0/shift_reg_boo_6[0] , \trans_m2_0/N_345 , 
        \trans_m2_0/m2_data[10]_net_1 , \trans_m2_0/N_343 , 
        \trans_m2_0/m2_data[9]_net_1 , \trans_m2_0/N_342 , 
        \trans_m2_0/N_157 , \trans_m2_0/shift_reg_bzo[21]_net_1 , 
        \trans_m2_0/N_118 , \trans_m2_0/shift_reg_boo[22]_net_1 , 
        \trans_m2_0/N_116 , \trans_m2_0/shift_reg_boo[21]_net_1 , 
        \trans_m2_0/N_114 , \trans_m2_0/shift_reg_bzo[20]_net_1 , 
        \trans_m2_0/N_112 , \trans_m2_0/shift_reg_bzo[19]_net_1 , 
        \trans_m2_0/N_110 , \trans_m2_0/shift_reg_bzo[18]_net_1 , 
        \trans_m2_0/N_108 , \trans_m2_0/shift_reg_bzo[17]_net_1 , 
        \trans_m2_0/N_106 , \trans_m2_0/shift_reg_boo[20]_net_1 , 
        \trans_m2_0/N_104 , \trans_m2_0/shift_reg_boo[19]_net_1 , 
        \trans_m2_0/N_102 , \trans_m2_0/shift_reg_boo[18]_net_1 , 
        \trans_m2_0/N_100 , \trans_m2_0/shift_reg_boo[17]_net_1 , 
        \trans_m2_0/N_68 , \trans_m2_0/shift_reg_boo[16]_net_1 , 
        \trans_m2_0/counter_1_sqmuxa , \trans_m2_0/N_257 , 
        \trans_m2_0/N_259 , \trans_m2_0/N_265 , \trans_m2_0/N_267 , 
        \trans_m2_0/N_273 , \trans_m2_0/N_275 , \trans_m2_0/N_317 , 
        \trans_m2_0/N_315 , \trans_m2_0/N_313 , \trans_m2_0/N_311 , 
        \trans_m2_0/N_309 , \trans_m2_0/N_307 , \trans_m2_0/N_305 , 
        \trans_m2_0/N_303 , \trans_m2_0/N_301 , \trans_m2_0/N_299 , 
        \trans_m2_0/N_297 , \trans_m2_0/N_295 , \trans_m2_0/N_293 , 
        \trans_m2_0/N_291 , \trans_m2_0/N_289 , \trans_m2_0/N_287 , 
        \trans_m2_0/N_285 , \trans_m2_0/N_283 , \trans_m2_0/N_281 , 
        \trans_m2_0/N_279 , \trans_m2_0/N_277 , \trans_m2_0/N_271 , 
        \trans_m2_0/N_269 , \trans_m2_0/N_263 , \trans_m2_0/N_261 , 
        \trans_m2_0/N_255 , \trans_m2_0/N_253 , \trans_m2_0/N_251 , 
        \trans_m2_0/N_249 , \trans_m2_0/N_247 , \trans_m2_0/N_245 , 
        \trans_m2_0/N_243 , \trans_m2_0/N_241 , \trans_m2_0/N_36 , 
        \cmd_decoder_0/state_iii_0[0]_net_1 , 
        \cmd_decoder_0/state_iii_srst[0] , \cmd_decoder_0/N_259_2 , 
        \cmd_decoder_0/state[9]_net_1 , \cmd_decoder_0/state[3]_net_1 , 
        \cmd_decoder_0/N_259_1 , \cmd_decoder_0/N_259_0 , 
        \cmd_decoder_0/N_232_0 , \cmd_decoder_0/N_251 , 
        \cmd_decoder_0/N_399 , \cmd_decoder_0/N_230_0 , 
        \cmd_decoder_0/N_352_0 , \cmd_decoder_0/N_1057_i_0_o2_18 , 
        \cmd_decoder_0/N_1057_i_0_o2_19 , 
        \cmd_decoder_0/N_1057_i_0_o3_0 , \cmd_decoder_0/N_756_0 , 
        \cmd_decoder_0/N_553 , \cmd_decoder_0/state[5]_net_1 , 
        \cmd_decoder_0/state[4]_net_1 , \cmd_decoder_0/N_656_0 , 
        \cmd_decoder_0/N_546 , 
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_5 , 
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] , 
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_0[0] , 
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_1[0] , 
        \cmd_decoder_0/rcv_shftreg[7]_net_1 , 
        \cmd_decoder_0/state_iii[0]_net_1 , 
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] , 
        \cmd_decoder_0/state_ii_ns_0_0_0_0[0] , \cmd_decoder_0/N_657 , 
        \cmd_decoder_0/N_1255 , 
        \cmd_decoder_0/state_iii_srsts_34_0_a3_1[0] , 
        \cmd_decoder_0/N_267 , \cmd_decoder_0/state_iii_nss[0] , 
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_0 , \cmd_decoder_0/N_506 , 
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_1_0 , 
        \cmd_decoder_0/N_491 , \cmd_decoder_0/state_ns_0_i_i_0[5] , 
        \cmd_decoder_0/state_ns_0_i_i_a3_14[5] , 
        \cmd_decoder_0/N_610_61 , \cmd_decoder_0/N_1281 , 
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_2 , 
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_3 , 
        \cmd_decoder_0/N_277 , 
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_1 , 
        \cmd_decoder_0/rcv_shftreg[17]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[13]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[21]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[11]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[33]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[25]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[27]_net_1 , 
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_2[0] , 
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_0[0] , 
        \cmd_decoder_0/N_517 , \cmd_decoder_0/N_285 , 
        \cmd_decoder_0/state_ns_0_i_i_a3_0_2[5] , 
        \cmd_decoder_0/state_ns_0_i_i_a3_0_0[5] , 
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0 , 
        \cmd_decoder_0/md2udireg_net_1 , \cmd_decoder_0/N_259 , 
        \cmd_decoder_0/load_0_a3_0_a2_0 , 
        \cmd_decoder_0/un1_state_8_0_0_a2_1_2 , 
        \cmd_decoder_0/un1_state_8_0_0_a2_1_3 , 
        \cmd_decoder_0/bit_counter[3]_net_1 , 
        \cmd_decoder_0/state_ns_i_a2_i_2[8] , \cmd_decoder_0/N_395 , 
        \cmd_decoder_0/state[8]_net_1 , 
        \cmd_decoder_0/state_ns_i_a2_i_1[8] , \cmd_decoder_0/N_498 , 
        \cmd_decoder_0/N_499 , \cmd_decoder_0/N_500 , 
        \cmd_decoder_0/N_352 , \cmd_decoder_0/N_94 , 
        \cmd_decoder_0/N_114 , \cmd_decoder_0/state_ns_0_i_i_a3_13[5] , 
        \cmd_decoder_0/state_ns_0_i_i_a3_10[5] , 
        \cmd_decoder_0/state_ns_0_i_i_a3_9[5] , 
        \cmd_decoder_0/state_ns_0_i_i_a3_11[5] , 
        \cmd_decoder_0/N_616_64_3 , \cmd_decoder_0/N_616_64_2 , 
        \cmd_decoder_0/state_ns_0_i_i_a3_8[5] , \cmd_decoder_0/N_534 , 
        \cmd_decoder_0/state_ns_0_i_i_a3_2[5] , \cmd_decoder_0/N_533 , 
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_2 , 
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_3 , 
        \cmd_decoder_0/state_ns_0_i_i_a3_5[5] , \cmd_decoder_0/N_518 , 
        \cmd_decoder_0/state_ns_0_i_i_a3_4[5] , 
        \cmd_decoder_0/rcv_shftreg[19]_net_1 , \cmd_decoder_0/N_275 , 
        \cmd_decoder_0/rcv_shftreg[23]_net_1 , 
        \cmd_decoder_0/sample_counter[23]_net_1 , 
        \cmd_decoder_0/sample_counter[9]_net_1 , 
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0_0 , 
        \cmd_decoder_0/state_ns_0_0_0_a3_1[0] , \cmd_decoder_0/N_288 , 
        \cmd_decoder_0/N_271 , \cmd_decoder_0/state_ns_0_0_0_a3_0[0] , 
        \cmd_decoder_0/headreg[2]_net_1 , 
        \cmd_decoder_0/headreg[3]_net_1 , \cmd_decoder_0/N_354 , 
        \cmd_decoder_0/m33_0_o2_30 , \cmd_decoder_0/m33_0_o2_19 , 
        \cmd_decoder_0/m33_0_o2_18 , \cmd_decoder_0/m33_0_o2_27 , 
        \cmd_decoder_0/m33_0_o2_29 , \cmd_decoder_0/m33_0_o2_17 , 
        \cmd_decoder_0/m33_0_o2_16 , \cmd_decoder_0/m33_0_o2_24 , 
        \cmd_decoder_0/m33_0_o2_28 , \cmd_decoder_0/m33_0_o2_11 , 
        \cmd_decoder_0/m33_0_o2_10 , \cmd_decoder_0/m33_0_o2_23 , 
        \cmd_decoder_0/m33_0_o2_7 , \cmd_decoder_0/m33_0_o2_6 , 
        \cmd_decoder_0/m33_0_o2_21 , 
        \cmd_decoder_0/rst_counter[23]_net_1 , 
        \cmd_decoder_0/rst_counter[26]_net_1 , 
        \cmd_decoder_0/m33_0_o2_15 , 
        \cmd_decoder_0/rst_counter[27]_net_1 , 
        \cmd_decoder_0/rst_counter[30]_net_1 , 
        \cmd_decoder_0/m33_0_o2_13 , 
        \cmd_decoder_0/rst_counter[4]_net_1 , 
        \cmd_decoder_0/rst_counter[3]_net_1 , 
        \cmd_decoder_0/m33_0_o2_9 , 
        \cmd_decoder_0/rst_counter[12]_net_1 , 
        \cmd_decoder_0/rst_counter[11]_net_1 , 
        \cmd_decoder_0/m33_0_o2_5 , 
        \cmd_decoder_0/rst_counter[16]_net_1 , 
        \cmd_decoder_0/rst_counter[15]_net_1 , 
        \cmd_decoder_0/m33_0_o2_3 , 
        \cmd_decoder_0/rst_counter[34]_net_1 , 
        \cmd_decoder_0/rst_counter[20]_net_1 , 
        \cmd_decoder_0/m33_0_o2_1 , 
        \cmd_decoder_0/rst_counter[22]_net_1 , 
        \cmd_decoder_0/rst_counter[19]_net_1 , 
        \cmd_decoder_0/rst_counter[24]_net_1 , 
        \cmd_decoder_0/rst_counter[21]_net_1 , 
        \cmd_decoder_0/rst_counter[28]_net_1 , 
        \cmd_decoder_0/rst_counter[25]_net_1 , 
        \cmd_decoder_0/rst_counter[29]_net_1 , 
        \cmd_decoder_0/rst_counter[31]_net_1 , 
        \cmd_decoder_0/rst_counter[32]_net_1 , 
        \cmd_decoder_0/rst_counter[33]_net_1 , 
        \cmd_decoder_0/rst_counter[1]_net_1 , 
        \cmd_decoder_0/rst_counter[2]_net_1 , 
        \cmd_decoder_0/rst_counter[5]_net_1 , 
        \cmd_decoder_0/rst_counter[6]_net_1 , 
        \cmd_decoder_0/rst_counter[7]_net_1 , 
        \cmd_decoder_0/rst_counter[8]_net_1 , 
        \cmd_decoder_0/rst_counter[9]_net_1 , 
        \cmd_decoder_0/rst_counter[10]_net_1 , 
        \cmd_decoder_0/rst_counter[13]_net_1 , 
        \cmd_decoder_0/rst_counter[14]_net_1 , 
        \cmd_decoder_0/rst_counter[17]_net_1 , 
        \cmd_decoder_0/rst_counter[18]_net_1 , 
        \cmd_decoder_0/un1_state_8_0_0_a2_1_0 , 
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_1_1[0] , 
        \cmd_decoder_0/N_1057_i_0_o2_13 , 
        \cmd_decoder_0/N_1057_i_0_o2_12 , 
        \cmd_decoder_0/N_1057_i_0_o2_16 , 
        \cmd_decoder_0/N_1057_i_0_o2_7 , 
        \cmd_decoder_0/N_1057_i_0_o2_6 , 
        \cmd_decoder_0/N_1057_i_0_o2_15 , 
        \cmd_decoder_0/N_1057_i_0_o2_1 , 
        \cmd_decoder_0/N_1057_i_0_o2_0 , 
        \cmd_decoder_0/N_1057_i_0_o2_10 , 
        \cmd_decoder_0/sample_counter[5]_net_1 , 
        \cmd_decoder_0/sample_counter[6]_net_1 , 
        \cmd_decoder_0/N_1057_i_0_o2_9 , 
        \cmd_decoder_0/sample_counter[4]_net_1 , 
        \cmd_decoder_0/sample_counter[19]_net_1 , 
        \cmd_decoder_0/N_1057_i_0_o2_5 , 
        \cmd_decoder_0/sample_counter[8]_net_1 , 
        \cmd_decoder_0/sample_counter[7]_net_1 , 
        \cmd_decoder_0/N_1057_i_0_o2_3 , 
        \cmd_decoder_0/sample_counter[11]_net_1 , 
        \cmd_decoder_0/sample_counter[12]_net_1 , 
        \cmd_decoder_0/sample_counter[21]_net_1 , 
        \cmd_decoder_0/sample_counter[22]_net_1 , 
        \cmd_decoder_0/sample_counter[17]_net_1 , 
        \cmd_decoder_0/sample_counter[3]_net_1 , 
        \cmd_decoder_0/sample_counter[20]_net_1 , 
        \cmd_decoder_0/sample_counter[10]_net_1 , 
        \cmd_decoder_0/sample_counter[18]_net_1 , 
        \cmd_decoder_0/sample_counter[15]_net_1 , 
        \cmd_decoder_0/sample_counter[0]_net_1 , 
        \cmd_decoder_0/sample_counter[16]_net_1 , 
        \cmd_decoder_0/sample_counter[1]_net_1 , 
        \cmd_decoder_0/sample_counter[2]_net_1 , 
        \cmd_decoder_0/sample_counter[13]_net_1 , 
        \cmd_decoder_0/sample_counter[14]_net_1 , 
        \cmd_decoder_0/state_ns_i_a2_i_i_o2_0[9] , 
        \cmd_decoder_0/headreg[6]_net_1 , 
        \cmd_decoder_0/state_ns_0_0_0_a2_1_0[4] , 
        \cmd_decoder_0/rcv_shftreg[15]_net_1 , 
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_5[0] , 
        \cmd_decoder_0/int_counter[1]_net_1 , 
        \cmd_decoder_0/int_counter[4]_net_1 , 
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_2[0] , 
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_4[0] , 
        \cmd_decoder_0/int_counter[8]_net_1 , 
        \cmd_decoder_0/int_counter[3]_net_1 , 
        \cmd_decoder_0/int_counter[6]_net_1 , 
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_3[0] , 
        \cmd_decoder_0/int_counter[2]_net_1 , 
        \cmd_decoder_0/int_counter[7]_net_1 , 
        \cmd_decoder_0/int_counter[5]_net_1 , 
        \cmd_decoder_0/int_counter[0]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[9]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[3]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[5]_net_1 , 
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_1 , 
        \cmd_decoder_0/bit_counter[14]_net_1 , 
        \cmd_decoder_0/bit_counter[13]_net_1 , 
        \cmd_decoder_0/bit_counter[15]_net_1 , 
        \cmd_decoder_0/bit_counter[16]_net_1 , 
        \cmd_decoder_0/bit_counter[17]_net_1 , 
        \cmd_decoder_0/bit_counter[18]_net_1 , 
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_3[5] , 
        \cmd_decoder_0/bit_counter[22]_net_1 , 
        \cmd_decoder_0/bit_counter[21]_net_1 , 
        \cmd_decoder_0/bit_counter[24]_net_1 , 
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_2[5] , 
        \cmd_decoder_0/bit_counter[27]_net_1 , 
        \cmd_decoder_0/bit_counter[23]_net_1 , 
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_1[5] , 
        \cmd_decoder_0/bit_counter[25]_net_1 , 
        \cmd_decoder_0/bit_counter[26]_net_1 , 
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_3 , 
        \cmd_decoder_0/bit_counter[31]_net_1 , 
        \cmd_decoder_0/bit_counter[30]_net_1 , 
        \cmd_decoder_0/bit_counter[32]_net_1 , 
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_2 , 
        \cmd_decoder_0/bit_counter[28]_net_1 , 
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_1 , 
        \cmd_decoder_0/bit_counter[29]_net_1 , 
        \cmd_decoder_0/bit_counter[33]_net_1 , 
        \cmd_decoder_0/bit_counter[9]_net_1 , 
        \cmd_decoder_0/bit_counter[8]_net_1 , 
        \cmd_decoder_0/state_tr13_1_64_0_a3_2_0_a2_0 , 
        \cmd_decoder_0/bit_counter[4]_net_1 , 
        \cmd_decoder_0/bit_counter[5]_net_1 , 
        \cmd_decoder_0/state_tr13_1_64_0_a3_3_0_a2_0 , 
        \cmd_decoder_0/bit_counter[10]_net_1 , 
        \cmd_decoder_0/bit_counter[11]_net_1 , 
        \cmd_decoder_0/state_ns_0_i_i_a2_0_0[5] , 
        \cmd_decoder_0/bit_counter[1]_net_1 , 
        \cmd_decoder_0/bit_counter[2]_net_1 , 
        \cmd_decoder_0/un1_state_8_0_0_a3_1 , 
        \cmd_decoder_0/state_i_0[6] , \cmd_decoder_0/N_656 , 
        \cmd_decoder_0/N_242 , \cmd_decoder_0/state[7]_net_1 , 
        \cmd_decoder_0/N_552 , \cmd_decoder_0/N_513 , 
        \cmd_decoder_0/N_514 , \cmd_decoder_0/N_385_i , 
        \cmd_decoder_0/N_264 , \cmd_decoder_0/N_1280 , 
        \cmd_decoder_0/N_1275 , \cmd_decoder_0/N_1272 , 
        \cmd_decoder_0/state_ii_ns[0] , \cmd_decoder_0/N_92 , 
        \cmd_decoder_0/N_287 , \cmd_decoder_0/N_516 , 
        \cmd_decoder_0/state_ns[4] , \cmd_decoder_0/N_1283 , 
        \cmd_decoder_0/N_1284 , \cmd_decoder_0/N_1282 , 
        \cmd_decoder_0/N_551 , \cmd_decoder_0/N_262 , 
        \cmd_decoder_0/N_279 , \cmd_decoder_0/N_270 , 
        \cmd_decoder_0/N_1244 , \cmd_decoder_0/N_254_1 , 
        \cmd_decoder_0/N_756 , \cmd_decoder_0/N_541 , 
        \cmd_decoder_0/N_1296 , \cmd_decoder_0/N_323 , 
        \cmd_decoder_0/bit_counter[7]_net_1 , 
        \cmd_decoder_0/bit_counter[6]_net_1 , 
        \cmd_decoder_0/bit_counter[20]_net_1 , 
        \cmd_decoder_0/bit_counter[0]_net_1 , 
        \cmd_decoder_0/state_ns_i_a2_i_0_0[2] , 
        \cmd_decoder_0/state[2]_net_1 , \cmd_decoder_0/N_157 , 
        \cmd_decoder_0/state[1]_net_1 , \cmd_decoder_0/N_72 , 
        \cmd_decoder_0/N_100 , \cmd_decoder_0/N_240 , 
        \cmd_decoder_0/N_240_tz , \cmd_decoder_0/state_RNO[2]_net_1 , 
        \cmd_decoder_0/rst_counter[0]_net_1 , 
        \cmd_decoder_0/rst_counter_RNO[1]_net_1 , 
        \cmd_decoder_0/N_360 , 
        \cmd_decoder_0/rst_counter_RNO[2]_net_1 , 
        \cmd_decoder_0/N_361 , 
        \cmd_decoder_0/rst_counter_RNO[3]_net_1 , 
        \cmd_decoder_0/N_362 , 
        \cmd_decoder_0/rst_counter_RNO[4]_net_1 , 
        \cmd_decoder_0/N_363 , 
        \cmd_decoder_0/rst_counter_RNO[5]_net_1 , 
        \cmd_decoder_0/N_364 , 
        \cmd_decoder_0/rst_counter_RNO[6]_net_1 , 
        \cmd_decoder_0/N_365 , 
        \cmd_decoder_0/rst_counter_RNO[7]_net_1 , 
        \cmd_decoder_0/N_366 , 
        \cmd_decoder_0/rst_counter_RNO[8]_net_1 , 
        \cmd_decoder_0/N_367 , 
        \cmd_decoder_0/rst_counter_RNO[9]_net_1 , 
        \cmd_decoder_0/N_368 , 
        \cmd_decoder_0/rst_counter_RNO[10]_net_1 , 
        \cmd_decoder_0/N_369 , 
        \cmd_decoder_0/rst_counter_RNO[11]_net_1 , 
        \cmd_decoder_0/N_370 , 
        \cmd_decoder_0/rst_counter_RNO[12]_net_1 , 
        \cmd_decoder_0/N_371 , 
        \cmd_decoder_0/rst_counter_RNO[13]_net_1 , 
        \cmd_decoder_0/N_372 , 
        \cmd_decoder_0/rst_counter_RNO[14]_net_1 , 
        \cmd_decoder_0/N_373 , 
        \cmd_decoder_0/rst_counter_RNO[15]_net_1 , 
        \cmd_decoder_0/N_374 , 
        \cmd_decoder_0/rst_counter_RNO[16]_net_1 , 
        \cmd_decoder_0/N_375 , 
        \cmd_decoder_0/rst_counter_RNO[17]_net_1 , 
        \cmd_decoder_0/N_376 , 
        \cmd_decoder_0/rst_counter_RNO[18]_net_1 , 
        \cmd_decoder_0/N_377 , 
        \cmd_decoder_0/rst_counter_RNO[19]_net_1 , 
        \cmd_decoder_0/N_378 , 
        \cmd_decoder_0/rst_counter_RNO[20]_net_1 , 
        \cmd_decoder_0/N_379 , 
        \cmd_decoder_0/rst_counter_RNO[21]_net_1 , 
        \cmd_decoder_0/N_380 , 
        \cmd_decoder_0/rst_counter_RNO[22]_net_1 , 
        \cmd_decoder_0/N_381 , 
        \cmd_decoder_0/rst_counter_RNO[23]_net_1 , 
        \cmd_decoder_0/N_382 , 
        \cmd_decoder_0/rst_counter_RNO[24]_net_1 , 
        \cmd_decoder_0/N_383 , 
        \cmd_decoder_0/rst_counter_RNO[25]_net_1 , 
        \cmd_decoder_0/N_384 , 
        \cmd_decoder_0/rst_counter_RNO[26]_net_1 , 
        \cmd_decoder_0/N_385 , 
        \cmd_decoder_0/rst_counter_RNO[27]_net_1 , 
        \cmd_decoder_0/N_386 , 
        \cmd_decoder_0/rst_counter_RNO[28]_net_1 , 
        \cmd_decoder_0/N_387 , 
        \cmd_decoder_0/rst_counter_RNO[29]_net_1 , 
        \cmd_decoder_0/N_388 , 
        \cmd_decoder_0/rst_counter_RNO[30]_net_1 , 
        \cmd_decoder_0/N_389 , 
        \cmd_decoder_0/rst_counter_RNO[31]_net_1 , 
        \cmd_decoder_0/N_390 , 
        \cmd_decoder_0/rst_counter_RNO[32]_net_1 , 
        \cmd_decoder_0/N_391 , 
        \cmd_decoder_0/rst_counter_RNO[33]_net_1 , 
        \cmd_decoder_0/N_392 , 
        \cmd_decoder_0/rst_counter_RNO[34]_net_1 , 
        \cmd_decoder_0/N_393 , 
        \cmd_decoder_0/rst_counter_RNO[0]_net_1 , 
        \cmd_decoder_0/N_359 , \cmd_decoder_0/N_160 , 
        \cmd_decoder_0/N_280 , \cmd_decoder_0/state[0]_net_1 , 
        \cmd_decoder_0/N_429 , \cmd_decoder_0/rcv_shftreg[4]_net_1 , 
        \cmd_decoder_0/N_433 , \cmd_decoder_0/rcv_shftreg[8]_net_1 , 
        \cmd_decoder_0/N_436 , \cmd_decoder_0/rcv_shftreg[14]_net_1 , 
        \cmd_decoder_0/N_437 , \cmd_decoder_0/rcv_shftreg[12]_net_1 , 
        \cmd_decoder_0/N_439 , \cmd_decoder_0/N_440 , 
        \cmd_decoder_0/rcv_shftreg[18]_net_1 , \cmd_decoder_0/N_441 , 
        \cmd_decoder_0/rcv_shftreg[16]_net_1 , \cmd_decoder_0/N_442 , 
        \cmd_decoder_0/rcv_shftreg[20]_net_1 , \cmd_decoder_0/N_1257 , 
        \cmd_decoder_0/N_1258 , \cmd_decoder_0/rcv_shftreg[22]_net_1 , 
        \cmd_decoder_0/N_1260 , \cmd_decoder_0/rcv_shftreg[24]_net_1 , 
        \cmd_decoder_0/N_417 , \cmd_decoder_0/headreg[0]_net_1 , 
        \cmd_decoder_0/headreg[1]_net_1 , 
        \cmd_decoder_0/headreg[5]_net_1 , 
        \cmd_decoder_0/headreg[4]_net_1 , \cmd_decoder_0/N_245 , 
        \cmd_decoder_0/state_ns[0] , \cmd_decoder_0/N_33 , 
        \cmd_decoder_0/N_35 , \cmd_decoder_0/N_37 , 
        \cmd_decoder_0/N_39 , \cmd_decoder_0/N_41 , 
        \cmd_decoder_0/N_438 , \cmd_decoder_0/N_261_i , 
        \cmd_decoder_0/N_426 , \cmd_decoder_0/rcv_shftreg[1]_net_1 , 
        \cmd_decoder_0/N_427 , \cmd_decoder_0/rcv_shftreg[2]_net_1 , 
        \cmd_decoder_0/N_430 , \cmd_decoder_0/N_1256 , 
        \cmd_decoder_0/N_422 , \cmd_decoder_0/rcv_shftreg[0]_net_1 , 
        \cmd_decoder_0/N_423 , \cmd_decoder_0/N_424 , 
        \cmd_decoder_0/N_1267 , \cmd_decoder_0/rcv_shftreg[28]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[31]_net_1 , \cmd_decoder_0/N_1265 , 
        \cmd_decoder_0/rcv_shftreg[26]_net_1 , 
        \cmd_decoder_0/rcv_shftreg[29]_net_1 , \cmd_decoder_0/N_1263 , 
        \cmd_decoder_0/N_1262 , \cmd_decoder_0/N_1261 , 
        \cmd_decoder_0/N_1259 , \cmd_decoder_0/N_435 , 
        \cmd_decoder_0/rcv_shftreg[10]_net_1 , \cmd_decoder_0/N_432 , 
        \cmd_decoder_0/N_431 , \cmd_decoder_0/rcv_shftreg[6]_net_1 , 
        \cmd_decoder_0/N_428 , \cmd_decoder_0/N_425 , 
        \cmd_decoder_0/int_counter_RNO[0]_net_1 , 
        \cmd_decoder_0/state_RNO[6]_net_1 , \cmd_decoder_0/N_31 , 
        \cmd_decoder_0/clr_sample_counter , \cmd_decoder_0/N_263 , 
        \cmd_decoder_0/N_1268 , \cmd_decoder_0/rcv_shftreg[32]_net_1 , 
        \cmd_decoder_0/N_1266 , \cmd_decoder_0/rcv_shftreg[30]_net_1 , 
        \cmd_decoder_0/N_1264 , \cmd_decoder_0/N_550 , 
        \cmd_decoder_0/N_1278 , \cmd_decoder_0/md2udireg_RNO_net_1 , 
        \cmd_decoder_0/N_443 , \cmd_decoder_0/N_172 , 
        \cmd_decoder_0/N_176 , \cmd_decoder_0/N_178 , 
        \cmd_decoder_0/N_214 , \cmd_decoder_0/N_216 , 
        \cmd_decoder_0/N_1270 , \cmd_decoder_0/N_1269 , 
        \cmd_decoder_0/N_257 , \cmd_decoder_0/N_511 , 
        \cmd_decoder_0/N_507 , \cmd_decoder_0/N_230 , 
        \cmd_decoder_0/N_232 , 
        \cmd_decoder_0/bit_counter_RNILOK6P[3]_net_1 , 
        \cmd_decoder_0/bit_counter[12]_net_1 , 
        \cmd_decoder_0/bit_counter[19]_net_1 , \cmd_decoder_0/N_228 , 
        \cmd_decoder_0/N_226 , \cmd_decoder_0/N_224 , 
        \cmd_decoder_0/N_222 , \cmd_decoder_0/N_220 , 
        \cmd_decoder_0/N_218 , \cmd_decoder_0/N_212 , 
        \cmd_decoder_0/N_210 , \cmd_decoder_0/N_208 , 
        \cmd_decoder_0/N_206 , \cmd_decoder_0/N_204 , 
        \cmd_decoder_0/N_202 , \cmd_decoder_0/N_200 , 
        \cmd_decoder_0/N_198 , \cmd_decoder_0/N_196 , 
        \cmd_decoder_0/N_194 , \cmd_decoder_0/N_192 , 
        \cmd_decoder_0/N_190 , \cmd_decoder_0/N_188 , 
        \cmd_decoder_0/N_186 , \cmd_decoder_0/N_184 , 
        \cmd_decoder_0/N_182 , \cmd_decoder_0/N_180 , 
        \cmd_decoder_0/N_174 , \cmd_decoder_0/N_170 , 
        \cmd_decoder_0/N_168 , \cmd_decoder_0/N_166 , 
        \cmd_decoder_0/N_164 , \trans_m5m7_0/un1_m5_t_mc_reg103_0 , 
        \trans_m5m7_0/m5_t_mc_reg104_19 , 
        \trans_m5m7_0/m5_t_mc_reg104_18 , \trans_m5m7_0/N_525_0 , 
        \trans_m5m7_0/rden55_net_1 , \trans_m5m7_0/N_520 , 
        \trans_m5m7_0/N_521_1 , \trans_m5m7_0/N_528 , 
        \trans_m5m7_0/un1_bit_count_2 , \trans_m5m7_0/N_521_0 , 
        \trans_m5m7_0/shift_0 , 
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 , 
        \trans_m5m7_0/state_ns_0_0_0[1] , 
        \trans_m5m7_0/state[1]_net_1 , \trans_m5m7_0/state[0]_net_1 , 
        \trans_m5m7_0/un1_bit_count_2_18 , 
        \trans_m5m7_0/un1_bit_count_2_11 , 
        \trans_m5m7_0/un1_bit_count_2_10 , 
        \trans_m5m7_0/un1_bit_count_2_16 , 
        \trans_m5m7_0/un1_bit_count_2_17 , 
        \trans_m5m7_0/un1_bit_count_2_9 , 
        \trans_m5m7_0/m5_t_mc_reg104_22 , 
        \trans_m5m7_0/m5_t_mc_reg104_28 , 
        \trans_m5m7_0/un1_bit_count_2_6 , 
        \trans_m5m7_0/un1_bit_count_2_5 , 
        \trans_m5m7_0/un1_bit_count_2_13 , 
        \trans_m5m7_0/un1_bit_count_2_8 , 
        \trans_m5m7_0/bit_count[4]_net_1 , 
        \trans_m5m7_0/bit_count[3]_net_1 , 
        \trans_m5m7_0/un1_bit_count_2_4 , 
        \trans_m5m7_0/bit_count[11]_net_1 , 
        \trans_m5m7_0/bit_count[12]_net_1 , 
        \trans_m5m7_0/un1_bit_count_2_2 , 
        \trans_m5m7_0/bit_count[15]_net_1 , 
        \trans_m5m7_0/bit_count[16]_net_1 , 
        \trans_m5m7_0/bit_count[31]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg104_10 , 
        \trans_m5m7_0/bit_count[0]_net_1 , 
        \trans_m5m7_0/bit_count[1]_net_1 , 
        \trans_m5m7_0/bit_count[2]_net_1 , 
        \trans_m5m7_0/bit_count[5]_net_1 , 
        \trans_m5m7_0/bit_count[6]_net_1 , 
        \trans_m5m7_0/bit_count[7]_net_1 , 
        \trans_m5m7_0/bit_count[8]_net_1 , 
        \trans_m5m7_0/bit_count[9]_net_1 , 
        \trans_m5m7_0/bit_count[10]_net_1 , 
        \trans_m5m7_0/bit_count[14]_net_1 , 
        \trans_m5m7_0/bit_count[13]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg104_14 , 
        \trans_m5m7_0/m5_t_mc_reg104_13 , 
        \trans_m5m7_0/m5_t_mc_reg104_16 , 
        \trans_m5m7_0/m5_t_mc_reg104_10_0 , 
        \trans_m5m7_0/m5_t_mc_reg104_3 , 
        \trans_m5m7_0/m5_t_mc_reg104_2 , 
        \trans_m5m7_0/m5_t_mc_reg104_12 , 
        \trans_m5m7_0/m5_t_mc_reg104_9 , 
        \trans_m5m7_0/m5_t_mc_reg104_7 , 
        \trans_m5m7_0/m5_t_mc_reg104_5 , 
        \trans_m5m7_0/m5_t_mc_reg104_28_4 , 
        \trans_m5m7_0/m5_t_mc_reg104_28_1 , 
        \trans_m5m7_0/bit_count[28]_net_1 , 
        \trans_m5m7_0/bit_count[27]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg104_28_3 , 
        \trans_m5m7_0/bit_count[25]_net_1 , 
        \trans_m5m7_0/bit_count[26]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg104_28_2 , 
        \trans_m5m7_0/bit_count[23]_net_1 , 
        \trans_m5m7_0/bit_count[24]_net_1 , 
        \trans_m5m7_0/bit_count[29]_net_1 , 
        \trans_m5m7_0/bit_count[30]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg104_22_0 , 
        \trans_m5m7_0/bit_count[21]_net_1 , 
        \trans_m5m7_0/bit_count[22]_net_1 , 
        \trans_m5m7_0/bit_count[19]_net_1 , 
        \trans_m5m7_0/bit_count[20]_net_1 , 
        \trans_m5m7_0/state_RNO_0[0]_net_1 , \trans_m5m7_0/N_615 , 
        \trans_m5m7_0/N_614 , \trans_m5m7_0/state_ns_0_0_tz[1] , 
        \trans_m5m7_0/state_ns[1] , \trans_m5m7_0/q55_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[0] , 
        \trans_m5m7_0/m5_t_mc_reg[0]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[3] , \trans_m5m7_0/N_379 , 
        \trans_m5m7_0/N_521 , \trans_m5m7_0/m5_t_no_shiftreg_7[19] , 
        \trans_m5m7_0/N_363 , \trans_m5m7_0/m5_t_no_shiftreg_7[17] , 
        \trans_m5m7_0/N_361 , \trans_m5m7_0/m5_t_no_shiftreg_7[15] , 
        \trans_m5m7_0/N_359 , \trans_m5m7_0/m5_t_no_shiftreg_7[13] , 
        \trans_m5m7_0/N_357 , \trans_m5m7_0/m5_t_no_shiftreg_7[11] , 
        \trans_m5m7_0/N_355 , \trans_m5m7_0/m5_t_no_shiftreg_7[9] , 
        \trans_m5m7_0/N_353 , \trans_m5m7_0/m5_t_mc_shiftreg_7[30] , 
        \trans_m5m7_0/N_406 , 
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[29] , \trans_m5m7_0/N_405 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[28] , \trans_m5m7_0/N_404 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[26] , \trans_m5m7_0/N_402 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[25] , \trans_m5m7_0/N_401 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[24] , \trans_m5m7_0/N_400 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[23] , \trans_m5m7_0/N_399 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[22] , \trans_m5m7_0/N_398 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[30] , \trans_m5m7_0/N_374 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[29] , \trans_m5m7_0/N_373 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[28] , \trans_m5m7_0/N_372 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[26] , \trans_m5m7_0/N_370 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[25] , \trans_m5m7_0/N_369 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[24] , \trans_m5m7_0/N_368 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[23] , \trans_m5m7_0/N_367 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[22] , \trans_m5m7_0/N_366 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[5] , \trans_m5m7_0/N_349 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[4] , \trans_m5m7_0/N_348 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[3] , \trans_m5m7_0/N_347 , 
        \trans_m5m7_0/m5_t_mc_reg[30]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[29]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[29]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[28]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[28]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[27]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[26]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[25]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[25]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[24]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[24]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[23]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[23]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[22]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[22]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[21]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[3]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[2]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[29]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[25]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[24]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[23]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[19]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[18]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[17]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[16]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[15]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[14]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[13]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[12]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[11]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[10]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[9]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[8]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[5]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[4]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[4]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[3]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[2]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[20] , \trans_m5m7_0/N_396 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[16] , \trans_m5m7_0/N_392 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[14] , \trans_m5m7_0/N_390 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[12] , \trans_m5m7_0/N_388 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[10] , \trans_m5m7_0/N_386 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[21] , \trans_m5m7_0/N_365 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[27] , \trans_m5m7_0/N_403 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[21] , \trans_m5m7_0/N_397 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[19] , \trans_m5m7_0/N_395 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[17] , \trans_m5m7_0/N_393 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[15] , \trans_m5m7_0/N_391 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[13] , \trans_m5m7_0/N_389 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[11] , \trans_m5m7_0/N_387 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[9] , \trans_m5m7_0/N_385 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[7] , \trans_m5m7_0/N_383 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[2] , \trans_m5m7_0/N_378 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[0] , \trans_m5m7_0/N_221 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[27] , \trans_m5m7_0/N_371 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[20] , \trans_m5m7_0/N_364 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[18] , \trans_m5m7_0/N_362 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[16] , \trans_m5m7_0/N_360 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[14] , \trans_m5m7_0/N_358 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[10] , \trans_m5m7_0/N_354 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[8] , \trans_m5m7_0/N_352 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[6] , \trans_m5m7_0/N_350 , 
        \trans_m5m7_0/m5_t_mc_reg[27]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[26]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[21]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[20]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[20]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[19]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[18]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[16]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[16]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[15]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[14]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[14]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[13]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[12]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[12]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[11]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[10]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[10]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[9]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[8]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[7]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[6]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[2]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[1]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[26]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[20]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[19]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[18]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[17]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[15]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[13]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[9]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[8]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[7]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[6]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[5]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[9] , \trans_m5m7_0/q5[4]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[8] , 
        \trans_m5m7_0/un1_m5_t_mc_reg103 , 
        \trans_m5m7_0/bit_count_5[1] , \trans_m5m7_0/bit_count_5[31] , 
        \trans_m5m7_0/shift , \trans_m5m7_0/m5_t_mc_reg_19[10] , 
        \trans_m5m7_0/q5[5]_net_1 , \trans_m5m7_0/m5_t_mc_reg_19[11] , 
        \trans_m5m7_0/m5_t_mc_reg_19[14] , \trans_m5m7_0/q5[7]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[15] , 
        \trans_m5m7_0/m5_t_mc_reg_19[16] , \trans_m5m7_0/q5[8]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[17] , 
        \trans_m5m7_0/m5_t_mc_reg_19[18] , \trans_m5m7_0/q5[9]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[19] , 
        \trans_m5m7_0/m5_t_mc_reg_19[20] , \trans_m5m7_0/q5[10]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[21] , 
        \trans_m5m7_0/m5_t_mc_reg_19[22] , \trans_m5m7_0/q5[11]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[23] , 
        \trans_m5m7_0/m5_t_mc_reg_19[24] , \trans_m5m7_0/q5[12]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[25] , \trans_m5m7_0/N_382 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[5]_net_1 , \trans_m5m7_0/N_384 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[7]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[6] , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[8] , 
        \trans_m5m7_0/m5_t_mc_reg_19[27] , \trans_m5m7_0/q5[13]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[26] , 
        \trans_m5m7_0/m5_t_mc_reg_19[1] , \trans_m5m7_0/q5[0]_net_1 , 
        \trans_m5m7_0/bit_count[18]_net_1 , 
        \trans_m5m7_0/bit_count[17]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[13] , \trans_m5m7_0/q5[6]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[12] , 
        \trans_m5m7_0/m5_t_mc_reg_19[28] , \trans_m5m7_0/q5[14]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[29] , \trans_m5m7_0/N_356 , 
        \trans_m5m7_0/m5_t_no_shiftreg[11]_net_1 , 
        \trans_m5m7_0/N_522 , \trans_m5m7_0/N_377 , 
        \trans_m5m7_0/m5_t_mc_reg[1]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[0]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[12] , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[1] , \trans_m5m7_0/N_345 , 
        \trans_m5m7_0/m5_t_no_shiftreg[0]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[21]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[22]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[27]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg[28]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[1] , 
        \trans_m5m7_0/bit_count_5[12] , \trans_m5m7_0/bit_count_5[11] , 
        \trans_m5m7_0/bit_count_5[10] , \trans_m5m7_0/bit_count_5[9] , 
        \trans_m5m7_0/bit_count_5[8] , \trans_m5m7_0/bit_count_5[7] , 
        \trans_m5m7_0/bit_count_5[6] , \trans_m5m7_0/bit_count_5[5] , 
        \trans_m5m7_0/bit_count_5[4] , \trans_m5m7_0/bit_count_5[3] , 
        \trans_m5m7_0/bit_count_5[2] , \trans_m5m7_0/bit_count_5[13] , 
        \trans_m5m7_0/bit_count_5[14] , \trans_m5m7_0/bit_count_5[15] , 
        \trans_m5m7_0/bit_count_5[16] , \trans_m5m7_0/bit_count_5[17] , 
        \trans_m5m7_0/bit_count_5[18] , \trans_m5m7_0/bit_count_5[19] , 
        \trans_m5m7_0/N_525 , \trans_m5m7_0/m5_t_mc_reg_19[0] , 
        \trans_m5m7_0/bit_count_5[30] , \trans_m5m7_0/bit_count_5[29] , 
        \trans_m5m7_0/bit_count_5[28] , \trans_m5m7_0/bit_count_5[27] , 
        \trans_m5m7_0/bit_count_5[26] , \trans_m5m7_0/bit_count_5[25] , 
        \trans_m5m7_0/bit_count_5[24] , \trans_m5m7_0/bit_count_5[23] , 
        \trans_m5m7_0/bit_count_5[22] , \trans_m5m7_0/bit_count_5[21] , 
        \trans_m5m7_0/bit_count_5[20] , 
        \trans_m5m7_0/m5_t_mc_reg_19[2] , \trans_m5m7_0/q5[1]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[3] , 
        \trans_m5m7_0/m5_t_mc_reg_19[4] , \trans_m5m7_0/q5[2]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[5] , 
        \trans_m5m7_0/m5_t_mc_reg_19[6] , \trans_m5m7_0/q5[3]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[7] , 
        \trans_m5m7_0/m5_t_mc_reg_19[30] , \trans_m5m7_0/q5[15]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg_19[31] , \trans_m5m7_0/N_394 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[17]_net_1 , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[18] , \trans_m5m7_0/N_346 , 
        \trans_m5m7_0/m5_t_no_shiftreg[1]_net_1 , \trans_m5m7_0/N_351 , 
        \trans_m5m7_0/m5_t_no_shiftreg[6]_net_1 , \trans_m5m7_0/N_375 , 
        \trans_m5m7_0/m5_t_no_shiftreg[30]_net_1 , 
        \trans_m5m7_0/m5_t_mc_reg[31]_net_1 , \trans_m5m7_0/N_380 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[3]_net_1 , \trans_m5m7_0/N_381 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[4]_net_1 , \trans_m5m7_0/N_407 , 
        \trans_m5m7_0/m5_t_mc_shiftreg[30]_net_1 , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[2] , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[7] , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[4] , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[5] , 
        \trans_m5m7_0/m5_t_no_shiftreg_7[31] , 
        \trans_m5m7_0/m5_t_mc_shiftreg_7[31] , 
        \address_encoder_0/N_81 , \address_encoder_0/N_14 , 
        \address_encoder_0/N_22 , 
        \address_encoder_0/edib_interface_rst , 
        \address_encoder_0/N_396_i , \address_encoder_0/m10_6 , 
        \address_encoder_0/m10_4 , 
        \address_encoder_0/m2start_pulse_counter[5] , 
        \address_encoder_0/m2start_pulse_counter[3] , 
        \address_encoder_0/m2start_pulse_counter[8] , 
        \address_encoder_0/m2start_pulse_counter[6] , 
        \address_encoder_0/m2start_pulse_counter[4] , 
        \address_encoder_0/m10_2 , 
        \address_encoder_0/m2start_pulse_counter[1] , 
        \address_encoder_0/m2start_pulse_counter[0] , 
        \address_encoder_0/m10_1 , 
        \address_encoder_0/m2start_pulse_counter[2] , 
        \address_encoder_0/m2start_pulse_counter[7] , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_2 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_0 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_1 , 
        \address_encoder_0/N_63 , \address_encoder_0/N_59 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_net_1 , 
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_1 , 
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_0_net_1 , 
        \address_encoder_0/N_108 , \address_encoder_0/N_106 , 
        \address_encoder_0/m2_sendone_rd_en_0_sqmuxa_i_a2_0 , 
        \address_encoder_0/rcvd_datareg_en_0_sqmuxa_i_a2_0_net_1 , 
        \address_encoder_0/m5_loadone_reg_rden_0_sqmuxa_i_a2_0 , 
        \address_encoder_0/un1_mux_ctrl12_i_a2_2_net_1 , 
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_1 , 
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_0 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_8_net_1 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_5_net_1 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_7_net_1 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_3_net_1 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_6_net_1 , 
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_1_net_1 , 
        \address_encoder_0/N_62 , \address_encoder_0/N_71 , 
        \address_encoder_0/N_66 , \address_encoder_0/N_19_mux , 
        \address_encoder_0/N_109 , \address_encoder_0/N_76 , 
        \address_encoder_0/N_27 , \address_encoder_0/N_35 , 
        \address_encoder_0/N_72 , \address_encoder_0/N_37 , 
        \address_encoder_0/N_91 , \address_encoder_0/N_101_1 , 
        \address_encoder_0/adc_open_1_sqmuxa_1 , 
        \address_encoder_0/N_78 , \address_encoder_0/N_73 , 
        \address_encoder_0/N_77 , \address_encoder_0/N_47 , 
        \address_encoder_0/N_45 , \address_encoder_0/N_43 , 
        \address_encoder_0/N_39 , \address_encoder_0/N_33 , 
        \address_encoder_0/N_31 , \address_encoder_0/N_29 , 
        \address_encoder_0/N_16 , \address_encoder_0/N_12 , 
        \address_encoder_0/N_41 , \address_encoder_0/N_89 , 
        \address_encoder_0/m2_send_en , 
        \address_encoder_0/state[0]_net_1 , \address_encoder_0/N_24 , 
        \address_encoder_0/N_10 , 
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 , 
        \address_encoder_0/m2start_pulse_counter_6[8] , 
        \address_encoder_0/m2start_pulse_counter_6[7] , 
        \address_encoder_0/m2start_pulse_counter_6[6] , 
        \address_encoder_0/m2start_pulse_counter_6[5] , 
        \address_encoder_0/m2start_pulse_counter_6[4] , 
        \address_encoder_0/m2start_pulse_counter_6[3] , 
        \address_encoder_0/m2start_pulse_counter_6[2] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[0] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[1] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[2] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[3] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[4] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[5] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[6] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[7] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[8] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[9] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[10] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[11] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[12] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[13] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[14] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[15] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[0] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[1] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[2] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[3] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[4] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[5] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[6] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[7] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[8] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[9] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[10] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[11] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[12] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[13] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[14] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[15] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[0] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[1] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[2] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[3] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[4] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[5] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[6] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[7] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[8] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[9] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[10] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[11] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[12] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[13] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[14] , 
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[15] , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[2]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[2]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[2]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[11]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[11]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[11]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[3]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[3]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[3]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[4]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[4]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[4]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[7]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[7]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[7]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[6]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[6]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[6]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[5]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[5]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[5]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[12]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[12]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[12]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[10]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[10]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[10]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[9]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[9]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[9]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[8]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[8]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[8]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[14]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[14]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[14]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[13]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[13]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[13]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[1]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[1]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[1]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[0]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[0]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[0]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[15]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[15]_net_1 , 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[15]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_56_mux , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 , 
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i , 
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i , VCC, 
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX1_c_c_i[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_i , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt_i[0] , 
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_i[0] , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/m50_3 , 
        \ADC_TOP_0/ads_trans_fsm_0/m7_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/m50_2 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/m7_4 , 
        \ADC_TOP_0/ads_trans_fsm_0/m7_2 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/m7_3 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out4_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_63_mux , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out5 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_45 , 
        \ADC_TOP_0/ads_trans_fsm_0/un1_dsp_adc_en_in , 
        \ADC_TOP_0/ads_trans_fsm_0/N_10 , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4] , 
        \ADC_TOP_0/ads_trans_fsm_0/N_9 , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2] , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3] , 
        \ADC_TOP_0/ads_trans_fsm_0/N_345 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_346 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_347 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_348 , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_e0 , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2_i_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[6]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n6 , 
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[4]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n4 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_31 , 
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNO[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_i_0[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/N_11_i , 
        \ADC_TOP_0/ads_trans_fsm_0/N_12_i , 
        \ADC_TOP_0/ads_trans_fsm_0/N_13_i , 
        \ADC_TOP_0/ads_trans_fsm_0/N_14_i , 
        \ADC_TOP_0/ads_trans_fsm_0/N_15_i , 
        \ADC_TOP_0/ads_trans_fsm_0/N_16_i , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[7]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[5]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[3]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[2]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/N_35 , 
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_ns[0] , 
        \ADC_TOP_0/ads_trans_fsm_0/i4_mux , 
        \ADC_TOP_0/ads_trans_fsm_0/N_54 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[0]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[1]_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out_RNO_net_1 , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[2] , 
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6] , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7] , 
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[1]_net_1 , 
        \edib_mode2_clkgen_0/clk_send_i , 
        \edib_mode2_clkgen_0/counter1[1]_net_1 , 
        \edib_mode2_clkgen_0/counter1[0]_net_1 , 
        \edib_mode2_clkgen_0/counter1[3]_net_1 , 
        \edib_mode2_clkgen_0/DWACT_FINC_E[0] , 
        \edib_mode2_clkgen_0/counter113_4 , 
        \edib_mode2_clkgen_0/counter1[2]_net_1 , 
        \edib_mode2_clkgen_0/counter113_2 , 
        \edib_mode2_clkgen_0/counter1[4]_net_1 , 
        \edib_mode2_clkgen_0/counter113_3 , 
        \edib_mode2_clkgen_0/counter1[6]_net_1 , 
        \edib_mode2_clkgen_0/counter1[5]_net_1 , 
        \edib_mode2_clkgen_0/clk_send_RNO_net_1 , 
        \edib_mode2_clkgen_0/counter1_3[6] , 
        \edib_mode2_clkgen_0/I_17 , 
        \edib_mode2_clkgen_0/counter1_3[3] , 
        \edib_mode2_clkgen_0/I_9_0 , \edib_mode2_clkgen_0/I_4_0 , 
        \edib_mode2_clkgen_0/I_5_0 , \edib_mode2_clkgen_0/I_7_0 , 
        \edib_mode2_clkgen_0/I_12_0 , \edib_mode2_clkgen_0/I_14 , 
        \edib_mode2_clkgen_0/N_2 , 
        \edib_mode2_clkgen_0/DWACT_FINC_E[1] , 
        \edib_mode2_clkgen_0/N_3 , \edib_mode2_clkgen_0/N_5 , 
        \edib_ctrl_reg_0/N_58_0 , 
        \edib_ctrl_reg_0/edib_zone_en_i_a3_1_net_1 , 
        \edib_ctrl_reg_0/N_58 , \edib_ctrl_reg_0/rcv_reg5_net_1 , 
        \edib_ctrl_reg_0/N_78 , 
        \edib_ctrl_reg_0/m2_sendone_reg[0]_net_1 , 
        \edib_ctrl_reg_0/N_79 , \edib_ctrl_reg_0/N_7 , 
        \edib_ctrl_reg_0/rcv_reg[15]_net_1 , \edib_ctrl_reg_0/N_56 , 
        \edib_ctrl_reg_0/N_9 , \edib_ctrl_reg_0/rcv_reg[14]_net_1 , 
        \edib_ctrl_reg_0/N_13 , \edib_ctrl_reg_0/rcv_reg[12]_net_1 , 
        \edib_ctrl_reg_0/N_17 , \edib_ctrl_reg_0/rcv_reg[10]_net_1 , 
        \edib_ctrl_reg_0/N_19 , \edib_ctrl_reg_0/rcv_reg[9]_net_1 , 
        \edib_ctrl_reg_0/N_37 , \edib_ctrl_reg_0/rcv_reg[8]_net_1 , 
        \edib_ctrl_reg_0/N_39 , \edib_ctrl_reg_0/rcv_reg[7]_net_1 , 
        \edib_ctrl_reg_0/N_41 , \edib_ctrl_reg_0/rcv_reg[6]_net_1 , 
        \edib_ctrl_reg_0/N_45 , \edib_ctrl_reg_0/rcv_reg[4]_net_1 , 
        \edib_ctrl_reg_0/N_47 , \edib_ctrl_reg_0/rcv_reg[3]_net_1 , 
        \edib_ctrl_reg_0/N_51 , \edib_ctrl_reg_0/rcv_reg[1]_net_1 , 
        \edib_ctrl_reg_0/N_53 , \edib_ctrl_reg_0/rcv_reg[0]_net_1 , 
        \edib_ctrl_reg_0/N_55 , 
        \edib_ctrl_reg_0/m7_loadone_reg[0]_net_1 , 
        \edib_ctrl_reg_0/m5_loadone_reg[0]_net_1 , 
        \edib_ctrl_reg_0/databuffer[0]_net_1 , 
        \edib_ctrl_reg_0/databuffer[1]_net_1 , 
        \edib_ctrl_reg_0/databuffer[2]_net_1 , 
        \edib_ctrl_reg_0/databuffer[3]_net_1 , 
        \edib_ctrl_reg_0/databuffer[4]_net_1 , 
        \edib_ctrl_reg_0/databuffer[5]_net_1 , 
        \edib_ctrl_reg_0/databuffer[6]_net_1 , 
        \edib_ctrl_reg_0/databuffer[7]_net_1 , 
        \edib_ctrl_reg_0/databuffer[8]_net_1 , 
        \edib_ctrl_reg_0/databuffer[9]_net_1 , 
        \edib_ctrl_reg_0/databuffer[10]_net_1 , 
        \edib_ctrl_reg_0/databuffer[11]_net_1 , 
        \edib_ctrl_reg_0/databuffer[12]_net_1 , 
        \edib_ctrl_reg_0/databuffer[13]_net_1 , 
        \edib_ctrl_reg_0/databuffer[14]_net_1 , 
        \edib_ctrl_reg_0/databuffer[15]_net_1 , 
        \edib_ctrl_reg_0/m7_loadone_flag_1_sqmuxa , 
        \edib_ctrl_reg_0/m5_loadone_flag_1_sqmuxa , 
        \edib_ctrl_reg_0/m2_sendone_flag_1_sqmuxa , 
        \edib_ctrl_reg_0/N_49 , \edib_ctrl_reg_0/rcv_reg[2]_net_1 , 
        \edib_ctrl_reg_0/N_43 , \edib_ctrl_reg_0/rcv_reg[5]_net_1 , 
        \edib_ctrl_reg_0/N_15 , \edib_ctrl_reg_0/rcv_reg[11]_net_1 , 
        \edib_ctrl_reg_0/N_11 , \edib_ctrl_reg_0/rcv_reg[13]_net_1 , 
        \edib_ctrl_reg_0/m2_sendone_flag_net_1 , 
        \edib_ctrl_reg_0/m5_loadone_flag_net_1 , 
        \edib_ctrl_reg_0/m7_loadone_flag_net_1 , \trans_m7_0/N_525_0 , 
        \trans_m7_0/rden77_net_1 , \trans_m7_0/N_520 , 
        \trans_m7_0/load_head_shiftreg_0_sqmuxa_0 , 
        \trans_m7_0/state[1]_net_1 , \trans_m7_0/N_521_1 , 
        \trans_m7_0/N_528 , \trans_m7_0/un1_bit_count_2 , 
        \trans_m7_0/N_521_0 , \trans_m7_0/shift_2 , 
        \trans_m7_0/shift_1 , \trans_m7_0/shift_0 , 
        \trans_m7_0/un1_m7_t_mc_reg103_0 , 
        \trans_m7_0/m7_t_mc_reg104_19 , \trans_m7_0/m7_t_mc_reg104_18 , 
        \trans_m7_0/state_ns_0_0_0[1] , \trans_m7_0/state[0]_net_1 , 
        \trans_m7_0/un1_bit_count_2_18 , 
        \trans_m7_0/un1_bit_count_2_11 , 
        \trans_m7_0/un1_bit_count_2_10 , 
        \trans_m7_0/un1_bit_count_2_16 , 
        \trans_m7_0/un1_bit_count_2_17 , 
        \trans_m7_0/un1_bit_count_2_9 , \trans_m7_0/m7_t_mc_reg104_22 , 
        \trans_m7_0/m7_t_mc_reg104_28 , \trans_m7_0/un1_bit_count_2_6 , 
        \trans_m7_0/m7_t_mc_reg104_8 , \trans_m7_0/un1_bit_count_2_13 , 
        \trans_m7_0/un1_bit_count_2_8 , 
        \trans_m7_0/bit_count[3]_net_1 , 
        \trans_m7_0/bit_count[2]_net_1 , \trans_m7_0/m7_t_mc_reg104_7 , 
        \trans_m7_0/bit_count[13]_net_1 , 
        \trans_m7_0/bit_count[14]_net_1 , 
        \trans_m7_0/un1_bit_count_2_2 , 
        \trans_m7_0/bit_count[15]_net_1 , 
        \trans_m7_0/bit_count[16]_net_1 , 
        \trans_m7_0/bit_count[31]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_10 , 
        \trans_m7_0/bit_count[6]_net_1 , 
        \trans_m7_0/bit_count[4]_net_1 , 
        \trans_m7_0/bit_count[5]_net_1 , 
        \trans_m7_0/bit_count[0]_net_1 , 
        \trans_m7_0/bit_count[1]_net_1 , 
        \trans_m7_0/bit_count[11]_net_1 , 
        \trans_m7_0/bit_count[12]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_12 , \trans_m7_0/m7_t_mc_reg104_11 , 
        \trans_m7_0/m7_t_mc_reg104_17 , 
        \trans_m7_0/m7_t_mc_reg104_10_0 , 
        \trans_m7_0/m7_t_mc_reg104_9 , \trans_m7_0/m7_t_mc_reg104_13 , 
        \trans_m7_0/m7_t_mc_reg104_5 , \trans_m7_0/m7_t_mc_reg104_3 , 
        \trans_m7_0/bit_count[9]_net_1 , 
        \trans_m7_0/bit_count[10]_net_1 , 
        \trans_m7_0/bit_count[7]_net_1 , 
        \trans_m7_0/bit_count[8]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_28_4 , 
        \trans_m7_0/m7_t_mc_reg104_28_1 , 
        \trans_m7_0/bit_count[28]_net_1 , 
        \trans_m7_0/bit_count[27]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_28_3 , 
        \trans_m7_0/bit_count[25]_net_1 , 
        \trans_m7_0/bit_count[26]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_28_2 , 
        \trans_m7_0/bit_count[23]_net_1 , 
        \trans_m7_0/bit_count[24]_net_1 , 
        \trans_m7_0/bit_count[29]_net_1 , 
        \trans_m7_0/bit_count[30]_net_1 , 
        \trans_m7_0/m7_t_mc_reg104_22_0 , 
        \trans_m7_0/bit_count[21]_net_1 , 
        \trans_m7_0/bit_count[22]_net_1 , \trans_m7_0/state_RNO_1[0] , 
        \trans_m7_0/N_615 , \trans_m7_0/N_614 , 
        \trans_m7_0/bit_count[19]_net_1 , 
        \trans_m7_0/bit_count[20]_net_1 , 
        \trans_m7_0/state_ns_0_0_tz[1] , \trans_m7_0/state_ns[1] , 
        \trans_m7_0/q75_net_1 , \trans_m7_0/m7_t_mc_shiftreg_7[31] , 
        \trans_m7_0/N_407 , \trans_m7_0/N_521 , 
        \trans_m7_0/m7_t_no_shiftreg_7[31] , \trans_m7_0/N_375 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[5] , \trans_m7_0/N_381 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[3] , \trans_m7_0/N_379 , 
        \trans_m7_0/m7_t_no_shiftreg_7[19] , \trans_m7_0/N_363 , 
        \trans_m7_0/m7_t_no_shiftreg_7[17] , \trans_m7_0/N_361 , 
        \trans_m7_0/m7_t_no_shiftreg_7[15] , \trans_m7_0/N_359 , 
        \trans_m7_0/m7_t_no_shiftreg_7[11] , \trans_m7_0/N_355 , 
        \trans_m7_0/m7_t_no_shiftreg_7[2] , \trans_m7_0/N_346 , 
        \trans_m7_0/m7_t_mc_reg[31]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[30]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[5]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[4]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[3]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[2]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[30]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[19]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[18]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[17]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[16]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[15]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[14]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[11]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[10]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[2]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[1]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[20] , \trans_m7_0/N_396 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[16] , \trans_m7_0/N_392 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[14] , \trans_m7_0/N_390 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[10] , \trans_m7_0/N_386 , 
        \trans_m7_0/m7_t_mc_reg[20]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[19]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[16]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[15]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[14]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[13]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[10]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[9]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[31] , \trans_m7_0/q7[15]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[30] , 
        \trans_m7_0/m7_t_mc_reg_19[29] , \trans_m7_0/q7[14]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[28] , 
        \trans_m7_0/m7_t_mc_reg_19[27] , \trans_m7_0/q7[13]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[26] , 
        \trans_m7_0/m7_t_mc_reg_19[25] , \trans_m7_0/q7[12]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[24] , 
        \trans_m7_0/m7_t_mc_reg_19[23] , \trans_m7_0/q7[11]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[22] , 
        \trans_m7_0/m7_t_mc_reg_19[21] , \trans_m7_0/q7[10]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[20] , 
        \trans_m7_0/m7_t_mc_reg_19[19] , \trans_m7_0/q7[9]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[0] , \trans_m7_0/q7[0]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[1] , \trans_m7_0/m7_t_mc_reg_19[2] , 
        \trans_m7_0/q7[1]_net_1 , \trans_m7_0/m7_t_mc_reg_19[3] , 
        \trans_m7_0/m7_t_mc_reg_19[5] , \trans_m7_0/q7[2]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[8] , \trans_m7_0/q7[4]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[10] , \trans_m7_0/q7[5]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[11] , 
        \trans_m7_0/m7_t_mc_reg_19[14] , \trans_m7_0/q7[7]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[15] , 
        \trans_m7_0/m7_t_mc_reg_19[17] , \trans_m7_0/q7[8]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[16] , \trans_m7_0/bit_count_5[16] , 
        \trans_m7_0/bit_count_5[15] , \trans_m7_0/bit_count_5[13] , 
        \trans_m7_0/bit_count_5[12] , \trans_m7_0/bit_count_5[11] , 
        \trans_m7_0/bit_count_5[10] , \trans_m7_0/bit_count_5[9] , 
        \trans_m7_0/shift , \trans_m7_0/bit_count_5[8] , 
        \trans_m7_0/bit_count_5[7] , \trans_m7_0/bit_count_5[6] , 
        \trans_m7_0/bit_count_5[5] , \trans_m7_0/bit_count_5[4] , 
        \trans_m7_0/bit_count_5[3] , \trans_m7_0/bit_count_5[2] , 
        \trans_m7_0/bit_count_5[1] , \trans_m7_0/N_345 , 
        \trans_m7_0/m7_t_mc_reg[1]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[0]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg_7[1] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[6] , \trans_m7_0/N_382 , 
        \trans_m7_0/m7_t_mc_reg[6]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[5]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[13] , \trans_m7_0/q7[6]_net_1 , 
        \trans_m7_0/m7_t_mc_reg_19[12] , 
        \trans_m7_0/m7_t_mc_reg_19[9] , \trans_m7_0/m7_t_mc_reg_19[7] , 
        \trans_m7_0/q7[3]_net_1 , \trans_m7_0/m7_t_mc_reg_19[6] , 
        \trans_m7_0/m7_t_mc_reg_19[4] , 
        \trans_m7_0/m7_t_mc_reg_19[18] , \trans_m7_0/N_388 , 
        \trans_m7_0/m7_t_mc_reg[12]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[11]_net_1 , \trans_m7_0/N_394 , 
        \trans_m7_0/m7_t_mc_reg[18]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg[17]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[12] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[18] , \trans_m7_0/N_357 , 
        \trans_m7_0/m7_t_mc_reg[13]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[12]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg_7[13] , \trans_m7_0/N_365 , 
        \trans_m7_0/m7_t_mc_reg[21]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[20]_net_1 , \trans_m7_0/N_522 , 
        \trans_m7_0/m7_t_no_shiftreg_7[21] , \trans_m7_0/N_397 , 
        \trans_m7_0/m7_t_mc_shiftreg[20]_net_1 , 
        \trans_m7_0/load_head_shiftreg_0_sqmuxa , \trans_m7_0/N_525 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[4] , \trans_m7_0/N_380 , 
        \trans_m7_0/m7_t_no_shiftreg_7[9] , \trans_m7_0/N_353 , 
        \trans_m7_0/m7_t_no_shiftreg_7[7] , \trans_m7_0/N_351 , 
        \trans_m7_0/m7_t_mc_shiftreg[3]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[4]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[8]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[9]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[6]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[7]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[9] , \trans_m7_0/N_385 , 
        \trans_m7_0/m7_t_no_shiftreg_7[18] , \trans_m7_0/N_362 , 
        \trans_m7_0/m7_t_no_shiftreg_7[12] , \trans_m7_0/N_356 , 
        \trans_m7_0/m7_t_mc_shiftreg[8]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[17]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg[11]_net_1 , 
        \trans_m7_0/bit_count_5[14] , \trans_m7_0/bit_count_5[17] , 
        \trans_m7_0/bit_count_5[18] , \trans_m7_0/bit_count[17]_net_1 , 
        \trans_m7_0/bit_count_5[19] , \trans_m7_0/bit_count[18]_net_1 , 
        \trans_m7_0/m7_t_mc_shiftreg_7[8] , \trans_m7_0/N_384 , 
        \trans_m7_0/m7_t_mc_shiftreg[7]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[8]_net_1 , 
        \trans_m7_0/bit_count_5[31] , \trans_m7_0/bit_count_5[30] , 
        \trans_m7_0/bit_count_5[29] , \trans_m7_0/bit_count_5[28] , 
        \trans_m7_0/bit_count_5[27] , \trans_m7_0/bit_count_5[26] , 
        \trans_m7_0/bit_count_5[25] , \trans_m7_0/bit_count_5[24] , 
        \trans_m7_0/bit_count_5[23] , \trans_m7_0/bit_count_5[22] , 
        \trans_m7_0/bit_count_5[21] , \trans_m7_0/bit_count_5[20] , 
        \trans_m7_0/un1_m7_t_mc_reg103 , \trans_m7_0/N_221 , 
        \trans_m7_0/m7_t_mc_reg[0]_net_1 , \trans_m7_0/N_350 , 
        \trans_m7_0/m7_t_no_shiftreg[5]_net_1 , \trans_m7_0/N_352 , 
        \trans_m7_0/m7_t_no_shiftreg[7]_net_1 , \trans_m7_0/N_354 , 
        \trans_m7_0/m7_t_no_shiftreg[9]_net_1 , \trans_m7_0/N_358 , 
        \trans_m7_0/m7_t_no_shiftreg[13]_net_1 , \trans_m7_0/N_360 , 
        \trans_m7_0/m7_t_no_shiftreg[15]_net_1 , \trans_m7_0/N_364 , 
        \trans_m7_0/m7_t_no_shiftreg[19]_net_1 , \trans_m7_0/N_371 , 
        \trans_m7_0/m7_t_no_shiftreg[26]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[27]_net_1 , \trans_m7_0/N_377 , 
        \trans_m7_0/m7_t_mc_shiftreg[0]_net_1 , \trans_m7_0/N_378 , 
        \trans_m7_0/m7_t_mc_shiftreg[1]_net_1 , \trans_m7_0/N_383 , 
        \trans_m7_0/m7_t_mc_shiftreg[6]_net_1 , \trans_m7_0/N_387 , 
        \trans_m7_0/m7_t_mc_shiftreg[10]_net_1 , \trans_m7_0/N_389 , 
        \trans_m7_0/m7_t_mc_shiftreg[12]_net_1 , \trans_m7_0/N_391 , 
        \trans_m7_0/m7_t_mc_shiftreg[14]_net_1 , \trans_m7_0/N_393 , 
        \trans_m7_0/m7_t_mc_shiftreg[16]_net_1 , \trans_m7_0/N_395 , 
        \trans_m7_0/m7_t_mc_shiftreg[18]_net_1 , \trans_m7_0/N_403 , 
        \trans_m7_0/m7_t_mc_shiftreg[26]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg_7[6] , 
        \trans_m7_0/m7_t_no_shiftreg_7[8] , 
        \trans_m7_0/m7_t_no_shiftreg_7[10] , 
        \trans_m7_0/m7_t_no_shiftreg_7[14] , 
        \trans_m7_0/m7_t_no_shiftreg_7[16] , 
        \trans_m7_0/m7_t_no_shiftreg_7[20] , 
        \trans_m7_0/m7_t_no_shiftreg_7[27] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[0] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[1] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[2] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[7] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[11] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[13] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[15] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[17] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[19] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[21] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[27] , \trans_m7_0/N_347 , 
        \trans_m7_0/m7_t_no_shiftreg[2]_net_1 , \trans_m7_0/N_348 , 
        \trans_m7_0/m7_t_no_shiftreg[3]_net_1 , \trans_m7_0/N_349 , 
        \trans_m7_0/m7_t_no_shiftreg[4]_net_1 , \trans_m7_0/N_366 , 
        \trans_m7_0/m7_t_no_shiftreg[21]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[22]_net_1 , \trans_m7_0/N_367 , 
        \trans_m7_0/m7_t_no_shiftreg[22]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[23]_net_1 , \trans_m7_0/N_368 , 
        \trans_m7_0/m7_t_no_shiftreg[23]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[24]_net_1 , \trans_m7_0/N_369 , 
        \trans_m7_0/m7_t_no_shiftreg[24]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[25]_net_1 , \trans_m7_0/N_370 , 
        \trans_m7_0/m7_t_no_shiftreg[25]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[26]_net_1 , \trans_m7_0/N_372 , 
        \trans_m7_0/m7_t_no_shiftreg[27]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[28]_net_1 , \trans_m7_0/N_373 , 
        \trans_m7_0/m7_t_no_shiftreg[28]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[29]_net_1 , \trans_m7_0/N_374 , 
        \trans_m7_0/m7_t_no_shiftreg[29]_net_1 , 
        \trans_m7_0/m7_t_mc_reg[30]_net_1 , \trans_m7_0/N_398 , 
        \trans_m7_0/m7_t_mc_shiftreg[21]_net_1 , \trans_m7_0/N_399 , 
        \trans_m7_0/m7_t_mc_shiftreg[22]_net_1 , \trans_m7_0/N_400 , 
        \trans_m7_0/m7_t_mc_shiftreg[23]_net_1 , \trans_m7_0/N_401 , 
        \trans_m7_0/m7_t_mc_shiftreg[24]_net_1 , \trans_m7_0/N_402 , 
        \trans_m7_0/m7_t_mc_shiftreg[25]_net_1 , \trans_m7_0/N_404 , 
        \trans_m7_0/m7_t_mc_shiftreg[27]_net_1 , \trans_m7_0/N_405 , 
        \trans_m7_0/m7_t_mc_shiftreg[28]_net_1 , \trans_m7_0/N_406 , 
        \trans_m7_0/m7_t_mc_shiftreg[29]_net_1 , 
        \trans_m7_0/m7_t_no_shiftreg_7[3] , 
        \trans_m7_0/m7_t_no_shiftreg_7[4] , 
        \trans_m7_0/m7_t_no_shiftreg_7[5] , 
        \trans_m7_0/m7_t_no_shiftreg_7[22] , 
        \trans_m7_0/m7_t_no_shiftreg_7[23] , 
        \trans_m7_0/m7_t_no_shiftreg_7[24] , 
        \trans_m7_0/m7_t_no_shiftreg_7[25] , 
        \trans_m7_0/m7_t_no_shiftreg_7[26] , 
        \trans_m7_0/m7_t_no_shiftreg_7[28] , 
        \trans_m7_0/m7_t_no_shiftreg_7[29] , 
        \trans_m7_0/m7_t_no_shiftreg_7[30] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[22] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[23] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[24] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[25] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[26] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[28] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[29] , 
        \trans_m7_0/m7_t_mc_shiftreg_7[30] , 
        \trans_m7_0/m7_t_no_shiftreg_7[0] , \MUX2_0/SelAux_0[11] , 
        \MUX2_0/SelAux_0[6] , \MUX2_0/SelAux_0[0] , 
        \dsp_address_pad[18]/U0/NET1 , \dsp_address_pad[2]/U0/NET1 , 
        \adc_pwdn_out_pad[0]/U0/NET1 , \adc_pwdn_out_pad[0]/U0/NET2 , 
        \adc_pwdn_out_pad[1]/U0/NET1 , \adc_pwdn_out_pad[1]/U0/NET2 , 
        \Data_pad[8]/U0/NET1 , \Data_pad[8]/U0/NET2 , 
        \Data_pad[8]/U0/NET3 , \dsp_address_pad[5]/U0/NET1 , 
        \sam_clk_5M_out_pad/U0/NET1 , \sam_clk_5M_out_pad/U0/NET2 , 
        \m5_boo_pad/U0/NET1 , \m5_boo_pad/U0/NET2 , 
        \tst_state_pad[1]/U0/NET1 , \tst_state_pad[1]/U0/NET2 , 
        \adc_clk_20M_out_pad/U0/NET1 , \adc_clk_20M_out_pad/U0/NET2 , 
        \Data_pad[15]/U0/NET1 , \Data_pad[15]/U0/NET2 , 
        \Data_pad[15]/U0/NET3 , \adc_pwdn_out_pad[3]/U0/NET1 , 
        \adc_pwdn_out_pad[3]/U0/NET2 , \INBUF_0/U0/NET1 , 
        \tst_state_pad[0]/U0/NET1 , \tst_state_pad[0]/U0/NET2 , 
        \m7_bzo_pad/U0/NET1 , \m7_bzo_pad/U0/NET2 , \OUTBUF_2/U0/NET1 , 
        \OUTBUF_2/U0/NET2 , \dsp_address_pad[0]/U0/NET1 , 
        \pt_MUX2_pad[1]/U0/NET1 , \pt_MUX2_pad[1]/U0/NET2 , 
        \Data_pad[2]/U0/NET1 , \Data_pad[2]/U0/NET2 , 
        \Data_pad[2]/U0/NET3 , \dsp_address_pad[7]/U0/NET1 , 
        \INBUF_1/U0/NET1 , \OUTBUF_1/U0/NET1 , \OUTBUF_1/U0/NET2 , 
        \m2_boo_pad/U0/NET1 , \m2_boo_pad/U0/NET2 , 
        \dsp_address_pad[12]/U0/NET1 , \md2udi_pad/U0/NET1 , 
        \Data_pad[13]/U0/NET1 , \Data_pad[13]/U0/NET2 , 
        \Data_pad[13]/U0/NET3 , \Data_pad[4]/U0/NET1 , 
        \Data_pad[4]/U0/NET2 , \Data_pad[4]/U0/NET3 , 
        \adc_din3_pad/U0/NET1 , \adc_data1_test_pad/U0/NET1 , 
        \adc_data1_test_pad/U0/NET2 , \Data_pad[0]/U0/NET1 , 
        \Data_pad[0]/U0/NET2 , \Data_pad[0]/U0/NET3 , 
        \Data_pad[10]/U0/NET1 , \Data_pad[10]/U0/NET2 , 
        \Data_pad[10]/U0/NET3 , \Data_pad[9]/U0/NET1 , 
        \Data_pad[9]/U0/NET2 , \Data_pad[9]/U0/NET3 , 
        \adc_en_test_pad/U0/NET1 , \adc_en_test_pad/U0/NET2 , 
        \pt_MUX1_pad[1]/U0/NET1 , \pt_MUX1_pad[1]/U0/NET2 , 
        \Data_pad[11]/U0/NET1 , \Data_pad[11]/U0/NET2 , 
        \Data_pad[11]/U0/NET3 , \Data_pad[3]/U0/NET1 , 
        \Data_pad[3]/U0/NET2 , \Data_pad[3]/U0/NET3 , 
        \adc_din1_pad/U0/NET1 , \adc_din2_pad/U0/NET1 , 
        \dsp_address_pad[10]/U0/NET1 , \dsp_address_pad[11]/U0/NET1 , 
        \dsp_address_pad[13]/U0/NET1 , \dsp_address_pad[15]/U0/NET1 , 
        \Data_pad[14]/U0/NET1 , \Data_pad[14]/U0/NET2 , 
        \Data_pad[14]/U0/NET3 , \adc_clk_5M_test_pad/U0/NET1 , 
        \adc_clk_5M_test_pad/U0/NET2 , \DSP_XRW_pad/U0/NET1 , 
        \DSP_XWE_pad/U0/NET1 , \bit35_pad/U0/NET1 , 
        \bit35_pad/U0/NET2 , \CLKBUF_0/U0/NET1 , 
        \xzcs0and1_pad/U0/NET1 , \m7_boo_pad/U0/NET1 , 
        \m7_boo_pad/U0/NET2 , \dsp_address_pad[4]/U0/NET1 , 
        \adc_pwdn_out_pad[2]/U0/NET1 , \adc_pwdn_out_pad[2]/U0/NET2 , 
        \dsp_xint2_pad/U0/NET1 , \dsp_xint2_pad/U0/NET2 , 
        \dsp_address_pad[6]/U0/NET1 , \adc_data3_test_pad/U0/NET1 , 
        \adc_data3_test_pad/U0/NET2 , \DSP_XZCS2_pad/U0/NET1 , 
        \dsp_address_pad[9]/U0/NET1 , \dsp_address_pad[3]/U0/NET1 , 
        \pt_MUX1_pad[0]/U0/NET1 , \pt_MUX1_pad[0]/U0/NET2 , 
        \pt_MUX2_pad[0]/U0/NET1 , \pt_MUX2_pad[0]/U0/NET2 , 
        \m5_bzo_pad/U0/NET1 , \m5_bzo_pad/U0/NET2 , 
        \adc_fsync_test_pad/U0/NET1 , \adc_fsync_test_pad/U0/NET2 , 
        \Data_pad[6]/U0/NET1 , \Data_pad[6]/U0/NET2 , 
        \Data_pad[6]/U0/NET3 , \dsp_address_pad[17]/U0/NET1 , 
        \OUTBUF_0/U0/NET1 , \OUTBUF_0/U0/NET2 , 
        \dsp_address_pad[8]/U0/NET1 , \Data_pad[12]/U0/NET1 , 
        \Data_pad[12]/U0/NET2 , \Data_pad[12]/U0/NET3 , 
        \CLKA_pad/U0/NET1 , \Data_pad[1]/U0/NET1 , 
        \Data_pad[1]/U0/NET2 , \Data_pad[1]/U0/NET3 , 
        \adc_data2_test_pad/U0/NET1 , \adc_data2_test_pad/U0/NET2 , 
        \dsp_address_pad[1]/U0/NET1 , \Data_pad[7]/U0/NET1 , 
        \Data_pad[7]/U0/NET2 , \Data_pad[7]/U0/NET3 , 
        \DSP_XRD_TEST_pad/U0/NET1 , \DSP_XRD_TEST_pad/U0/NET2 , 
        \Data_pad[5]/U0/NET1 , \Data_pad[5]/U0/NET2 , 
        \Data_pad[5]/U0/NET3 , \dsp_address_pad[16]/U0/NET1 , 
        \dsp_address_pad[14]/U0/NET1 , \adc_fsync_out_pad/U0/NET1 , 
        \adc_fsync_out_pad/U0/NET2 , \m2_bzo_pad/U0/NET1 , 
        \m2_bzo_pad/U0/NET2 , 
        \address_encoder_0/m2start_pulse_counter[2]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[15]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[10]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4]/Y , 
        \address_encoder_0/mux_ctrl/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4]/Y , 
        \address_encoder_0/m7_loadone_reg_rden/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[23]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[17]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[0]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[11]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[23]/Y , 
        \address_encoder_0/m2start_pulse_counter[4]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[0]/Y , 
        \address_encoder_0/edib_interface_rst/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[22]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[12]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[19]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[20]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[20]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[21]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[21]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1]/Y , 
        \address_encoder_0/m7_send_en_0/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[14]/Y , 
        \address_encoder_0/m2_send_en/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[16]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[8]/Y , 
        \address_encoder_0/m2start_pulse_counter[6]/Y , 
        \address_encoder_0/m2start_pulse_counter[1]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[12]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[13]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[18]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5]/Y , 
        \address_encoder_0/m2_wr_reg_en/Y , 
        \address_encoder_0/m2start_pulse_counter[3]/Y , 
        \address_encoder_0/adc_open/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[17]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[15]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[10]/Y , 
        \address_encoder_0/m2start_pulse_counter[0]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[22]/Y , 
        \address_encoder_0/m5_send_en/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[22]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[11]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/convert_over_out/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[9]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[8]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[8]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[17]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[9]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[0]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[19]/Y , 
        \address_encoder_0/m2_sendone_rd_en/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[14]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[16]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[23]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[19]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[13]/Y , 
        \address_encoder_0/m2start_pulse_counter[8]/Y , 
        \address_encoder_0/clr_m7_loadone_flag/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6]/Y , 
        \address_encoder_0/rcvd_datareg_en/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[12]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[18]/Y , 
        \address_encoder_0/m2start_pulse_counter[5]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[14]/Y , 
        \address_encoder_0/m5_loadone_reg_rden/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[16]/Y , 
        \address_encoder_0/m7_sendata_reg_wren/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[9]/Y , 
        \address_encoder_0/m5_send_en_0/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[13]/Y , 
        \address_encoder_0/clr_m5_loadone_flag/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[20]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[15]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[21]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[10]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[18]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[11]/Y , 
        \address_encoder_0/m7_send_en/Y , 
        \address_encoder_0/m2start_pulse_counter[7]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2]/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4]/Y , 
        \address_encoder_0/m5_sendata_reg_wren/Y , 
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7]/Y , AFLSDF_VCC, 
        AFLSDF_GND, AFLSDF_INV_0_net_1, AFLSDF_INV_1_net_1, 
        AFLSDF_INV_2_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2 \trans_m7_0/bit_count_RNIJJAT[11]  (.A(
        \trans_m7_0/bit_count[11]_net_1 ), .B(
        \trans_m7_0/bit_count[12]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_2 ));
    AO1D \trans_m2_0/m2_data_RNIU7781[2]  (.A(
        \trans_m2_0/m2_data[2]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_328 ));
    DFN1E0C0 \trans_m2_0/counter[11]  (.D(\trans_m2_0/N_261 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[11]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[13]  (.A(
        \trans_m5m7_0/N_357 ), .B(\trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[13] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[35]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[34]_net_1 ), .C(
        \trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_57 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[15]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[15]_net_1 ));
    OR2 \cmd_decoder_0/state_RNI8J2M[2]  (.A(
        \cmd_decoder_0/state[2]_net_1 ), .B(
        \cmd_decoder_0/state[8]_net_1 ), .Y(\cmd_decoder_0/N_288 ));
    NOR2 \address_encoder_0/m2start_pulse_counter_RNI5F6A[2]  (.A(
        \address_encoder_0/m2start_pulse_counter[2] ), .B(
        \address_encoder_0/m2start_pulse_counter[7] ), .Y(
        \address_encoder_0/m10_1 ));
    IOPAD_TRI \OUTBUF_1/U0/U0  (.D(\OUTBUF_1/U0/NET1 ), .E(
        \OUTBUF_1/U0/NET2 ), .PAD(RST_OUT));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[11]  (.D(\cmd_decoder_0/N_432 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[27]  (.A(
        \trans_m7_0/bit_count[26]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[27] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[20]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[20]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[12] ));
    DFN1P1C1 \edib_ctrl_reg_0/m5_loadone_flag  (.D(VCC), .CLK(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .PRE(
        AFLSDF_INV_1_net_1), .CLR(
        \edib_ctrl_reg_0/m5_loadone_flag_1_sqmuxa ), .Q(
        \edib_ctrl_reg_0/m5_loadone_flag_net_1 ));
    NOR2B \cmd_decoder_0/headreg_RNO[6]  (.A(
        \cmd_decoder_0/headreg[5]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_31 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[23]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_382 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[23]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[7]  (.D(
        \trans_m5m7_0/bit_count_5[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[7]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[19]  (.A(
        \cmd_decoder_0/rst_counter[19]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[18]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_378 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[9]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[8]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[9]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_385 ));
    DFN1E1C0 \trans_m2_0/m2_data[0]  (.D(\tri_state_ctrl_0_Dout[0] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[0]_net_1 ));
    OR3A \cmd_decoder_0/rcv_shftreg_RNIAAT5[19]  (.A(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ), .C(
        \cmd_decoder_0/N_275 ), .Y(\cmd_decoder_0/N_277 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[27]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[26]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[27]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_403 ));
    AND3B \cmd_decoder_0/bit_counter_RNIA84K1[4]  (.A(
        \cmd_decoder_0/bit_counter[9]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[8]_net_1 ), .C(
        \cmd_decoder_0/state_tr13_1_64_0_a3_2_0_a2_0 ), .Y(
        \cmd_decoder_0/N_616_64_2 ));
    NOR3A \trans_m5m7_0/bit_count_RNIM5C3[2]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_5 ), .B(
        \trans_m5m7_0/bit_count[5]_net_1 ), .C(
        \trans_m5m7_0/bit_count[2]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_12 ));
    AXOI4 \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out_RNO_2  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_45 ));
    AX1C \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNO[2]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_346 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[11]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[10]_net_1 ), .C(\trans_m2_0/N_333 ), 
        .Y(\trans_m2_0/N_42 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[29]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[29]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[28]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_373 ));
    NOR2 \trans_m5m7_0/bit_count_RNI08IN[29]  (.A(
        \trans_m5m7_0/bit_count[29]_net_1 ), .B(
        \trans_m5m7_0/bit_count[30]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_28_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[4]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[4] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[4]_net_1 )
        );
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[25]  (.D(
        \cmd_decoder_0/N_1260 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[19]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[19]_net_1 ));
    OR3 \cmd_decoder_0/sample_counter_RNIQROE7[23]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_18 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_19 ), .C(
        \cmd_decoder_0/N_1057_i_0_o3_0 ), .Y(\cmd_decoder_0/N_352_0 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[24]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[24]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[23]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_400 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[29]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[29]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[3]  (.A(\trans_m7_0/q7[1]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/m7_t_mc_reg_19[3] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[17]  (.D(
        \trans_m5m7_0/bit_count_5[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[17]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[20]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[20]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[19]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_364 ));
    DFN1 \edib_m5m7_clkgen_0/counter[1]  (.D(
        \edib_m5m7_clkgen_0/N_11_i ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/counter[1]_net_1 ));
    IOPAD_IN \dsp_address_pad[11]/U0/U0  (.PAD(dsp_address[11]), .Y(
        \dsp_address_pad[11]/U0/NET1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[22]  (.A(
        \cmd_decoder_0/rst_counter[22]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[21]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_381 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[5]  (.A(\trans_m7_0/N_349 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[5] ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2_RNI65M4  (
        .A(\ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_net_1 ), 
        .B(\ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2_i_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[29]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[29]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[31]  (.D(\trans_m2_0/N_183 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[31]_net_1 ));
    AX1C \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out_RNO  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out4_0 ), .C(
        sam_clk_5M_out_net_1), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out_RNO_net_1 ));
    NOR3A \trans_m5m7_0/bit_count_RNIETB3[3]  (.A(
        \trans_m5m7_0/un1_bit_count_2_8 ), .B(
        \trans_m5m7_0/bit_count[4]_net_1 ), .C(
        \trans_m5m7_0/bit_count[3]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_13 ));
    IOPAD_TRI \pt_MUX2_pad[0]/U0/U0  (.D(\pt_MUX2_pad[0]/U0/NET1 ), .E(
        \pt_MUX2_pad[0]/U0/NET2 ), .PAD(pt_MUX2[0]));
    NOR2 \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out_RNO_1  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m50_2 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[17]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[17]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[16]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_393 ));
    MX2B \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[31]  (.A(
        \trans_m5m7_0/m5_t_mc_shiftreg[30]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[31]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_407 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[18]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[17]_net_1 ), .C(\trans_m2_0/N_341 ), 
        .Y(\trans_m2_0/N_108 ));
    DFN1E0C0 \trans_m2_0/counter[18]  (.D(\trans_m2_0/N_275 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[18]_net_1 ));
    DFI1P0 \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_2  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i ), .CLK(
        sam_clk_5M_out_net_1), .PRE(adc_rstn_test_0), .QN(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ));
    AND3 \edib_mode2_clkgen_0/un5_counter1_I_8  (.A(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ), .C(
        \edib_mode2_clkgen_0/counter1[2]_net_1 ), .Y(
        \edib_mode2_clkgen_0/N_5 ));
    IOIN_IB \dsp_address_pad[7]/U0/U1  (.YIN(
        \dsp_address_pad[7]/U0/NET1 ), .Y(\dsp_address_c[7] ));
    INV \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2_RNO  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_i ));
    OR2B \cmd_decoder_0/headreg_RNI5NKH[4]  (.A(
        \cmd_decoder_0/headreg[5]_net_1 ), .B(
        \cmd_decoder_0/headreg[4]_net_1 ), .Y(\cmd_decoder_0/N_270 ));
    DFN1P1C1 \edib_ctrl_reg_0/m7_loadone_flag  (.D(VCC), .CLK(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .PRE(
        AFLSDF_INV_2_net_1), .CLR(
        \edib_ctrl_reg_0/m7_loadone_flag_1_sqmuxa ), .Q(
        \edib_ctrl_reg_0/m7_loadone_flag_net_1 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[3]  (.A(
        \trans_m7_0/m7_t_mc_reg[3]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[2]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_379 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[1]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_360 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[1]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[5]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[5]_net_1 ));
    OR3 \trans_m2_0/state_2_RNIL68DB_0[1]  (.A(\trans_m2_0/N_464 ), .B(
        \trans_m2_0/N_465 ), .C(\trans_m2_0/N_466 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI08KL1[4]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[4]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[4] ));
    NOR2A \cmd_decoder_0/state_RNO_1[4]  (.A(
        \cmd_decoder_0/state[4]_net_1 ), .B(
        \cmd_decoder_0/md2udireg_net_1 ), .Y(\cmd_decoder_0/N_1284 ));
    DFN1P0 \address_encoder_0/m2start_pulse_counter[0]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[0]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .PRE(adc_rstn_test_0), .Q(
        \address_encoder_0/m2start_pulse_counter[0] ));
    IOIN_IB \dsp_address_pad[8]/U0/U1  (.YIN(
        \dsp_address_pad[8]/U0/NET1 ), .Y(\dsp_address_c[8] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[10]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[10]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[2] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[13]  (.A(
        \trans_m5m7_0/N_389 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[13] ));
    NOR3A \trans_m2_0/counter_RNI06JN[11]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_3 ), .B(
        \trans_m2_0/counter[11]_net_1 ), .C(
        \trans_m2_0/counter[30]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_21 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[6]  (.D(
        \edib_ctrl_reg_0/N_41 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[6]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[17]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[17]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[9] ));
    XAI1 \cmd_decoder_0/headreg_RNIU1931[0]  (.A(
        \cmd_decoder_0/headreg[1]_net_1 ), .B(
        \cmd_decoder_0/headreg[0]_net_1 ), .C(\cmd_decoder_0/N_261_i ), 
        .Y(\cmd_decoder_0/N_262 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/convert_over_out/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ), .B(
        convert_over_out), .S(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_ns[0] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/convert_over_out/Y ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[2]  (.A(
        \trans_m7_0/m7_t_mc_reg[2]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[1]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_346 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[27]  (.A(
        \trans_m5m7_0/N_371 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[27] ));
    NOR3A \trans_m2_0/counter_RNIEMLN[24]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_7 ), .B(
        \trans_m2_0/counter[25]_net_1 ), .C(
        \trans_m2_0/counter[24]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_23 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[15]  (.A(
        \trans_m5m7_0/N_391 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[15] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[22]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[21]_net_1 ), .C(\trans_m2_0/N_344 ), 
        .Y(\trans_m2_0/N_116 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[35]  (.D(\trans_m2_0/N_57 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[35]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[7]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[7] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[7]_net_1 )
        );
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[19]  (.A(
        \trans_m5m7_0/q5[9]_net_1 ), .B(address_encoder_0_m5_send_en_0)
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[19] ));
    DFN1 \cmd_decoder_0/rst_counter[21]  (.D(
        \cmd_decoder_0/rst_counter_RNO[21]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[21]_net_1 ));
    NOR3B \address_encoder_0/un1_mux_ctrl12_i_a2  (.A(
        \dsp_address_c[3] ), .B(
        \address_encoder_0/un1_mux_ctrl12_i_a2_2_net_1 ), .C(
        \address_encoder_0/N_62 ), .Y(\address_encoder_0/N_81 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[29]  (.D(\trans_m2_0/N_179 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[29]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[7]  (.D(\cmd_decoder_0/N_218 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[7]_net_1 ));
    DFN1E1C0 \trans_m5m7_0/q5[11]  (.D(\tri_state_ctrl_0_Dout[11] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[11]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[22]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[22]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[14] ));
    NOR2B \cmd_decoder_0/headreg_RNO[5]  (.A(
        \cmd_decoder_0/headreg[4]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_33 ));
    DFN1E1C0 \trans_m7_0/q7[1]  (.D(\tri_state_ctrl_0_Dout[1] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[1]_net_1 ));
    INV \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt_i[0] ));
    IOPAD_BI \Data_pad[5]/U0/U0  (.D(\Data_pad[5]/U0/NET1 ), .E(
        \Data_pad[5]/U0/NET2 ), .Y(\Data_pad[5]/U0/NET3 ), .PAD(
        Data[5]));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[28]  (.A(\trans_m7_0/N_404 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[28] ));
    OR3 \cmd_decoder_0/rst_counter_RNIELC[15]  (.A(
        \cmd_decoder_0/rst_counter[16]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[15]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_3 ), .Y(\cmd_decoder_0/m33_0_o2_18 ));
    DFN1 \edib_m2m5m7_clkgen_0/counter[3]  (.D(
        \edib_m2m5m7_clkgen_0/I_9 ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/counter[3]_net_1 ));
    OR2 \cmd_decoder_0/state_RNIAL2M_0[9]  (.A(
        \cmd_decoder_0/state[9]_net_1 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .Y(\cmd_decoder_0/N_259_2 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[1]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[25]  (.A(\trans_m7_0/N_369 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[25] ));
    DFN1E1C0 \trans_m5m7_0/q5[13]  (.D(\tri_state_ctrl_0_Dout[13] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[13]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[5]  (.A(\trans_m7_0/N_381 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[5] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[20]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[12] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[11] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[20]/Y ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[21]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[21]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[20]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_397 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[18]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[17]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[18]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_362 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[20]  (.D(
        \cmd_decoder_0/sample_counter[19]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[20]_net_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[5]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[5]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[5] ));
    OR3 \cmd_decoder_0/rst_counter_RNI7261[27]  (.A(
        \cmd_decoder_0/m33_0_o2_11 ), .B(\cmd_decoder_0/m33_0_o2_10 ), 
        .C(\cmd_decoder_0/m33_0_o2_23 ), .Y(
        \cmd_decoder_0/m33_0_o2_28 ));
    OA1 \trans_m2_0/counter_RNO[6]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[5]_net_1 ), .Y(\trans_m2_0/N_251 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[10]  (.D(
        \edib_ctrl_reg_0/N_17 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[10]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[9]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[9] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[9]_net_1 )
        );
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[0]  (.A(
        \cmd_decoder_0/headreg[0]_net_1 ), .B(md2udi_c), .S(
        \cmd_decoder_0/N_259_1 ), .Y(\cmd_decoder_0/N_1270 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[18]  (.A(
        \trans_m5m7_0/N_394 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[18] ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI19KL1[5]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[5]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[5] ));
    DFN1E1C0 \trans_m7_0/q7[11]  (.D(\tri_state_ctrl_0_Dout[11] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[11]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[7]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[6]_net_1 ), .C(\trans_m2_0/N_329 ), 
        .Y(\trans_m2_0/N_25 ));
    IOIN_IB \dsp_address_pad[16]/U0/U1  (.YIN(
        \dsp_address_pad[16]/U0/NET1 ), .Y(\dsp_address_c[16] ));
    AO1 \trans_m7_0/state_RNO[1]  (.A(\trans_m7_0/state_ns_0_0_0[1] ), 
        .B(\trans_m7_0/state_ns_0_0_tz[1] ), .C(\trans_m7_0/N_614 ), 
        .Y(\trans_m7_0/state_ns[1] ));
    DFN1C0 \address_encoder_0/m5_loadone_reg_rden/U1  (.D(
        \address_encoder_0/m5_loadone_reg_rden/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_0), .Q(
        address_encoder_0_m5_loadone_reg_rden));
    NOR2A \address_encoder_0/m2_sendone_rd_en_RNO_0  (.A(
        \address_encoder_0/N_106 ), .B(\dsp_address_c[0] ), .Y(
        \address_encoder_0/m2_sendone_rd_en_0_sqmuxa_i_a2_0 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[21]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[21]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[13] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[9]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[0] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[9]/Y ));
    NOR2 \trans_m2_0/counter_RNIRDPB[10]  (.A(
        \trans_m2_0/counter[22]_net_1 ), .B(
        \trans_m2_0/counter[10]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_4 ));
    NOR3A \cmd_decoder_0/state_RNO_4[5]  (.A(
        \cmd_decoder_0/state_ns_0_i_i_a3_0_0[5] ), .B(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .C(
        \cmd_decoder_0/N_285 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_0_2[5] ));
    NOR2B \trans_m5m7_0/bit_count_RNICN2B8[11]  (.A(
        \trans_m5m7_0/un1_bit_count_2_18 ), .B(
        \trans_m5m7_0/un1_bit_count_2_17 ), .Y(
        \trans_m5m7_0/un1_bit_count_2 ));
    OA1 \cmd_decoder_0/bit_counter_RNO_1[4]  (.A(\cmd_decoder_0/N_352 )
        , .B(\cmd_decoder_0/N_507 ), .C(\cmd_decoder_0/N_399 ), .Y(
        \cmd_decoder_0/N_511 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[11]  (.A(
        \trans_m5m7_0/q5[5]_net_1 ), .B(address_encoder_0_m5_send_en_0)
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[11] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[22]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[22]_net_1 ));
    AO1A \cmd_decoder_0/state_RNIHTF1D[9]  (.A(\cmd_decoder_0/N_352_0 )
        , .B(\cmd_decoder_0/N_259_0 ), .C(\cmd_decoder_0/N_399 ), .Y(
        \cmd_decoder_0/N_230_0 ));
    DFN1E1C0 \cmd_decoder_0/int_counter[2]  (.D(
        \cmd_decoder_0/int_counter[1]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[2]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[14]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[14] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[14]_net_1 )
        );
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[20]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[20]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[12] ));
    DFN1E0C0 \trans_m2_0/counter[6]  (.D(\trans_m2_0/N_251 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[6]_net_1 ));
    DFN1C0 \address_encoder_0/clr_m5_loadone_flag/U1  (.D(
        \address_encoder_0/clr_m5_loadone_flag/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_1), .Q(
        address_encoder_0_clr_m5_loadone_flag));
    NOR3C \trans_m7_0/bit_count_RNI91B07[31]  (.A(
        \trans_m7_0/un1_bit_count_2_9 ), .B(
        \trans_m7_0/m7_t_mc_reg104_22 ), .C(
        \trans_m7_0/m7_t_mc_reg104_28 ), .Y(
        \trans_m7_0/un1_bit_count_2_17 ));
    DFN1E0C0 \trans_m2_0/counter[16]  (.D(\trans_m2_0/N_271 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[16]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[9]  (.A(\trans_m7_0/q7[4]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/m7_t_mc_reg_19[9] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[27]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[27]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[30]  (.D(
        \cmd_decoder_0/rst_counter_RNO[30]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[30]_net_1 ));
    AX1D \cmd_decoder_0/headreg_RNIU1931[2]  (.A(
        \cmd_decoder_0/headreg[2]_net_1 ), .B(
        \cmd_decoder_0/headreg[3]_net_1 ), .C(\cmd_decoder_0/N_354 ), 
        .Y(\cmd_decoder_0/N_385_i ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out_RNO_net_1 ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test), .Q(sam_clk_5M_out_net_1));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[18]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[18]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[10] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[8]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[8]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[12]  (.A(
        \cmd_decoder_0/rcv_shftreg[8]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_433 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6] ));
    AX1C \edib_m2m5m7_clkgen_0/un5_counter_I_12  (.A(
        \edib_m2m5m7_clkgen_0/counter[3]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/DWACT_FINC_E[0] ), .C(
        \edib_m2m5m7_clkgen_0/counter[4]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/I_12 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[1]  (.A(\trans_m7_0/N_377 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[1] ));
    DFN1 \cmd_decoder_0/rst_counter[26]  (.D(
        \cmd_decoder_0/rst_counter_RNO[26]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[26]_net_1 ));
    OR3 \trans_m2_0/state_2_RNIL68DB_1[1]  (.A(\trans_m2_0/N_464 ), .B(
        \trans_m2_0/N_465 ), .C(\trans_m2_0/N_466 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ));
    NOR3A \trans_m7_0/bit_count_RNIKLLQ1[12]  (.A(
        \trans_m7_0/m7_t_mc_reg104_10 ), .B(
        \trans_m7_0/bit_count[12]_net_1 ), .C(
        \trans_m7_0/bit_count[13]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_10_0 ));
    AO1 \address_encoder_0/m2_wr_reg_en_RNO  (.A(
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_1 ), .B(
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_0 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_37 ));
    NOR3A \cmd_decoder_0/state_ii_RNO_3[0]  (.A(
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_0[0] ), .B(
        \cmd_decoder_0/N_517 ), .C(\cmd_decoder_0/N_285 ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_2[0] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[29]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[29]_net_1 ));
    IOBI_IB_OB_EB \Data_pad[14]/U0/U1  (.D(\MUX2_0_Result[14] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[14]/U0/NET3 ), 
        .DOUT(\Data_pad[14]/U0/NET1 ), .EOUT(\Data_pad[14]/U0/NET2 ), 
        .Y(\Data_in[14] ));
    AX1C \edib_mode2_clkgen_0/un5_counter1_I_12  (.A(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ), .B(
        \edib_mode2_clkgen_0/DWACT_FINC_E[0] ), .C(
        \edib_mode2_clkgen_0/counter1[4]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_12_0 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[23]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[23]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[22]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_399 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[28]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[27]_net_1 ), .C(\trans_m2_0/N_350 ), 
        .Y(\trans_m2_0/N_169 ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNIF0H91[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_63_mux ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[10]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[10]/Y ));
    DFN1E1C0 \cmd_decoder_0/int_counter[8]  (.D(
        \cmd_decoder_0/int_counter[7]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[8]_net_1 ));
    NOR2A \edib_ctrl_reg_0/m2_sendone_reg_RNI4BUD[0]  (.A(
        address_encoder_0_m2_sendone_rd_en), .B(
        \edib_ctrl_reg_0/m2_sendone_reg[0]_net_1 ), .Y(
        \edib_ctrl_reg_0/N_78 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[12]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[11]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_208 ));
    XOR2 \edib_m5m7_clkgen_0/clk_m5m7_RNO  (.A(
        \edib_m5m7_clkgen_0/clk_m5m7_i ), .B(
        \edib_m5m7_clkgen_0/counter13 ), .Y(
        \edib_m5m7_clkgen_0/clk_m5m7_RNO_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[8]  (.A(\trans_m7_0/N_384 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[8] ));
    OR2 \cmd_decoder_0/int_counter_RNIPE3D[2]  (.A(
        \cmd_decoder_0/int_counter[2]_net_1 ), .B(
        \cmd_decoder_0/int_counter[7]_net_1 ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_3[0] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[17]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[16]_net_1 ), .C(\trans_m2_0/N_338 ), 
        .Y(\trans_m2_0/N_95 ));
    NOR2A \trans_m7_0/bit_count_RNO[29]  (.A(
        \trans_m7_0/bit_count[28]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[29] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[9]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[9]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[1] ));
    AND2 \edib_mode2_clkgen_0/un5_counter1_I_15  (.A(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[4]_net_1 ), .Y(
        \edib_mode2_clkgen_0/DWACT_FINC_E[1] ));
    NOR2A \trans_m7_0/bit_count_RNO[10]  (.A(
        \trans_m7_0/bit_count[9]_net_1 ), .B(\trans_m7_0/shift_2 ), .Y(
        \trans_m7_0/bit_count_5[10] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[17]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[17]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[9] ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[17]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[16]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[17]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_393 ));
    IOPAD_BI \Data_pad[15]/U0/U0  (.D(\Data_pad[15]/U0/NET1 ), .E(
        \Data_pad[15]/U0/NET2 ), .Y(\Data_pad[15]/U0/NET3 ), .PAD(
        Data[15]));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[4]  (.D(\trans_m2_0/N_11 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[4]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[11]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[11]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[3] ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[21]  (.D(\cmd_decoder_0/N_190 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[21]_net_1 ));
    DFN1 \edib_m2m5m7_clkgen_0/clk_m2_rcv  (.D(
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_RNO_net_1 ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_i ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[23]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[23]_net_1 ));
    NOR3B \trans_m5m7_0/bit_count_RNI9M341[31]  (.A(
        \trans_m5m7_0/bit_count[31]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_10 ), .C(
        \trans_m5m7_0/bit_count[0]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_9 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[28]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[28]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[27]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_372 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[4]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[4]_net_1 ));
    OR2 \cmd_decoder_0/rst_counter_RNINJU1[5]  (.A(
        \cmd_decoder_0/rst_counter[5]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[6]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_7 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[5]  (.D(
        \cmd_decoder_0/sample_counter[4]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[5]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[2]  (.D(\tri_state_ctrl_0_Dout[2] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[2]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[22]  (.A(
        \trans_m7_0/bit_count[21]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[22] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[2]  (.D(\trans_m2_0/N_7 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[2]_net_1 ));
    NOR3 \cmd_decoder_0/sample_counter_RNI2HG97[23]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_18 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_19 ), .C(
        \cmd_decoder_0/sample_counter[23]_net_1 ), .Y(
        \cmd_decoder_0/N_550 ));
    AO1 \address_encoder_0/m5_sendata_reg_wren_RNO  (.A(
        \address_encoder_0/N_109 ), .B(\address_encoder_0/N_108 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_33 ));
    DFN1E1C0 \trans_m5m7_0/q5[2]  (.D(\tri_state_ctrl_0_Dout[2] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[2]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[20]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[19]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_192 ));
    IOPAD_BI \Data_pad[12]/U0/U0  (.D(\Data_pad[12]/U0/NET1 ), .E(
        \Data_pad[12]/U0/NET2 ), .Y(\Data_pad[12]/U0/NET3 ), .PAD(
        Data[12]));
    NOR3C \cmd_decoder_0/rst_counter_RNO[34]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_393 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[34]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[31]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[31]_net_1 ));
    OA1A \cmd_decoder_0/state_RNO_2[5]  (.A(\cmd_decoder_0/N_94 ), .B(
        \cmd_decoder_0/N_114 ), .C(
        \cmd_decoder_0/state_ns_0_i_i_a3_13[5] ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_14[5] ));
    NOR2 \address_encoder_0/rcvd_datareg_en_RNO_0  (.A(
        \address_encoder_0/N_63 ), .B(\dsp_address_c[0] ), .Y(
        \address_encoder_0/rcvd_datareg_en_0_sqmuxa_i_a2_0_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[18]  (.A(
        \cmd_decoder_0/rst_counter[18]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[17]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_377 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[16]  (.A(\trans_m7_0/N_392 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[16] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[7]  (.A(
        \trans_m5m7_0/m5_t_no_shiftreg[6]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[7]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_351 ));
    AND3 \edib_mode2_clkgen_0/un5_counter1_I_10  (.A(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ), .C(
        \edib_mode2_clkgen_0/counter1[2]_net_1 ), .Y(
        \edib_mode2_clkgen_0/DWACT_FINC_E[0] ));
    OR2 \cmd_decoder_0/state_RNIAL2M_2[9]  (.A(
        \cmd_decoder_0/state[9]_net_1 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .Y(\cmd_decoder_0/N_259_1 ));
    IOPAD_IN \dsp_address_pad[1]/U0/U0  (.PAD(dsp_address[1]), .Y(
        \dsp_address_pad[1]/U0/NET1 ));
    NOR3 \address_encoder_0/m2_send_en_RNO_2  (.A(
        \address_encoder_0/N_59 ), .B(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_net_1 ), .C(
        \dsp_address_c[0] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_0 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[37]  (.D(\trans_m2_0/N_64 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[37]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[28]  (.A(
        \trans_m7_0/bit_count[27]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[28] ));
    IOPAD_IN \xzcs0and1_pad/U0/U0  (.PAD(xzcs0and1), .Y(
        \xzcs0and1_pad/U0/NET1 ));
    IOIN_IB \DSP_XRW_pad/U0/U1  (.YIN(\DSP_XRW_pad/U0/NET1 ), .Y(
        DSP_XRW_c));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[28]  (.A(
        \cmd_decoder_0/rcv_shftreg[24]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1263 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[26]  (.D(\trans_m2_0/N_173 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[26]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[10]  (.D(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[10] ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[22]  (.D(
        \cmd_decoder_0/N_1257 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[22]_net_1 ));
    IOTRI_OB_EB \adc_pwdn_out_pad[0]/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \adc_pwdn_out_pad[0]/U0/NET1 ), .EOUT(
        \adc_pwdn_out_pad[0]/U0/NET2 ));
    DFN0 \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out5 ), .CLK(
        sam_clk_5M_out_net_1), .Q(adc_fsync_out_c_c));
    DFI1P0 \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i ), .CLK(
        sam_clk_5M_out_net_1), .PRE(adc_rstn_test_0), .QN(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt_i[0] ), .CLK(
        convert_over_out), .CLR(adc_rstn_test_1), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[0]_net_1 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[1]  (.A(\trans_m7_0/N_345 ), 
        .B(\trans_m7_0/N_521_1 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[1] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[6]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[5]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[6]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_350 ));
    NOR3C \cmd_decoder_0/state_RNO_0[4]  (.A(\cmd_decoder_0/N_285 ), 
        .B(\cmd_decoder_0/state[3]_net_1 ), .C(\cmd_decoder_0/N_546 ), 
        .Y(\cmd_decoder_0/N_1283 ));
    DFN1C0 \address_encoder_0/m7_sendata_reg_wren/U1  (.D(
        \address_encoder_0/m7_sendata_reg_wren/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_0), .Q(
        address_encoder_0_m7_sendata_reg_wren));
    NOR2A \trans_m7_0/state_RNO_0[1]  (.A(\trans_m7_0/state[1]_net_1 ), 
        .B(\trans_m7_0/state[0]_net_1 ), .Y(
        \trans_m7_0/state_ns_0_0_0[1] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[33]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[32]_net_1 ), .C(\trans_m2_0/N_355 ), 
        .Y(\trans_m2_0/N_187 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[11]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[11]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[4]  (.D(\tri_state_ctrl_0_Dout[4] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[4]_net_1 ));
    NOR2 \edib_ctrl_reg_0/edib_zone_en_i_a3_1  (.A(
        address_encoder_0_rcvd_datareg_en), .B(
        address_encoder_0_m2_sendone_rd_en), .Y(
        \edib_ctrl_reg_0/edib_zone_en_i_a3_1_net_1 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[1]  (.D(
        \edib_ctrl_reg_0/N_51 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[1]_net_1 ));
    XOR2 \edib_mode2_clkgen_0/un5_counter1_I_9  (.A(
        \edib_mode2_clkgen_0/N_5 ), .B(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_9_0 ));
    IOBI_IB_OB_EB \Data_pad[1]/U0/U1  (.D(\MUX2_0_Result[1] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[1]/U0/NET3 ), .DOUT(
        \Data_pad[1]/U0/NET1 ), .EOUT(\Data_pad[1]/U0/NET2 ), .Y(
        \Data_in[1] ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[29]  (.A(
        \trans_m7_0/q7[14]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[29] ));
    IOPAD_BI \Data_pad[3]/U0/U0  (.D(\Data_pad[3]/U0/NET1 ), .E(
        \Data_pad[3]/U0/NET2 ), .Y(\Data_pad[3]/U0/NET3 ), .PAD(
        Data[3]));
    DFN1 \cmd_decoder_0/rst_counter[14]  (.D(
        \cmd_decoder_0/rst_counter_RNO[14]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[14]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[27]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[26]_net_1 ), .C(\trans_m2_0/N_349 ), 
        .Y(\trans_m2_0/N_167 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIV6KL1[3]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[3]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[3] ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[27]  (.D(
        \cmd_decoder_0/N_1262 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[15]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[14]_net_1 ), .C(\trans_m2_0/N_336 ), 
        .Y(\trans_m2_0/N_74 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[15]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[15] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[15]_net_1 )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[20]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[12] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[11] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[20]/Y ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[9]  (.A(
        \trans_m5m7_0/N_385 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[9] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[24]  (.D(\trans_m2_0/N_161 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[24]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[0]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[0]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[0] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[6]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[5]_net_1 ), .C(\trans_m2_0/N_329 ), 
        .Y(\trans_m2_0/N_31 ));
    MX2 \cmd_decoder_0/bit_counter_RNO[4]  (.A(\cmd_decoder_0/N_399 ), 
        .B(\cmd_decoder_0/N_257 ), .S(\cmd_decoder_0/N_259_1 ), .Y(
        \cmd_decoder_0/N_1269 ));
    DFN0E0C0 \trans_m7_0/bit_count[20]  (.D(
        \trans_m7_0/bit_count_5[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[20]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2]/Y ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[14]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[14]_net_1 ));
    IOIN_IB \INBUF_0/U0/U1  (.YIN(\INBUF_0/U0/NET1 ), .Y(adc_rstn_test)
        );
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[9]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[9]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[8]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_385 ));
    XOR3 \trans_m2_0/m2_check_RNO_1  (.A(\tri_state_ctrl_0_Dout[15] ), 
        .B(\tri_state_ctrl_0_Dout[14] ), .C(
        \trans_m2_0/un3_m2_check_5 ), .Y(\trans_m2_0/un3_m2_check_10 ));
    NOR2 \trans_m2_0/counter_RNIAVRB[27]  (.A(
        \trans_m2_0/counter[27]_net_1 ), .B(
        \trans_m2_0/counter[38]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_9 ));
    OR2 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_5  (.A(
        \dsp_address_c[15] ), .B(\dsp_address_c[16] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_5_net_1 ));
    IOPAD_TRI \adc_pwdn_out_pad[0]/U0/U0  (.D(
        \adc_pwdn_out_pad[0]/U0/NET1 ), .E(
        \adc_pwdn_out_pad[0]/U0/NET2 ), .PAD(adc_pwdn_out[0]));
    XOR2 \edib_mode2_clkgen_0/un5_counter1_I_5  (.A(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_5_0 ));
    OR2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[31]  (.A(
        \trans_m5m7_0/N_375 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[31] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[21]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[21]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[13] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[32]  (.D(\trans_m2_0/N_185 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[32]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[4]  (.A(
        \trans_m5m7_0/N_348 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[4] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[9]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[9]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[18]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[18]_net_1 ));
    DFN1E1P0 \cmd_decoder_0/bit_counter[0]  (.D(cmd_decoder_0_load), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[0]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[30]  (.A(\trans_m7_0/N_406 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[30] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[0]  (.A(
        \trans_m5m7_0/N_221 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[0] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[18]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[18]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[10] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[3]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[2]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_224 ));
    OA1 \trans_m2_0/counter_RNO[34]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[33]_net_1 ), .Y(\trans_m2_0/N_307 ));
    NOR3C \trans_m7_0/bit_count_RNIJVKL3[23]  (.A(
        \trans_m7_0/m7_t_mc_reg104_28_3 ), .B(
        \trans_m7_0/m7_t_mc_reg104_28_2 ), .C(
        \trans_m7_0/m7_t_mc_reg104_28_4 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_28 ));
    XOR2 \trans_m2_0/m2_check_RNO_5  (.A(\tri_state_ctrl_0_Dout[4] ), 
        .B(\tri_state_ctrl_0_Dout[5] ), .Y(\trans_m2_0/un3_m2_check_1 )
        );
    MX2 \cmd_decoder_0/state_ii_RNO_1[0]  (.A(\cmd_decoder_0/N_657 ), 
        .B(\cmd_decoder_0/N_1255 ), .S(cmd_decoder_0_m2rxirqb), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_0[0] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[5]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[5] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[5]_net_1 )
        );
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out_RNO_0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/sam_clk_5M_out4_0 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[20]  (.D(\cmd_decoder_0/N_192 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[20]_net_1 ));
    INV xzcs0and1_pad_RNIGVGB (.A(xzcs0and1_c), .Y(xzcs0and1_c_i));
    NOR3A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIGO321[7]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_56_mux ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[29]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[29]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[9]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[8]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_214 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[26]  (.A(
        \cmd_decoder_0/rcv_shftreg[22]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1261 ));
    NOR3A \address_encoder_0/rcvd_datareg_en_0_sqmuxa_i_a2_0  (.A(
        \address_encoder_0/N_106 ), .B(\dsp_address_c[1] ), .C(
        \dsp_address_c[2] ), .Y(\address_encoder_0/N_109 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[12]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_371 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[12]_net_1 ));
    IOBI_IB_OB_EB \Data_pad[6]/U0/U1  (.D(\MUX2_0_Result[6] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[6]/U0/NET3 ), .DOUT(
        \Data_pad[6]/U0/NET1 ), .EOUT(\Data_pad[6]/U0/NET2 ), .Y(
        \Data_in[6] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[28]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[28]_net_1 ));
    NOR2A \tri_state_ctrl_0/Dout_1_3  (.A(\Data_in[11] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[11] ));
    MX2B \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[5]  (.A(
        \trans_m5m7_0/m5_t_mc_shiftreg[4]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[5]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_381 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[13]  (.A(
        \cmd_decoder_0/rcv_shftreg[9]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[12]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1256 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[17]  (.A(
        \trans_m5m7_0/q5[8]_net_1 ), .B(address_encoder_0_m5_send_en_0)
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[17] ));
    IOPAD_TRI \OUTBUF_0/U0/U0  (.D(\OUTBUF_0/U0/NET1 ), .E(
        \OUTBUF_0/U0/NET2 ), .PAD(CMD_INT1));
    DFN0E0C0 \trans_m7_0/bit_count[24]  (.D(
        \trans_m7_0/bit_count_5[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[24]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[10]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[10]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[24]  (.A(
        \trans_m5m7_0/N_368 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[24] ));
    XOR3 \trans_m2_0/m2_check_RNO_0  (.A(\tri_state_ctrl_0_Dout[11] ), 
        .B(\tri_state_ctrl_0_Dout[10] ), .C(
        \trans_m2_0/un3_m2_check_7 ), .Y(\trans_m2_0/un3_m2_check_11 ));
    NOR3B \edib_m5m7_clkgen_0/clk_m5m7_RNO_0  (.A(
        \edib_m5m7_clkgen_0/counter[3]_net_1 ), .B(
        \edib_m5m7_clkgen_0/counter[4]_net_1 ), .C(
        \edib_m5m7_clkgen_0/N_9 ), .Y(\edib_m5m7_clkgen_0/counter13 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[18]  (.D(\trans_m2_0/N_100 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[18]_net_1 ));
    AO1C \cmd_decoder_0/state_RNO[9]  (.A(\cmd_decoder_0/N_546 ), .B(
        \cmd_decoder_0/state[9]_net_1 ), .C(\cmd_decoder_0/N_279 ), .Y(
        \cmd_decoder_0/N_100 ));
    MX2 \address_encoder_0/m2start_pulse_counter[8]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[8] ), .B(
        \address_encoder_0/m2start_pulse_counter[8] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[8]/Y ));
    NOR2A \trans_m2_0/state_RNO_0[0]  (.A(\state_RNISNSU1_0[0] ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_473 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_14_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[0]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[0]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[0]_net_1 )
        , .Y(\ADC_TOP_0_dataout[0] ));
    NOR3A \trans_m7_0/bit_count_RNIEFLQ1[15]  (.A(
        \trans_m7_0/un1_bit_count_2_2 ), .B(
        \trans_m7_0/bit_count[15]_net_1 ), .C(
        \trans_m7_0/bit_count[16]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_10 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[28]  (.D(
        \trans_m5m7_0/bit_count_5[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[28]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[15]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[14]_net_1 ), .Y(\trans_m2_0/N_269 ));
    NOR2B \cmd_decoder_0/state_RNIMCO2N[9]  (.A(\cmd_decoder_0/N_546 ), 
        .B(\cmd_decoder_0/N_259 ), .Y(cmd_decoder_0_load));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[7]  (.D(\trans_m2_0/N_25 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[7]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[22]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[22]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[14] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[22]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[14] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[13] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[22]/Y ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[17]  (.D(\cmd_decoder_0/N_198 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[17]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[29]  (.D(\cmd_decoder_0/N_174 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[29]_net_1 ));
    NOR3C \trans_m2_0/counter_RNI4DUS1[16]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_13 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_12 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_27 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_33 ));
    OA1 \trans_m2_0/counter_RNO[1]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[0]_net_1 ), .Y(\trans_m2_0/N_241 ));
    DFN1 \edib_mode2_clkgen_0/counter1[5]  (.D(
        \edib_mode2_clkgen_0/I_14 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[5]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIVULH[11]  (.A(
        \trans_m2_0/m2_data[11]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_346 ));
    DFN1E0C0 \trans_m2_0/counter[31]  (.D(\trans_m2_0/N_301 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[31]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[13]  (.D(\trans_m2_0/N_46 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[13]_net_1 ));
    NOR3C \address_encoder_0/m2start_pulse_counter_RNIIVSD1[0]  (.A(
        \address_encoder_0/m10_2 ), .B(\address_encoder_0/m10_1 ), .C(
        \address_encoder_0/m10_6 ), .Y(\address_encoder_0/N_19_mux ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[10]  (.D(\trans_m2_0/N_40 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[10]_net_1 ));
    NOR2 \trans_m5m7_0/bit_count_RNIPVGN[21]  (.A(
        \trans_m5m7_0/bit_count[21]_net_1 ), .B(
        \trans_m5m7_0/bit_count[22]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_22_0 ));
    INV \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_i[0] ));
    DFN1E1C0 \trans_m7_0/q7[15]  (.D(\tri_state_ctrl_0_Dout[15] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[15]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7] ));
    OR2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[31]  (.A(
        \trans_m5m7_0/N_407 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[31] ));
    DFN1P0 \ADC_TOP_0/ads_trans_fsm_0/pt_MUX2_1[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[1]_net_1 ), .CLK(
        convert_over_out), .PRE(adc_rstn_test), .Q(\pt_MUX1_c_c[1] ));
    AO1B \trans_m7_0/state_RNIGIIOC[0]  (.A(\trans_m7_0/N_528 ), .B(
        \trans_m7_0/un1_bit_count_2 ), .C(\trans_m7_0/N_520 ), .Y(
        \trans_m7_0/N_521_0 ));
    DFN0E0C0 \trans_m7_0/bit_count[31]  (.D(
        \trans_m7_0/bit_count_5[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[31]_net_1 ));
    IOPAD_BI \Data_pad[13]/U0/U0  (.D(\Data_pad[13]/U0/NET1 ), .E(
        \Data_pad[13]/U0/NET2 ), .Y(\Data_pad[13]/U0/NET3 ), .PAD(
        Data[13]));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[29]  (.A(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[28]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1264 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[14]  (.D(
        \trans_m5m7_0/bit_count_5[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[14]_net_1 )
        );
    AOI1B \cmd_decoder_0/state_RNO_4[4]  (.A(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .C(
        \cmd_decoder_0/state_ns_0_0_0_a2_1_0[4] ), .Y(
        \cmd_decoder_0/N_516 ));
    OR2A \trans_m5m7_0/bit_counter_clear_b0_i_a3_0  (.A(
        \trans_m5m7_0/N_520 ), .B(\trans_m5m7_0/un1_bit_count_2 ), .Y(
        \trans_m5m7_0/shift_0 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_13_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[1]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[1]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[1]_net_1 )
        , .Y(\ADC_TOP_0_dataout[1] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1] ), .B(adc_data3_test_c)
        , .S(\ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1]/Y ));
    MX2 \address_encoder_0/edib_interface_rst_RNO  (.A(
        \dsp_address_c[0] ), .B(address_encoder_0_edib_interface_rst), 
        .S(\address_encoder_0/N_77 ), .Y(\address_encoder_0/N_12 ));
    IOPAD_IN \dsp_address_pad[2]/U0/U0  (.PAD(dsp_address[2]), .Y(
        \dsp_address_pad[2]/U0/NET1 ));
    NOR3C \cmd_decoder_0/state_ii_RNO_0[0]  (.A(\cmd_decoder_0/N_546 ), 
        .B(\cmd_decoder_0/state[3]_net_1 ), .C(
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_2[0] ), .Y(
        \cmd_decoder_0/N_1272 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[9]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[9]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[19]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[18]_net_1 ), .Y(\trans_m2_0/N_277 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[36]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[35]_net_1 ), .C(
        \trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_55 ));
    DFI1P0 \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_0  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i ), .CLK(
        sam_clk_5M_out_net_1), .PRE(adc_rstn_test_0), .QN(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ));
    DFN0E0C0 \trans_m7_0/bit_count[5]  (.D(\trans_m7_0/bit_count_5[5] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[5]_net_1 ));
    DFN1E1C0 \trans_m5m7_0/q5[9]  (.D(\tri_state_ctrl_0_Dout[9] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[9]_net_1 ));
    DFN0P0 \edib_ctrl_reg_0/m2_sendone_reg[0]  (.D(
        \edib_ctrl_reg_0/m2_sendone_flag_net_1 ), .CLK(DSP_CLK_TEST), 
        .PRE(address_encoder_0_edib_interface_rst), .Q(
        \edib_ctrl_reg_0/m2_sendone_reg[0]_net_1 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[17]  (.A(\trans_m7_0/N_361 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[17] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[27]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[27]_net_1 ));
    IOTRI_OB_EB \m5_boo_pad/U0/U1  (.D(m5_boo_c), .E(VCC), .DOUT(
        \m5_boo_pad/U0/NET1 ), .EOUT(\m5_boo_pad/U0/NET2 ));
    DFN1E0C0 \cmd_decoder_0/headreg[2]  (.D(\cmd_decoder_0/N_39 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[2]_net_1 ));
    AO1 \address_encoder_0/rcvd_datareg_en_RNO  (.A(
        \address_encoder_0/rcvd_datareg_en_0_sqmuxa_i_a2_0_net_1 ), .B(
        \address_encoder_0/N_109 ), .C(xzcs0and1_c), .Y(
        \address_encoder_0/N_27 ));
    NOR2B \address_encoder_0/m7_sendata_reg_wren_RNO_1  (.A(
        \address_encoder_0/N_108 ), .B(\address_encoder_0/N_106 ), .Y(
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_0_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[8]  (.D(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[8] ));
    DFN1C0 \address_encoder_0/m7_send_en_0/U1  (.D(
        \address_encoder_0/m7_send_en_0/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_0), .Q(m7_send_en_TEST_0));
    DFN1 \cmd_decoder_0/rst_counter[22]  (.D(
        \cmd_decoder_0/rst_counter_RNO[22]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[22]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[19]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[19]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[18]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_395 ));
    IOPAD_TRI \tst_state_pad[0]/U0/U0  (.D(\tst_state_pad[0]/U0/NET1 ), 
        .E(\tst_state_pad[0]/U0/NET2 ), .PAD(tst_state[0]));
    NOR2 \trans_m2_0/counter_RNIVFIP[4]  (.A(
        \trans_m2_0/counter[4]_net_1 ), .B(
        \trans_m2_0/counter[5]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_16 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/convert_over_out/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/convert_over_out/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        convert_over_out));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[3]  (.D(\trans_m2_0/N_17 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[3]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[11]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[11] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[11]_net_1 )
        );
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[28]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[28]_net_1 ));
    OR2A \address_encoder_0/adc_open_RNO_0  (.A(
        \address_encoder_0/N_71 ), .B(xzcs0and1_c), .Y(
        \address_encoder_0/N_47 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[4]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[3]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[4]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_380 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[14]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[14]_net_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIS3KL1[0]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[0]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[0] ));
    DFN0E0C0 \trans_m7_0/bit_count[23]  (.D(
        \trans_m7_0/bit_count_5[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[23]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[12]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[12]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[4] ));
    IOIN_IB \DSP_XZCS2_pad/U0/U1  (.YIN(\DSP_XZCS2_pad/U0/NET1 ), .Y(
        DSP_XZCS2_c));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[13]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[13]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[26]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[25]_net_1 ), .C(\trans_m2_0/N_348 ), 
        .Y(\trans_m2_0/N_165 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[3]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[3] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[3]_net_1 )
        );
    DFN1E0C0 \trans_m2_0/counter[38]  (.D(\trans_m2_0/N_315 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[38]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[10]  (.A(
        \trans_m5m7_0/N_354 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[10] ));
    OA1 \trans_m2_0/counter_RNO[38]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[37]_net_1 ), .Y(\trans_m2_0/N_315 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[1]  (.A(
        \trans_m5m7_0/q5[0]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[1] ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_7_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[7]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[7]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[7]_net_1 )
        , .Y(\ADC_TOP_0_dataout[7] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[14]  (.A(
        \trans_m5m7_0/bit_count[13]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[14] ));
    NOR2A \trans_m5m7_0/rden55_RNI4A6S  (.A(
        \trans_m5m7_0/rden55_net_1 ), .B(\trans_m5m7_0/N_520 ), .Y(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ));
    IOPAD_IN \dsp_address_pad[12]/U0/U0  (.PAD(dsp_address[12]), .Y(
        \dsp_address_pad[12]/U0/NET1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2] ));
    AO1A \cmd_decoder_0/state_RNI2SM9G[2]  (.A(\cmd_decoder_0/N_352 ), 
        .B(\cmd_decoder_0/N_288 ), .C(\cmd_decoder_0/N_506 ), .Y(
        \cmd_decoder_0/N_254_1 ));
    DFN1C0 \address_encoder_0/mux_ctrl/U1  (.D(
        \address_encoder_0/mux_ctrl/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_0), .Q(address_encoder_0_mux_ctrl));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[18]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[18]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNI33MH[15]  (.A(
        \trans_m2_0/m2_data[15]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_354 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[10]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[10] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[10]_net_1 )
        );
    NOR3C \trans_m7_0/bit_count_RNI38894[13]  (.A(
        \trans_m7_0/un1_bit_count_2_11 ), .B(
        \trans_m7_0/un1_bit_count_2_10 ), .C(
        \trans_m7_0/un1_bit_count_2_16 ), .Y(
        \trans_m7_0/un1_bit_count_2_18 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[2]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[2]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[9]  (.D(\cmd_decoder_0/N_214 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[9]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[26]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[26]_net_1 ));
    DFI1P0 \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i ), .CLK(
        sam_clk_5M_out_net_1), .PRE(adc_rstn_test), .QN(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[23]  (.A(\trans_m7_0/N_367 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[23] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[18]  (.A(
        address_encoder_0_m5_send_en_0), .B(\trans_m5m7_0/q5[9]_net_1 )
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[18] ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[13]  (.D(
        \edib_ctrl_reg_0/N_11 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[13]_net_1 ));
    BUFF INBUF_0_RNI3ULF_0 (.A(adc_rstn_test), .Y(adc_rstn_test_0));
    IOIN_IB \dsp_address_pad[6]/U0/U1  (.YIN(
        \dsp_address_pad[6]/U0/NET1 ), .Y(\dsp_address_c[6] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[18]  (.A(
        \trans_m5m7_0/N_362 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[18] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[12]  (.A(
        address_encoder_0_m5_send_en_0), .B(\trans_m5m7_0/q5[6]_net_1 )
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[12] ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[18]  (.D(\cmd_decoder_0/N_196 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[18]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[7]  (.D(\trans_m7_0/bit_count_5[7] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[7]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[18]  (.D(
        \cmd_decoder_0/rst_counter_RNO[18]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[18]_net_1 ));
    IOPAD_IN \dsp_address_pad[7]/U0/U0  (.PAD(dsp_address[7]), .Y(
        \dsp_address_pad[7]/U0/NET1 ));
    NOR3C \cmd_decoder_0/bit_counter_RNIESB13[21]  (.A(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_2[5] ), .B(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_1[5] ), .C(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_3[5] ), .Y(
        \cmd_decoder_0/N_533 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[6]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[6] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[6]_net_1 )
        );
    MX2 \address_encoder_0/clr_m5_loadone_flag/U0  (.A(
        address_encoder_0_clr_m5_loadone_flag), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_45 ), .Y(
        \address_encoder_0/clr_m5_loadone_flag/Y ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[11]  (.D(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[11] ));
    NOR2A \cmd_decoder_0/state_RNO_12[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_2[5] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[19]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[19]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[26]  (.D(\trans_m2_0/N_165 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[26]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[23]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[23]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[22]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_367 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[20]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_379 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[20]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[26]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[13]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[26] ));
    DFN0C0 \trans_m7_0/state[0]  (.D(\trans_m7_0/state_RNO_1[0] ), 
        .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/state[0]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[26]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[26]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[31]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_390 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[31]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[15]  (.D(
        \trans_m5m7_0/bit_count_5[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[15]_net_1 )
        );
    IOIN_IB \DSP_XWE_pad/U0/U1  (.YIN(\DSP_XWE_pad/U0/NET1 ), .Y(
        DSP_XWE_c));
    DFN1 \cmd_decoder_0/rst_counter[31]  (.D(
        \cmd_decoder_0/rst_counter_RNO[31]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[31]_net_1 ));
    IOPAD_IN \dsp_address_pad[8]/U0/U0  (.PAD(dsp_address[8]), .Y(
        \dsp_address_pad[8]/U0/NET1 ));
    IOIN_IB \dsp_address_pad[17]/U0/U1  (.YIN(
        \dsp_address_pad[17]/U0/NET1 ), .Y(\dsp_address_c[17] ));
    NOR2A \trans_m7_0/bit_count_RNO[2]  (.A(
        \trans_m7_0/bit_count[1]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[2] ));
    NOR3A \trans_m7_0/bit_count_RNIJAH01[31]  (.A(
        \trans_m7_0/rden77_net_1 ), .B(
        \trans_m7_0/bit_count[31]_net_1 ), .C(
        \trans_m7_0/bit_count[11]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_9 ));
    DFN0E0C0 \trans_m7_0/bit_count[3]  (.D(\trans_m7_0/bit_count_5[3] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[3]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[15]  (.D(
        \trans_m7_0/bit_count_5[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[15]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[9]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[9]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[1] ));
    MX2 \address_encoder_0/m2_send_en/U0  (.A(
        \address_encoder_0/m2_send_en ), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_41 ), .Y(\address_encoder_0/m2_send_en/Y )
        );
    NOR3A \edib_m2m5m7_clkgen_0/counter_RNIN3RC1[4]  (.A(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[3]_net_1 ), .C(
        \edib_m2m5m7_clkgen_0/counter[4]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/counter13_2 ));
    DFN1E1 \address_encoder_0/adc_data_choice[0]  (.D(
        \dsp_address_c[0] ), .CLK(DSP_CLK_TEST), .E(
        \address_encoder_0/N_81 ), .Q(
        \address_encoder_0_adc_data_choice[0] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[29]  (.D(
        \trans_m5m7_0/bit_count_5[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[29]_net_1 ));
    OR2 \cmd_decoder_0/headreg_RNI5NKH_0[4]  (.A(
        \cmd_decoder_0/headreg[5]_net_1 ), .B(
        \cmd_decoder_0/headreg[4]_net_1 ), .Y(\cmd_decoder_0/N_264 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[5]  (.D(
        \edib_ctrl_reg_0/N_43 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[5]_net_1 ));
    NOR2 \address_encoder_0/m2start_pulse_counter_RNIT66A[0]  (.A(
        \address_encoder_0/m2start_pulse_counter[1] ), .B(
        \address_encoder_0/m2start_pulse_counter[0] ), .Y(
        \address_encoder_0/m10_2 ));
    NOR2 \trans_m7_0/rden77_RNI22H11  (.A(\trans_m7_0/rden77_net_1 ), 
        .B(\trans_m7_0/N_520 ), .Y(\trans_m7_0/N_525_0 ));
    DFN1P0 \cmd_decoder_0/int_counter[0]  (.D(
        \cmd_decoder_0/int_counter_RNO[0]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .PRE(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/int_counter[0]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[22]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[22]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[14] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[32]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[31]_net_1 ), .C(\trans_m2_0/N_355 ), 
        .Y(\trans_m2_0/N_193 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[3]  (.A(
        \trans_m5m7_0/q5[1]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[3] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[26]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[26]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[20]  (.A(
        \trans_m7_0/bit_count[19]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[20] ));
    DFN1E1C0 \trans_m2_0/m2_data[10]  (.D(\tri_state_ctrl_0_Dout[10] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[10]_net_1 ));
    IOPAD_IN \dsp_address_pad[10]/U0/U0  (.PAD(dsp_address[10]), .Y(
        \dsp_address_pad[10]/U0/NET1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[23]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[22]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_186 ));
    NOR2 \cmd_decoder_0/bit_counter_RNIRSNR[10]  (.A(
        \cmd_decoder_0/bit_counter[10]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[11]_net_1 ), .Y(
        \cmd_decoder_0/state_tr13_1_64_0_a3_3_0_a2_0 ));
    MX2 \MUX2_0/MX2_Result[15]  (.A(\edib_ctrl_reg_0_dsp_data_out[15] )
        , .B(\ADC_TOP_0_dataout[15] ), .S(\MUX2_0/SelAux_0[11] ), .Y(
        \MUX2_0_Result[15] ));
    DFN1 \cmd_decoder_0/md2udireg  (.D(
        \cmd_decoder_0/md2udireg_RNO_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/md2udireg_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[8]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[8]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[7]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_384 ));
    NOR2A \edib_ctrl_reg_0/databuffer_9_i_a2[15]  (.A(
        address_encoder_0_rcvd_datareg_en), .B(
        address_encoder_0_m2_sendone_rd_en), .Y(\edib_ctrl_reg_0/N_79 )
        );
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_step[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[0]_net_1 ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[0]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[21]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[20]_net_1 ), .C(\trans_m2_0/N_342 ), 
        .Y(\trans_m2_0/N_114 ));
    DFN1E0C0 \trans_m2_0/counter[36]  (.D(\trans_m2_0/N_311 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[36]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[3]  (.D(\trans_m2_0/N_245 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[3]_net_1 ));
    MX2 \MUX2_0/MX2_Result[11]  (.A(\edib_ctrl_reg_0_dsp_data_out[11] )
        , .B(\ADC_TOP_0_dataout[11] ), .S(\MUX2_0/SelAux_0[11] ), .Y(
        \MUX2_0_Result[11] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[11]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[11]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[6]  (.D(\cmd_decoder_0/N_220 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[6]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[12]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[11]_net_1 ), .Y(\trans_m2_0/N_263 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[8]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[8]/Y ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[6]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[6]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[30]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[30]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[12]  (.A(
        \trans_m5m7_0/N_356 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[12] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[13]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[12]_net_1 ), .C(\trans_m2_0/N_335 ), 
        .Y(\trans_m2_0/N_46 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[0]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[0]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIG5DS[4]  (.A(
        \trans_m2_0/m2_data[4]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_332 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[24]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[12]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[24] )
        );
    NOR2 \trans_m5m7_0/bit_count_RNIT4M1[5]  (.A(
        \trans_m5m7_0/bit_count[5]_net_1 ), .B(
        \trans_m5m7_0/bit_count[6]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_6 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[7]  (.A(\trans_m7_0/q7[3]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/m7_t_mc_reg_19[7] ));
    AXOI4 \cmd_decoder_0/rst_counter_RNO_0[0]  (.A(
        \cmd_decoder_0/N_267 ), .B(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .C(
        \cmd_decoder_0/rst_counter[0]_net_1 ), .Y(
        \cmd_decoder_0/N_359 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[18]  (.A(\trans_m7_0/N_362 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[18] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[22]  (.D(\trans_m2_0/N_157 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[22]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[10]  (.D(
        \cmd_decoder_0/N_1278 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[10]_net_1 ));
    NOR3 \cmd_decoder_0/bit_counter_RNI17N91[21]  (.A(
        \cmd_decoder_0/bit_counter[22]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[21]_net_1 ), .C(
        \cmd_decoder_0/bit_counter[24]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_3[5] ));
    NOR3C \trans_m2_0/state_RNIKPUU9[0]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_36 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_37 ), .C(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_704 ));
    OR2 \cmd_decoder_0/rst_counter_RNIRH9[29]  (.A(
        \cmd_decoder_0/rst_counter[29]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[31]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_11 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[3]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[3]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[3]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[3]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[8]  (.D(
        \cmd_decoder_0_rcvd_datareg[8] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[8]_net_1 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[2]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[1]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[2]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_378 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[6]  (.D(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[6] ));
    NOR3C \trans_m7_0/bit_count_RNILKK14[1]  (.A(
        \trans_m7_0/m7_t_mc_reg104_12 ), .B(
        \trans_m7_0/m7_t_mc_reg104_11 ), .C(
        \trans_m7_0/m7_t_mc_reg104_17 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_19 ));
    NOR2A \trans_m7_0/bit_count_RNO[9]  (.A(
        \trans_m7_0/bit_count[8]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[9] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[8]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[8]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[5]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[5]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_43 ));
    DFN1E1C0 \trans_m5m7_0/q5[4]  (.D(\tri_state_ctrl_0_Dout[4] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[4]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[21]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[20]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_190 ));
    DFN0C0 \trans_m5m7_0/rden55  (.D(address_encoder_0_m5_send_en_0), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .Q(\trans_m5m7_0/rden55_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[1]  (.D(
        \cmd_decoder_0/rst_counter_RNO[1]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[1]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[32]  (.A(
        \cmd_decoder_0/rcv_shftreg[28]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[31]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_1267 ));
    DFN0E0C0 \trans_m7_0/bit_count[18]  (.D(
        \trans_m7_0/bit_count_5[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[18]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[6]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[6]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[0]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[0] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[0]_net_1 )
        );
    DFN1C0 \trans_m2_0/state_1[1]  (.D(\trans_m2_0/N_321 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m2_0/state_1[1]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[12]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[12]_net_1 ));
    IOTRI_OB_EB \adc_en_test_pad/U0/U1  (.D(adc_en_test_c), .E(VCC), 
        .DOUT(\adc_en_test_pad/U0/NET1 ), .EOUT(
        \adc_en_test_pad/U0/NET2 ));
    IOIN_IB \INBUF_1/U0/U1  (.YIN(\INBUF_1/U0/NET1 ), .Y(
        DSP_XRD_TEST_c));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[5]  (.D(\cmd_decoder_0/N_426 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[5]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[17]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[17]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[21]  (.D(\trans_m2_0/N_281 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[21]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[10]  (.D(\trans_m2_0/N_48 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[10]_net_1 ));
    AX1C \edib_m2m5m7_clkgen_0/clk_m2_rcv_RNO  (.A(
        \edib_m2m5m7_clkgen_0/counter13_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter13_2 ), .C(
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_i ), .Y(
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_RNO_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[22]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[14] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[13] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[22]/Y ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[3]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[3]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[2]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_379 ));
    IOPAD_BI \Data_pad[2]/U0/U0  (.D(\Data_pad[2]/U0/NET1 ), .E(
        \Data_pad[2]/U0/NET2 ), .Y(\Data_pad[2]/U0/NET3 ), .PAD(
        Data[2]));
    NOR2A \trans_m5m7_0/bit_count_RNO[9]  (.A(
        \trans_m5m7_0/bit_count[8]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[9] ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[2]  (.A(
        \address_encoder_0/m2start_pulse_counter[1] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[2] ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_9_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[5]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[5]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[5]_net_1 )
        , .Y(\ADC_TOP_0_dataout[5] ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[0]  (.A(\trans_m7_0/N_221 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[0] ));
    DFN1 \cmd_decoder_0/rst_counter[6]  (.D(
        \cmd_decoder_0/rst_counter_RNO[6]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[6]_net_1 ));
    AX1C \edib_m5m7_clkgen_0/counter_RNO[2]  (.A(
        \edib_m5m7_clkgen_0/counter[1]_net_1 ), .B(
        \edib_m5m7_clkgen_0/counter[0]_net_1 ), .C(
        \edib_m5m7_clkgen_0/counter[2]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/N_12_i ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[16]  (.A(
        \cmd_decoder_0/rst_counter[16]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[15]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_375 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[11]  (.D(
        \trans_m5m7_0/bit_count_5[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[11]_net_1 )
        );
    DFN0E0P0 \trans_m5m7_0/bit_count[0]  (.D(\trans_m5m7_0/shift_0 ), 
        .CLK(edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[0]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[25]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[24]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[25]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_369 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[2]  (.D(\cmd_decoder_0/N_423 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[2]_net_1 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[5]  (.A(
        \trans_m5m7_0/q5[2]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[5] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[15]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[15]_net_1 ));
    NOR2A \trans_m2_0/counter_RNIC0RB[39]  (.A(
        \trans_m2_0/counter[39]_net_1 ), .B(
        \trans_m2_0/counter[19]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_0 ));
    XNOR2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNO[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_9 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_347 ));
    IOPAD_BI \Data_pad[9]/U0/U0  (.D(\Data_pad[9]/U0/NET1 ), .E(
        \Data_pad[9]/U0/NET2 ), .Y(\Data_pad[9]/U0/NET3 ), .PAD(
        Data[9]));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[27]  (.D(\trans_m2_0/N_175 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[27]_net_1 ));
    AO1B \trans_m5m7_0/bit_count_RNINVM49[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_19 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_18 ), .C(
        address_encoder_0_m5_send_en_0), .Y(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[32]  (.D(
        \cmd_decoder_0/N_1267 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[32]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[10]  (.A(
        \cmd_decoder_0/rcv_shftreg[6]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[9]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_431 ));
    OR3 \cmd_decoder_0/sample_counter_RNIE3551[5]  (.A(
        \cmd_decoder_0/sample_counter[5]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[6]_net_1 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_9 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_15 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[4]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[4]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[3]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_348 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[14]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_373 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[14]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[26]  (.A(\trans_m7_0/N_402 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[26] ));
    IOPAD_TRI \m7_bzo_pad/U0/U0  (.D(\m7_bzo_pad/U0/NET1 ), .E(
        \m7_bzo_pad/U0/NET2 ), .PAD(m7_bzo));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[13]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[13]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_11 ));
    CLKINT \edib_mode2_clkgen_0/clk_send_RNITUM9  (.A(
        \edib_mode2_clkgen_0/clk_send_i ), .Y(
        edib_mode2_clkgen_0_clk_send));
    IOIN_IB \md2udi_pad/U0/U1  (.YIN(\md2udi_pad/U0/NET1 ), .Y(
        md2udi_c));
    IOBI_IB_OB_EB \Data_pad[5]/U0/U1  (.D(\MUX2_0_Result[5] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[5]/U0/NET3 ), .DOUT(
        \Data_pad[5]/U0/NET1 ), .EOUT(\Data_pad[5]/U0/NET2 ), .Y(
        \Data_in[5] ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_3_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[11]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[11]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[11]_net_1 )
        , .Y(\ADC_TOP_0_dataout[11] ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[14]  (.A(\trans_m7_0/N_390 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[14] ));
    OR2 \cmd_decoder_0/sample_counter_RNIPIHI[3]  (.A(
        \cmd_decoder_0/sample_counter[17]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[3]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_7 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[3]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[3]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[17]  (.A(
        \trans_m5m7_0/N_361 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[17] ));
    NOR2B \cmd_decoder_0/headreg_RNO[1]  (.A(
        \cmd_decoder_0/headreg[0]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_41 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[1]  (.D(
        \trans_m5m7_0/bit_count_5[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[1]_net_1 ));
    IOTRI_OB_EB \adc_data2_test_pad/U0/U1  (.D(adc_data2_test_c), .E(
        VCC), .DOUT(\adc_data2_test_pad/U0/NET1 ), .EOUT(
        \adc_data2_test_pad/U0/NET2 ));
    DFN1E0C0 \trans_m2_0/counter[28]  (.D(\trans_m2_0/N_295 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[28]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[1]  (.D(\trans_m2_0/N_241 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[1]_net_1 ));
    IOPAD_IN \adc_din1_pad/U0/U0  (.PAD(adc_din1), .Y(
        \adc_din1_pad/U0/NET1 ));
    DFN0E0C0 \trans_m7_0/bit_count[11]  (.D(
        \trans_m7_0/bit_count_5[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[11]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[7]  (.A(
        \cmd_decoder_0/rst_counter[7]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[6]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_366 ));
    OR2 \cmd_decoder_0/sample_counter_RNI7LIQ[13]  (.A(
        \cmd_decoder_0/sample_counter[13]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[14]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_0 ));
    NOR2B \trans_m7_0/bit_count_RNIC9J9B[13]  (.A(
        \trans_m7_0/un1_bit_count_2_18 ), .B(
        \trans_m7_0/un1_bit_count_2_17 ), .Y(
        \trans_m7_0/un1_bit_count_2 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[27]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[27]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[26]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_403 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[12]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[12]/Y ));
    AO1A \trans_m2_0/m2_data_RNI22MH_0[14]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[14]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_353 ));
    NOR3A \cmd_decoder_0/state_RNIB15C1_0[4]  (.A(
        \cmd_decoder_0/N_553 ), .B(\cmd_decoder_0/state[5]_net_1 ), .C(
        \cmd_decoder_0/state[4]_net_1 ), .Y(\cmd_decoder_0/N_756 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[16]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[15]_net_1 ), .C(\trans_m2_0/N_339 ), 
        .Y(\trans_m2_0/N_93 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[15]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[15]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[7] ));
    OR2 \cmd_decoder_0/sample_counter_RNI16GA[1]  (.A(
        \cmd_decoder_0/sample_counter[1]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[2]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_1 ));
    NOR3A \trans_m5m7_0/bit_count_RNIM7J21[31]  (.A(
        \trans_m5m7_0/rden55_net_1 ), .B(
        \trans_m5m7_0/bit_count[31]_net_1 ), .C(
        \trans_m5m7_0/bit_count[12]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_9 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3]/Y ));
    NOR3C \trans_m2_0/state_RNI1AGCA[1]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_36 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_37 ), .C(
        \trans_m2_0/N_322 ), .Y(\trans_m2_0/N_464 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[3]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[2]_net_1 ), .C(\trans_m2_0/N_325 ), 
        .Y(\trans_m2_0/N_9 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[26]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[13]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[26] )
        );
    OA1C \trans_m2_0/shift_reg_bzo_RNO[2]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[1]_net_1 ), .C(\trans_m2_0/N_325 ), 
        .Y(\trans_m2_0/N_15 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[3]  (.D(
        \edib_ctrl_reg_0/N_47 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[3]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[23]  (.D(\trans_m2_0/N_159 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[23]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[16]  (.D(
        \cmd_decoder_0/sample_counter[15]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[16]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[25]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[25]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[19]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_378 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[19]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[6]  (.D(\trans_m2_0/N_23 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[6]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[3]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[3]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[6]  (.A(\trans_m7_0/N_350 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[6] ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[5]  (.D(
        \cmd_decoder_0_rcvd_datareg[5] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[5]_net_1 ));
    NOR3C \trans_m2_0/counter_RNIET9F1[10]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_5 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_4 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_23 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_31 ));
    DFN1C0 \address_encoder_0/m2_wr_reg_en/U1  (.D(
        \address_encoder_0/m2_wr_reg_en/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_1), .Q(address_encoder_0_m2_wr_reg_en));
    OA1 \trans_m2_0/counter_RNO[5]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[4]_net_1 ), .Y(\trans_m2_0/N_249 ));
    DFN1E1P0 \cmd_decoder_0/sample_counter[0]  (.D(
        \cmd_decoder_0/clr_sample_counter ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[0]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[21]  (.A(
        \cmd_decoder_0/rst_counter[21]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[20]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_380 ));
    DFN1E0C0 \cmd_decoder_0/headreg[5]  (.D(\cmd_decoder_0/N_33 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[5]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[4]  (.D(\trans_m2_0/N_19 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[4]_net_1 ));
    NOR2B \cmd_decoder_0/headreg_RNI1JKH_0[2]  (.A(
        \cmd_decoder_0/headreg[3]_net_1 ), .B(
        \cmd_decoder_0/headreg[2]_net_1 ), .Y(\cmd_decoder_0/N_514 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[17]  (.D(
        \cmd_decoder_0/sample_counter[16]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[17]_net_1 ));
    NOR2 \trans_m7_0/bit_count_RNIPRCT[23]  (.A(
        \trans_m7_0/bit_count[23]_net_1 ), .B(
        \trans_m7_0/bit_count[24]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_28_2 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[25]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[25]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[24]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_369 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[15]  (.D(
        \edib_ctrl_reg_0/N_7 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[15]_net_1 ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[6]  (.A(
        \address_encoder_0/m2start_pulse_counter[5] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[6] ));
    DFN1E1C0 \trans_m5m7_0/q5[12]  (.D(\tri_state_ctrl_0_Dout[12] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[12]_net_1 ));
    IOPAD_TRI \m2_boo_pad/U0/U0  (.D(\m2_boo_pad/U0/NET1 ), .E(
        \m2_boo_pad/U0/NET2 ), .PAD(m2_boo));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[2]  (.D(\trans_m2_0/N_15 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[2]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[1]  (.D(
        \cmd_decoder_0/rcv_shftreg[5]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[1] ));
    IOTRI_OB_EB \adc_fsync_test_pad/U0/U1  (.D(adc_fsync_out_c_c), .E(
        VCC), .DOUT(\adc_fsync_test_pad/U0/NET1 ), .EOUT(
        \adc_fsync_test_pad/U0/NET2 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[30]  (.A(
        \cmd_decoder_0/rst_counter[30]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[29]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_389 ));
    MX2 \address_encoder_0/rcvd_datareg_en/U0  (.A(
        address_encoder_0_rcvd_datareg_en), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_27 ), .Y(
        \address_encoder_0/rcvd_datareg_en/Y ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[8]  (.D(\cmd_decoder_0/N_429 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[8]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[2]/Y ));
    DFN1 \cmd_decoder_0/rst_counter[24]  (.D(
        \cmd_decoder_0/rst_counter_RNO[24]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[24]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIS5781[0]  (.A(
        \trans_m2_0/m2_data[0]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_324 ));
    NOR2 \trans_m5m7_0/bit_count_RNIT3HN[23]  (.A(
        \trans_m5m7_0/bit_count[23]_net_1 ), .B(
        \trans_m5m7_0/bit_count[24]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_28_2 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[2]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[1]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[2] ));
    DFN0P0 \trans_m7_0/m7_t_mc_shiftreg[31]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .Q(m7_boo_c));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7]/Y ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[27]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[27]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[23]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[23]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[15] ));
    OR2 \cmd_decoder_0/rst_counter_RNITI8[25]  (.A(
        \cmd_decoder_0/rst_counter[28]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[25]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_13 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[20]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[19]_net_1 ), .C(\trans_m2_0/N_342 ), 
        .Y(\trans_m2_0/N_104 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[33]  (.A(
        \cmd_decoder_0/rcv_shftreg[29]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[32]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_1268 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[32]  (.D(\cmd_decoder_0/N_168 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[32]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[22]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[22]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[11]  (.A(\trans_m7_0/N_387 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[11] ));
    AO1A \address_encoder_0/m2_sendone_rd_en_RNO  (.A(
        \address_encoder_0/N_72 ), .B(
        \address_encoder_0/m2_sendone_rd_en_0_sqmuxa_i_a2_0 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_39 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[23]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[22]_net_1 ), .C(\trans_m2_0/N_344 ), 
        .Y(\trans_m2_0/N_159 ));
    IOBI_IB_OB_EB \Data_pad[15]/U0/U1  (.D(\MUX2_0_Result[15] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[15]/U0/NET3 ), 
        .DOUT(\Data_pad[15]/U0/NET1 ), .EOUT(\Data_pad[15]/U0/NET2 ), 
        .Y(\Data_in[15] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[8]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[8]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[0] ));
    MX2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[6]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n6 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[6]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[26]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[26]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[25]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_370 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[22]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[14] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[13] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[22]/Y ));
    IOTRI_OB_EB \pt_MUX1_pad[0]/U0/U1  (.D(\pt_MUX1_c_c[0] ), .E(VCC), 
        .DOUT(\pt_MUX1_pad[0]/U0/NET1 ), .EOUT(
        \pt_MUX1_pad[0]/U0/NET2 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[25]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[24]_net_1 ), .C(\trans_m2_0/N_347 ), 
        .Y(\trans_m2_0/N_155 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[8]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[7]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[8]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_352 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[8]  (.A(
        \trans_m5m7_0/N_352 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[8] ));
    NOR2 \cmd_decoder_0/bit_counter_RNIRP1Q[1]  (.A(
        \cmd_decoder_0/bit_counter[1]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[2]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a2_0_0[5] ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_5_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[9]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[9]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[9]_net_1 )
        , .Y(\ADC_TOP_0_dataout[9] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[24]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[24]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[26]  (.D(\trans_m2_0/N_291 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[26]_net_1 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[2]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_11_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[2]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[7]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[7]_net_1 ));
    NOR3C \cmd_decoder_0/bit_counter_RNII5H13[28]  (.A(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_2 ), .B(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_1 ), .C(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_3 ), .Y(
        \cmd_decoder_0/N_541 ));
    DFN1E1C0 \trans_m5m7_0/q5[3]  (.D(\tri_state_ctrl_0_Dout[3] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[3]_net_1 ));
    IOBI_IB_OB_EB \Data_pad[12]/U0/U1  (.D(\MUX2_0_Result[12] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[12]/U0/NET3 ), 
        .DOUT(\Data_pad[12]/U0/NET1 ), .EOUT(\Data_pad[12]/U0/NET2 ), 
        .Y(\Data_in[12] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[24]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[23]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_184 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[12]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[12] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[12]_net_1 )
        );
    NOR2A \trans_m5m7_0/bit_count_RNO[24]  (.A(
        \trans_m5m7_0/bit_count[23]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[24] ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[9]  (.A(\trans_m7_0/N_353 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[9] ));
    OA1 \trans_m2_0/counter_RNO[25]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[24]_net_1 ), .Y(\trans_m2_0/N_289 ));
    NOR2A \trans_m7_0/bit_count_RNO[30]  (.A(
        \trans_m7_0/bit_count[29]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[30] ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[27]  (.D(\cmd_decoder_0/N_178 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[27]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[26]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[25]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[26]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_370 ));
    NOR3A \cmd_decoder_0/sample_counter_RNINM492[9]  (.A(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0_0 ), .B(
        \cmd_decoder_0/N_288 ), .C(\cmd_decoder_0/N_259 ), .Y(
        \cmd_decoder_0/N_491 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[8]  (.A(
        \cmd_decoder_0/rst_counter[8]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[7]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_367 ));
    NOR2B \address_encoder_0/m2_wr_reg_en_RNO_0  (.A(
        \dsp_address_c[2] ), .B(\dsp_address_c[0] ), .Y(
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[12]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[11]_net_1 ), .C(\trans_m2_0/N_335 ), 
        .Y(\trans_m2_0/N_52 ));
    DFN1C0 \trans_m2_0/state_2[1]  (.D(\trans_m2_0/N_321 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m2_0/state_2[1]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[9]  (.D(\tri_state_ctrl_0_Dout[9] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[9]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[6]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[5]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_382 ));
    DFN1E0C0 \trans_m2_0/counter[19]  (.D(\trans_m2_0/N_277 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[19]_net_1 ));
    NOR3C \trans_m5m7_0/bit_count_RNIEGVP2[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_14 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_13 ), .C(
        \trans_m5m7_0/m5_t_mc_reg104_16 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_19 ));
    XOR2 \trans_m2_0/m2_check_RNO_4  (.A(\tri_state_ctrl_0_Dout[12] ), 
        .B(\tri_state_ctrl_0_Dout[13] ), .Y(
        \trans_m2_0/un3_m2_check_5 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[10]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[5]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[10] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[19]  (.A(
        \trans_m7_0/m7_t_mc_reg[19]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[18]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_363 ));
    NOR2A \tri_state_ctrl_0/Dout_1_7  (.A(\Data_in[7] ), .B(DSP_XRW_c), 
        .Y(\tri_state_ctrl_0_Dout[7] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[17]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_376 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[17]_net_1 ));
    OR2 \cmd_decoder_0/rcv_shftreg_RNIHACA[33]  (.A(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_1_1[0] ), .B(
        \cmd_decoder_0/N_277 ), .Y(\cmd_decoder_0/N_285 ));
    AO1D \trans_m2_0/m2_data_RNI00MH[12]  (.A(
        \trans_m2_0/m2_data[12]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_348 ));
    MX2C \trans_m2_0/shift_reg_bzo_RNO_0[1]  (.A(
        \trans_m2_0/m2_check_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[0]_net_1 ), .S(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_388 ));
    DFN1 \cmd_decoder_0/rst_counter[32]  (.D(
        \cmd_decoder_0/rst_counter_RNO[32]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[32]_net_1 ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[4]  (.A(
        \address_encoder_0/m2start_pulse_counter[3] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[4] ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[21]  (.A(
        \trans_m5m7_0/N_365 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[21] ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[12]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[12]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_13 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[4]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[4]_net_1 ));
    NOR3A \cmd_decoder_0/state_RNO_15[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[33]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[3]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_4[5] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[5]  (.D(
        \trans_m5m7_0/bit_count_5[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[5]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[13]  (.A(\trans_m7_0/N_389 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[13] ));
    NOR2 \trans_m7_0/bit_count_RNIT4M7[7]  (.A(
        \trans_m7_0/bit_count[7]_net_1 ), .B(
        \trans_m7_0/bit_count[8]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_7 ));
    IOBI_IB_OB_EB \Data_pad[3]/U0/U1  (.D(\MUX2_0_Result[3] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[3]/U0/NET3 ), .DOUT(
        \Data_pad[3]/U0/NET1 ), .EOUT(\Data_pad[3]/U0/NET2 ), .Y(
        \Data_in[3] ));
    OR3C \cmd_decoder_0/rcv_shftreg_RNI70F4[33]  (.A(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[33]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_1_1[0] ));
    OR2A \cmd_decoder_0/headreg_RNIDCKS4[0]  (.A(\cmd_decoder_0/N_279 )
        , .B(\cmd_decoder_0/N_551 ), .Y(\cmd_decoder_0/N_399 ));
    AO1 \address_encoder_0/m2_send_en_RNO  (.A(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_2 ), .B(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_1 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_41 ));
    NOR3A \address_encoder_0/m7_send_en_2_i_a2_1  (.A(
        \dsp_address_c[3] ), .B(\dsp_address_c[4] ), .C(
        \dsp_address_c[0] ), .Y(\address_encoder_0/N_108 ));
    NOR2 \trans_m5m7_0/rden55_RNI4A6S_2  (.A(
        \trans_m5m7_0/rden55_net_1 ), .B(\trans_m5m7_0/N_520 ), .Y(
        \trans_m5m7_0/N_525 ));
    XNOR3 \trans_m2_0/m2_check_RNO  (.A(\trans_m2_0/un3_m2_check_11 ), 
        .B(\trans_m2_0/un3_m2_check_10 ), .C(
        \trans_m2_0/un3_m2_check_12 ), .Y(\trans_m2_0/un3_m2_check ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNITMG8[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_11_i ));
    MX2 \address_encoder_0/m2start_pulse_counter[1]/U0  (.A(
        \address_encoder_0/N_24 ), .B(
        \address_encoder_0/m2start_pulse_counter[1] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[1]/Y ));
    AO1B \trans_m7_0/bit_count_RNIRH4EB[1]  (.A(
        \trans_m7_0/m7_t_mc_reg104_19 ), .B(
        \trans_m7_0/m7_t_mc_reg104_18 ), .C(m7_send_en_TEST_0), .Y(
        \trans_m7_0/un1_m7_t_mc_reg103 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[5]  (.D(\trans_m2_0/N_13 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[5]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[29]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[28]_net_1 ), .Y(\trans_m2_0/N_297 ));
    OR2 \cmd_decoder_0/state_RNIAL2M_1[9]  (.A(
        \cmd_decoder_0/state[9]_net_1 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .Y(\cmd_decoder_0/N_259_0 ));
    NOR2 \trans_m5m7_0/bit_count_RNI19M1[7]  (.A(
        \trans_m5m7_0/bit_count[7]_net_1 ), .B(
        \trans_m5m7_0/bit_count[8]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_5 ));
    MX2A \address_encoder_0/m5_send_en_0_RNIGQGF7  (.A(
        \dsp_address_c[0] ), .B(address_encoder_0_m5_send_en_0), .S(
        \address_encoder_0/N_76 ), .Y(\address_encoder_0/N_14 ));
    IOPAD_TRI \adc_data2_test_pad/U0/U0  (.D(
        \adc_data2_test_pad/U0/NET1 ), .E(\adc_data2_test_pad/U0/NET2 )
        , .PAD(adc_data2_test));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[22]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[11]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[22] )
        );
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[7]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[7]_net_1 ));
    BUFF INBUF_0_RNI3ULF (.A(adc_rstn_test), .Y(adc_rstn_test_1));
    DFN1E0C0 \trans_m2_0/counter[15]  (.D(\trans_m2_0/N_269 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[15]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[17]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[16]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_198 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[14]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[14]/Y ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[7]  (.D(\trans_m2_0/N_33 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[7]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[21]  (.D(\cmd_decoder_0/N_442 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ));
    NOR2 \cmd_decoder_0/state_ii_RNO_4[0]  (.A(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .B(
        cmd_decoder_0_m2rxirqb), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_a3_0_0[0] ));
    AO1D \trans_m2_0/m2_data_RNI11MH[13]  (.A(
        \trans_m2_0/m2_data[13]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_350 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[5]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[5]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[8]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[8]_net_1 ));
    OA1B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI7LIP[5]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_54 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/i4_mux ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_56_mux ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1] ), .B(adc_data2_test_c)
        , .S(\ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1]/Y ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[9]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[9]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_19 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[18]  (.D(
        \cmd_decoder_0/sample_counter[17]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[18]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[33]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_392 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[33]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7]/Y ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[20]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[20]_net_1 ));
    DFN1 \edib_m5m7_clkgen_0/counter[4]  (.D(
        \edib_m5m7_clkgen_0/N_14_i ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/counter[4]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[24]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[23]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[24]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_368 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[23]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[23]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[11]  (.A(
        \trans_m5m7_0/bit_count[10]_net_1 ), .B(\trans_m5m7_0/shift_0 )
        , .Y(\trans_m5m7_0/bit_count_5[11] ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[2]  (.D(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[2] ));
    OR2 \cmd_decoder_0/rst_counter_RNIQE7[19]  (.A(
        \cmd_decoder_0/rst_counter[22]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[19]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_16 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI7BQR[25]  (.A(
        \cmd_decoder_0/bit_counter[25]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[26]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_1[5] ));
    DFN1 \cmd_decoder_0/rst_counter[7]  (.D(
        \cmd_decoder_0/rst_counter_RNO[7]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[7]_net_1 ));
    IOPAD_IN \dsp_address_pad[6]/U0/U0  (.PAD(dsp_address[6]), .Y(
        \dsp_address_pad[6]/U0/NET1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[14]  (.D(\cmd_decoder_0/N_435 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[14]_net_1 ));
    OR2A \trans_m7_0/state_RNIGIIOC_2[0]  (.A(\trans_m7_0/N_520 ), .B(
        \trans_m7_0/N_522 ), .Y(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[15]  (.A(
        \trans_m5m7_0/q5[7]_net_1 ), .B(address_encoder_0_m5_send_en_0)
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[15] ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[30]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[15]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[30] )
        );
    OR3A \cmd_decoder_0/rst_counter_RNIISF[34]  (.A(
        \cmd_decoder_0/rst_counter[34]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[20]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_1 ), .Y(\cmd_decoder_0/m33_0_o2_17 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[10]  (.A(
        \cmd_decoder_0/rst_counter[10]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[9]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_369 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[17]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[17]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[13]  (.D(
        \trans_m5m7_0/bit_count_5[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[13]_net_1 )
        );
    DFN1E0C0 \trans_m2_0/shift_reg_boo[11]  (.D(\trans_m2_0/N_42 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[11]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[6]  (.D(\tri_state_ctrl_0_Dout[6] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[6]_net_1 ));
    CLKINT \edib_m5m7_clkgen_0/clk_m5m7_RNI8FT6  (.A(
        \edib_m5m7_clkgen_0/clk_m5m7_i ), .Y(
        edib_m5m7_clkgen_0_clk_m5m7));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[12]  (.A(\trans_m7_0/N_356 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[12] ));
    DFN1 \cmd_decoder_0/rst_counter[4]  (.D(
        \cmd_decoder_0/rst_counter_RNO[4]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[4]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[1]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[1] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[1]_net_1 )
        );
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[12]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[12]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[11]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_370 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[11]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[7]  (.A(
        \trans_m7_0/bit_count[6]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[7] ));
    AO1A \trans_m2_0/m2_data_RNIT6781_0[1]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[1]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_327 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[19]  (.D(
        \cmd_decoder_0/sample_counter[18]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[19]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[28]  (.D(\cmd_decoder_0/N_176 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[28]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[29]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[28]_net_1 ), .C(\trans_m2_0/N_351 ), 
        .Y(\trans_m2_0/N_171 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[13]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[13] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[13]_net_1 )
        );
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[16]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[16]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[9]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[9]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[8]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_353 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[30]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[30]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[24]  (.D(\trans_m2_0/N_152 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[24]_net_1 ));
    OR2B \cmd_decoder_0/state_RNIOOLC[0]  (.A(
        \cmd_decoder_0/state[0]_net_1 ), .B(
        \cmd_decoder_0/md2udireg_net_1 ), .Y(\cmd_decoder_0/N_323 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[2]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[2] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[2]_net_1 )
        );
    DFN1C0 \address_encoder_0/m7_send_en/U1  (.D(
        \address_encoder_0/m7_send_en/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_1), .Q(m7_send_en_TEST));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[9]  (.A(
        \cmd_decoder_0/rcv_shftreg[5]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[8]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_430 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[27]  (.A(
        \trans_m7_0/q7[13]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[27] ));
    AO1A \trans_m2_0/state_RNIB8SSA[1]  (.A(
        \trans_m2_0/state[1]_net_1 ), .B(\trans_m2_0/N_704 ), .C(
        \trans_m2_0/N_465 ), .Y(\trans_m2_0/N_321 ));
    NOR3A \trans_m7_0/bit_count_RNIKS051[13]  (.A(
        \trans_m7_0/m7_t_mc_reg104_7 ), .B(
        \trans_m7_0/bit_count[13]_net_1 ), .C(
        \trans_m7_0/bit_count[14]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_11 ));
    IOPAD_IN \INBUF_1/U0/U0  (.PAD(DSP_XRD), .Y(\INBUF_1/U0/NET1 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[24]  (.A(
        \trans_m5m7_0/N_400 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[24] ));
    OR3 \cmd_decoder_0/sample_counter_RNI212T[7]  (.A(
        \cmd_decoder_0/sample_counter[8]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[7]_net_1 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_3 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_12 ));
    NOR2A \trans_m7_0/q75  (.A(address_encoder_0_m7_sendata_reg_wren), 
        .B(DSP_XWE_c), .Y(\trans_m7_0/q75_net_1 ));
    AO1A \address_encoder_0/m5_loadone_reg_rden_RNO  (.A(
        \address_encoder_0/N_72 ), .B(
        \address_encoder_0/m5_loadone_reg_rden_0_sqmuxa_i_a2_0 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_35 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[29]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[28]_net_1 ), .C(\trans_m2_0/N_350 ), 
        .Y(\trans_m2_0/N_179 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_31 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[0]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[15]  (.D(\trans_m2_0/N_74 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[15]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[28]  (.D(
        \cmd_decoder_0/rst_counter_RNO[28]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[28]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIUTLH[10]  (.A(
        \trans_m2_0/m2_data[10]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_344 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[14]  (.A(\trans_m7_0/N_358 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[14] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[14]  (.A(
        \trans_m5m7_0/N_358 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[14] ));
    IOBI_IB_OB_EB \Data_pad[13]/U0/U1  (.D(\MUX2_0_Result[13] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[13]/U0/NET3 ), 
        .DOUT(\Data_pad[13]/U0/NET1 ), .EOUT(\Data_pad[13]/U0/NET2 ), 
        .Y(\Data_in[13] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[28]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_387 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[28]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[10]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[10]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[2] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[28]  (.D(\trans_m2_0/N_177 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[28]_net_1 ));
    OA1 \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNIDUGJ[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_i_0[1] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ));
    NOR2A \tri_state_ctrl_0/Dout_1_2  (.A(\Data_in[12] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[12] ));
    OR2 \address_encoder_0/rcvd_datareg_en_0_sqmuxa_i_o2  (.A(
        \dsp_address_c[4] ), .B(\dsp_address_c[3] ), .Y(
        \address_encoder_0/N_63 ));
    MX2 \MUX2_0/MX2_Result[8]  (.A(\edib_ctrl_reg_0_dsp_data_out[8] ), 
        .B(\ADC_TOP_0_dataout[8] ), .S(\MUX2_0/SelAux_0[6] ), .Y(
        \MUX2_0_Result[8] ));
    IOTRI_OB_EB \tst_state_pad[1]/U0/U1  (.D(\tst_state_c[1] ), .E(VCC)
        , .DOUT(\tst_state_pad[1]/U0/NET1 ), .EOUT(
        \tst_state_pad[1]/U0/NET2 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[12]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[12]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[15]  (.A(\trans_m7_0/N_391 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[15] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[7]  (.D(
        \cmd_decoder_0/sample_counter[6]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[7]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[9]  (.A(
        \trans_m5m7_0/N_353 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[9] ));
    OR2A \cmd_decoder_0/rst_counter_RNIFNSD[0]  (.A(
        \cmd_decoder_0/state_iii[0]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[0]_net_1 ), .Y(
        \cmd_decoder_0/state_iii_nss[0] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[1]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[1]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[7]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[6]_net_1 ), .C(\trans_m2_0/N_328 ), 
        .Y(\trans_m2_0/N_33 ));
    AO1A \cmd_decoder_0/state_RNO[3]  (.A(\cmd_decoder_0/N_546 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .C(\cmd_decoder_0/N_551 ), .Y(
        \cmd_decoder_0/N_72 ));
    DFN0C0 \trans_m5m7_0/state[0]  (.D(
        \trans_m5m7_0/state_RNO_0[0]_net_1 ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/state[0]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[13]  (.A(
        \trans_m7_0/q7[6]_net_1 ), .B(m7_send_en_TEST_0), .Y(
        \trans_m7_0/m7_t_mc_reg_19[13] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[14]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[14]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIT6781[1]  (.A(
        \trans_m2_0/m2_data[1]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_326 ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[7]  (.A(
        \address_encoder_0/m2start_pulse_counter[6] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[7] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[11]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[11]_net_1 ));
    NOR2A \cmd_decoder_0/state_RNIVV311[6]  (.A(
        \cmd_decoder_0/state_i_0[6] ), .B(\cmd_decoder_0/N_259 ), .Y(
        \cmd_decoder_0/un1_state_8_0_0_a3_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[5]  (.A(\trans_m7_0/q7[2]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/m7_t_mc_reg_19[5] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[21]  (.D(\trans_m2_0/N_114 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[21]_net_1 ));
    DFN1 \edib_mode2_clkgen_0/counter1[1]  (.D(
        \edib_mode2_clkgen_0/I_5_0 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[22]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[21]_net_1 ), .Y(\trans_m2_0/N_283 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[30]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[15]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[30] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[1]  (.D(
        \cmd_decoder_0/sample_counter[0]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[1]_net_1 ));
    NOR3A \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out_RNO_0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/m7_0 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m50_3 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[26]  (.A(\trans_m7_0/N_370 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[26] ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[1]  (.A(\trans_m7_0/q7[0]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/m7_t_mc_reg_19[1] ));
    DFN1 \edib_mode2_clkgen_0/counter1[6]  (.D(
        \edib_mode2_clkgen_0/counter1_3[6] ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[6]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[12]  (.A(
        \trans_m5m7_0/bit_count[11]_net_1 ), .B(\trans_m5m7_0/shift_0 )
        , .Y(\trans_m5m7_0/bit_count_5[12] ));
    NOR2 \trans_m5m7_0/bit_count_RNI18HN[25]  (.A(
        \trans_m5m7_0/bit_count[25]_net_1 ), .B(
        \trans_m5m7_0/bit_count[26]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_28_3 ));
    NOR3A \trans_m5m7_0/bit_count_RNIDR8E[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_7 ), .B(
        \trans_m5m7_0/bit_count[9]_net_1 ), .C(
        \trans_m5m7_0/bit_count[6]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_13 ));
    NOR2A \address_encoder_0/clr_m7_loadone_flag_0_sqmuxa_i_a2_1  (.A(
        \dsp_address_c[1] ), .B(\address_encoder_0/N_62 ), .Y(
        \address_encoder_0/N_101_1 ));
    NOR3A \cmd_decoder_0/headreg_RNIFPQJ2[0]  (.A(
        \cmd_decoder_0/N_288 ), .B(\cmd_decoder_0/N_262 ), .C(
        \cmd_decoder_0/N_271 ), .Y(\cmd_decoder_0/N_551 ));
    NOR2B \address_encoder_0/m5_loadone_reg_rden_RNO_0  (.A(
        \address_encoder_0/N_106 ), .B(\dsp_address_c[0] ), .Y(
        \address_encoder_0/m5_loadone_reg_rden_0_sqmuxa_i_a2_0 ));
    NOR3A \trans_m2_0/state_2_RNIAUBG_0[1]  (.A(\state_RNISNSU1_0[0] ), 
        .B(\trans_m2_0/state[0]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_466 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[30]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[29]_net_1 ), .C(\trans_m2_0/N_353 ), 
        .Y(\trans_m2_0/N_189 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[8]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[8]_net_1 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[30]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[29]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[30]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_406 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[10]  (.D(
        \trans_m5m7_0/bit_count_5[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[10]_net_1 )
        );
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[16]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[16]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[15]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_392 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[7]  (.D(
        \edib_ctrl_reg_0/N_39 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[7]_net_1 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[21]  (.A(\trans_m7_0/N_365 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[21] ));
    DFN1E0C0 \trans_m2_0/counter[12]  (.D(\trans_m2_0/N_263 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[12]_net_1 ));
    OR2A \trans_m5m7_0/state_RNO_1[1]  (.A(
        \trans_m5m7_0/un1_bit_count_2 ), .B(
        address_encoder_0_m5_send_en_0), .Y(
        \trans_m5m7_0/state_ns_0_0_tz[1] ));
    IOIN_IB \CLKA_pad/U0/U1  (.YIN(\CLKA_pad/U0/NET1 ), .Y(CLKA_c));
    DFN1E0P0 \trans_m2_0/shift_reg_bzo[39]  (.D(
        \trans_m2_0/shift_reg_bzo_6[39] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(m2_bzo_c));
    AO1A \address_encoder_0/clr_m5_loadone_flag_RNO  (.A(
        \address_encoder_0/N_66 ), .B(\address_encoder_0/N_108 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_45 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO_0[6]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_15_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n6 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7] ));
    OR3 \cmd_decoder_0/int_counter_RNIAL6Q[1]  (.A(
        \cmd_decoder_0/int_counter[1]_net_1 ), .B(
        \cmd_decoder_0/int_counter[4]_net_1 ), .C(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_2[0] ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_5[0] ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[24]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[23]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[24]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_400 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[15]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[15]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[15]_net_1 )
        , .Y(\ADC_TOP_0_dataout[15] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[23]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[23]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[15] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[16]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_375 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[16]_net_1 ));
    NOR3A \trans_m5m7_0/bit_count_RNIQ3UE1[15]  (.A(
        \trans_m5m7_0/un1_bit_count_2_2 ), .B(
        \trans_m5m7_0/bit_count[15]_net_1 ), .C(
        \trans_m5m7_0/bit_count[16]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_10 ));
    NOR2A \trans_m7_0/bit_count_RNO[3]  (.A(
        \trans_m7_0/bit_count[2]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[3] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[27]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[26]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[27]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_371 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[8]  (.A(
        \cmd_decoder_0/rcv_shftreg[4]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_429 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[28]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[27]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_176 ));
    NOR2 \trans_m2_0/counter_RNI5NOB[16]  (.A(
        \trans_m2_0/counter[16]_net_1 ), .B(
        \trans_m2_0/counter[17]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_12 ));
    AO1A \trans_m2_0/m2_data_RNILCGT_0[8]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[8]_net_1 )
        , .C(\trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_341 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[25]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[25]_net_1 ));
    OR3 \address_encoder_0/m5_send_en_2_i_o3  (.A(
        \address_encoder_0/N_59 ), .B(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_net_1 ), .C(
        \address_encoder_0/N_72 ), .Y(\address_encoder_0/N_76 ));
    NOR2B \cmd_decoder_0/state_RNI0DR48[1]  (.A(\cmd_decoder_0/N_263 ), 
        .B(\cmd_decoder_0/N_552 ), .Y(\cmd_decoder_0/N_506 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[25]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[25]_net_1 ));
    OR3 \cmd_decoder_0/sample_counter_RNIQROE7_0[23]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_18 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_19 ), .C(
        \cmd_decoder_0/N_1057_i_0_o3_0 ), .Y(\cmd_decoder_0/N_352 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_347 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3]/Y ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[34]  (.D(\cmd_decoder_0/N_164 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(bit35_c));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[12]  (.A(\trans_m7_0/N_388 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[12] ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[13]  (.D(
        \cmd_decoder_0/N_1256 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[1]  (.A(
        \cmd_decoder_0/rst_counter[1]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[0]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_360 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[4]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[3]_net_1 ), .C(\trans_m2_0/N_326 ), 
        .Y(\trans_m2_0/N_11 ));
    OR2B \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_i_0[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNO[1]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4]/Y ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test_0), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4] ));
    OA1 \trans_m2_0/counter_RNO[16]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[15]_net_1 ), .Y(\trans_m2_0/N_271 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[9]  (.D(
        \cmd_decoder_0/sample_counter[8]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[9]_net_1 ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI3HIP[5]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_14_i ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_15_i ));
    AOI1B \tri_state_ctrl_0/Data_1  (.A(xzcs0and1_c), .B(DSP_XZCS2_c), 
        .C(DSP_XRW_c), .Y(\tri_state_ctrl_0.Data_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[5]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_364 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[5]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[0]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[0]_net_1 ));
    IOPAD_IN \dsp_address_pad[18]/U0/U0  (.PAD(dsp_address[18]), .Y(
        \dsp_address_pad[18]/U0/NET1 ));
    DFN1 \edib_mode2_clkgen_0/counter1[4]  (.D(
        \edib_mode2_clkgen_0/I_12_0 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[4]_net_1 ));
    OR2 \cmd_decoder_0/rst_counter_RNIL86[13]  (.A(
        \cmd_decoder_0/rst_counter[13]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[14]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_3 ));
    MX2B \cmd_decoder_0/int_counter_RNO[0]  (.A(
        \cmd_decoder_0/int_counter[0]_net_1 ), .B(
        \cmd_decoder_0/N_1255 ), .S(cmd_decoder_0_m2rxirqb), .Y(
        \cmd_decoder_0/int_counter_RNO[0]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[2]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[1]_net_1 ), .Y(\trans_m2_0/N_243 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[29]  (.D(\trans_m2_0/N_171 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[29]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[23]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[22]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[23]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_367 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[29]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[29]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[28]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_405 ));
    AO1A \cmd_decoder_0/state_RNIHTF1D_0[9]  (.A(
        \cmd_decoder_0/N_352_0 ), .B(\cmd_decoder_0/N_259_0 ), .C(
        \cmd_decoder_0/N_399 ), .Y(\cmd_decoder_0/N_230 ));
    DFN1 \edib_m2m5m7_clkgen_0/counter[0]  (.D(
        \edib_m2m5m7_clkgen_0/I_4 ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ));
    OR2 \cmd_decoder_0/headreg_RNI94FQ[6]  (.A(\cmd_decoder_0/N_264 ), 
        .B(\cmd_decoder_0/headreg[6]_net_1 ), .Y(\cmd_decoder_0/N_271 )
        );
    NOR3B \edib_ctrl_reg_0/databuffer_RNIDOCG1[10]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[10]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[10] )
        );
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[23]  (.A(
        \trans_m5m7_0/q5[11]_net_1 ), .B(
        address_encoder_0_m5_send_en_0), .Y(
        \trans_m5m7_0/m5_t_mc_reg_19[23] ));
    IOPAD_TRI \adc_clk_20M_out_pad/U0/U0  (.D(
        \adc_clk_20M_out_pad/U0/NET1 ), .E(
        \adc_clk_20M_out_pad/U0/NET2 ), .PAD(adc_clk_20M_out));
    OR3A \address_encoder_0/edib_interface_rst_RNO_0  (.A(
        \dsp_address_c[1] ), .B(\address_encoder_0/N_63 ), .C(
        \address_encoder_0/N_62 ), .Y(\address_encoder_0/N_77 ));
    IOPAD_BI \Data_pad[8]/U0/U0  (.D(\Data_pad[8]/U0/NET1 ), .E(
        \Data_pad[8]/U0/NET2 ), .Y(\Data_pad[8]/U0/NET3 ), .PAD(
        Data[8]));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[30]  (.A(
        \cmd_decoder_0/rcv_shftreg[26]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[29]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_1265 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[29]  (.A(\trans_m7_0/N_373 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[29] ));
    NOR3A \trans_m7_0/bit_count_RNI6LBF[1]  (.A(
        \trans_m7_0/m7_t_mc_reg104_5 ), .B(
        \trans_m7_0/bit_count[2]_net_1 ), .C(
        \trans_m7_0/bit_count[1]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_12 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[7]  (.D(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[7] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[10]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[10]/Y ));
    IOIN_IB \dsp_address_pad[13]/U0/U1  (.YIN(
        \dsp_address_pad[13]/U0/NET1 ), .Y(\dsp_address_c[13] ));
    NOR2 \trans_m7_0/bit_count_RNI8CGI[9]  (.A(
        \trans_m7_0/bit_count[9]_net_1 ), .B(
        \trans_m7_0/bit_count[10]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_8 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[5]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_14_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[5]_net_1 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI9ERR[29]  (.A(
        \cmd_decoder_0/bit_counter[29]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[33]_net_1 ), .Y(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[24]  (.A(\trans_m7_0/N_400 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[24] ));
    XOR2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_e0 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[13]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[13]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[5] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[10]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[10]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[2] ));
    MX2C \edib_ctrl_reg_0/m7_loadone_reg_RNI0B3K[0]  (.A(
        \edib_ctrl_reg_0/m7_loadone_reg[0]_net_1 ), .B(
        \edib_ctrl_reg_0/m5_loadone_reg[0]_net_1 ), .S(
        address_encoder_0_m5_loadone_reg_rden), .Y(
        \edib_ctrl_reg_0/N_55 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[11]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[11]_net_1 ));
    NOR2B \cmd_decoder_0/headreg_RNO[3]  (.A(
        \cmd_decoder_0/headreg[2]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_37 ));
    MX2 \address_encoder_0/edib_interface_rst/U0  (.A(
        \address_encoder_0/N_12 ), .B(
        \address_encoder_0/edib_interface_rst ), .S(xzcs0and1_c), .Y(
        \address_encoder_0/edib_interface_rst/Y ));
    NOR2A \trans_m5m7_0/state_RNO_0[1]  (.A(
        \trans_m5m7_0/state[1]_net_1 ), .B(
        \trans_m5m7_0/state[0]_net_1 ), .Y(
        \trans_m5m7_0/state_ns_0_0_0[1] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[11]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[11]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[3] ));
    BUFF \MUX2_0/BUFF_SelAux_0[11]  (.A(address_encoder_0_mux_ctrl), 
        .Y(\MUX2_0/SelAux_0[11] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[1]  (.A(
        \trans_m5m7_0/bit_count[0]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[1] ));
    NOR3A \trans_m2_0/state_2_RNIAUBG[1]  (.A(
        \trans_m2_0/state_2[1]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\state_RNISNSU1_0[0] ), .Y(\trans_m2_0/N_465 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[24]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[23]_net_1 ), .C(\trans_m2_0/N_347 ), 
        .Y(\trans_m2_0/N_161 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[17]  (.D(\trans_m2_0/N_68 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[17]_net_1 ));
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI2SG8[4]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m7_2 ));
    IOPAD_TRI \adc_clk_5M_test_pad/U0/U0  (.D(
        \adc_clk_5M_test_pad/U0/NET1 ), .E(
        \adc_clk_5M_test_pad/U0/NET2 ), .PAD(adc_clk_5M_test));
    MX2 \address_encoder_0/mux_ctrl/U0  (.A(\address_encoder_0/N_16 ), 
        .B(address_encoder_0_mux_ctrl), .S(xzcs0and1_c), .Y(
        \address_encoder_0/mux_ctrl/Y ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[32]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[31]_net_1 ), .C(\trans_m2_0/N_354 ), 
        .Y(\trans_m2_0/N_185 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[32]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[31]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_168 ));
    NOR3A \cmd_decoder_0/bit_counter_RNI5LVK1[0]  (.A(
        \cmd_decoder_0/state_ns_0_i_i_a2_0_0[5] ), .B(
        \cmd_decoder_0/bit_counter[20]_net_1 ), .C(
        \cmd_decoder_0/bit_counter[0]_net_1 ), .Y(
        \cmd_decoder_0/N_534 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[10]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[9]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_212 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[3]  (.D(\cmd_decoder_0/N_224 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[3]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[25]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[25]_net_1 ));
    NOR2B \trans_m2_0/counter_RNO[9]  (.A(
        \trans_m2_0/counter[8]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .Y(\trans_m2_0/N_257 ));
    NOR3B \edib_mode2_clkgen_0/counter1_RNI46MN[6]  (.A(
        \edib_mode2_clkgen_0/counter1[6]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .C(
        \edib_mode2_clkgen_0/counter1[5]_net_1 ), .Y(
        \edib_mode2_clkgen_0/counter113_3 ));
    DFN1E0C0 \trans_m2_0/counter[13]  (.D(\trans_m2_0/N_265 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[13]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[17]  (.A(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[16]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_438 ));
    DFN0E0C0 \trans_m7_0/bit_count[25]  (.D(
        \trans_m7_0/bit_count_5[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[25]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[4]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[3]_net_1 ), .Y(\trans_m2_0/N_247 ));
    DFN1 \cmd_decoder_0/rst_counter[15]  (.D(
        \cmd_decoder_0/rst_counter_RNO[15]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[15]_net_1 ));
    IOTRI_OB_EB \OUTBUF_0/U0/U1  (.D(cmd_decoder_0_m2rxirqb), .E(VCC), 
        .DOUT(\OUTBUF_0/U0/NET1 ), .EOUT(\OUTBUF_0/U0/NET2 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[3]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[3]_net_1 ));
    OA1C \cmd_decoder_0/md2udireg_RNIV0D4N  (.A(
        \cmd_decoder_0/md2udireg_net_1 ), .B(\cmd_decoder_0/N_259 ), 
        .C(\cmd_decoder_0/N_546 ), .Y(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0 ));
    DFN1E1C0 \trans_m7_0/q7[14]  (.D(\tri_state_ctrl_0_Dout[14] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[14]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_345 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1]/Y ));
    DFN0E0C0 \trans_m5m7_0/bit_count[3]  (.D(
        \trans_m5m7_0/bit_count_5[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[3]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[4]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[2]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[4] ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[15]  (.A(
        \trans_m7_0/q7[7]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[15] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[0]/U0  (.A(
        adc_data2_test_c), .B(adc_din2_c), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[0]/Y ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[5]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[5]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[4]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_349 ));
    BUFF \MUX2_0/BUFF_SelAux_0[6]  (.A(address_encoder_0_mux_ctrl), .Y(
        \MUX2_0/SelAux_0[6] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[2]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[2] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[2]_net_1 )
        );
    NOR3C \cmd_decoder_0/state_RNO_2[4]  (.A(\cmd_decoder_0/N_546 ), 
        .B(\cmd_decoder_0/state[3]_net_1 ), .C(\cmd_decoder_0/N_287 ), 
        .Y(\cmd_decoder_0/N_1282 ));
    IOPAD_IN \md2udi_pad/U0/U0  (.PAD(md2udi), .Y(\md2udi_pad/U0/NET1 )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .B(adc_en_test_c)
        , .S(\ADC_TOP_0/ads_trans_fsm_0/un1_dsp_adc_en_in ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg/Y ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[23]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[15] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[14] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[23]/Y ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[20]  (.A(
        address_encoder_0_m5_send_en_0), .B(
        \trans_m5m7_0/q5[10]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg_19[20] ));
    DFN1 \cmd_decoder_0/rst_counter[34]  (.D(
        \cmd_decoder_0/rst_counter_RNO[34]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[34]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[19]  (.A(
        \trans_m5m7_0/bit_count[18]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[19] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2] ));
    MX2 \MUX2_0/MX2_Result[3]  (.A(\edib_ctrl_reg_0_dsp_data_out[3] ), 
        .B(\ADC_TOP_0_dataout[3] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[3] ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[4]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[4]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_45 ));
    NOR3C \cmd_decoder_0/bit_counter_RNIK5MQ5[0]  (.A(
        \cmd_decoder_0/N_534 ), .B(\cmd_decoder_0/N_616_64_3 ), .C(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_0 ), .Y(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_3 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[12]  (.D(\trans_m2_0/N_44 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[12]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[14]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[14] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[14]_net_1 )
        );
    MX2 \cmd_decoder_0/rst_counter_RNO_0[23]  (.A(
        \cmd_decoder_0/rst_counter[23]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[22]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_382 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[2]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[2] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[2]_net_1 )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6]/Y ));
    NOR2A \trans_m5m7_0/bit_count_RNO[5]  (.A(
        \trans_m5m7_0/bit_count[4]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[5] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[10]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[9]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[10]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_354 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[16]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[16]_net_1 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[25]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[24]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[25]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_401 ));
    AO1 \address_encoder_0/m7_sendata_reg_wren_RNO  (.A(
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_1 ), .B(
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_0_net_1 ), 
        .C(xzcs0and1_c), .Y(\address_encoder_0/N_29 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[25]  (.D(\trans_m2_0/N_155 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[25]_net_1 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_12_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[3]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[16]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[8] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[16]/Y ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[23]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[23]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[15] ));
    IOBI_IB_OB_EB \Data_pad[2]/U0/U1  (.D(\MUX2_0_Result[2] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[2]/U0/NET3 ), .DOUT(
        \Data_pad[2]/U0/NET1 ), .EOUT(\Data_pad[2]/U0/NET2 ), .Y(
        \Data_in[2] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[36]  (.D(\trans_m2_0/N_55 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[36]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[21]  (.A(\trans_m7_0/N_397 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[21] ));
    DFN1C0 \cmd_decoder_0/state[8]  (.D(\cmd_decoder_0/N_242 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[8]_net_1 ));
    DFN1C0 \address_encoder_0/m2_sendone_rd_en/U1  (.D(
        \address_encoder_0/m2_sendone_rd_en/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_0), .Q(address_encoder_0_m2_sendone_rd_en));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_10_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[4]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[4]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[4]_net_1 )
        , .Y(\ADC_TOP_0_dataout[4] ));
    IOPAD_IN \DSP_XRW_pad/U0/U0  (.PAD(DSP_XRW), .Y(
        \DSP_XRW_pad/U0/NET1 ));
    DFN1E0C0 \trans_m2_0/counter[39]  (.D(\trans_m2_0/N_317 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[39]_net_1 ));
    IOIN_IB \dsp_address_pad[15]/U0/U1  (.YIN(
        \dsp_address_pad[15]/U0/NET1 ), .Y(\dsp_address_c[15] ));
    DFN1E1C0 \trans_m7_0/q7[6]  (.D(\tri_state_ctrl_0_Dout[6] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[6]_net_1 ));
    OR3 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_7  (.A(
        \dsp_address_c[10] ), .B(\dsp_address_c[12] ), .C(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_3_net_1 ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_7_net_1 ));
    AO1A \trans_m2_0/m2_data_RNIS5781_0[0]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[0]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_325 ));
    IOBI_IB_OB_EB \Data_pad[9]/U0/U1  (.D(\MUX2_0_Result[9] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[9]/U0/NET3 ), .DOUT(
        \Data_pad[9]/U0/NET1 ), .EOUT(\Data_pad[9]/U0/NET2 ), .Y(
        \Data_in[9] ));
    XOR2 \edib_m2m5m7_clkgen_0/un5_counter_I_5  (.A(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/I_5 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[26]  (.D(
        \trans_m5m7_0/bit_count_5[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[26]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[8]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[7]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_216 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[29]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[29]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[34]  (.D(\trans_m2_0/N_59 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[34]_net_1 ));
    OR2 \cmd_decoder_0/sample_counter_RNI5LKQ[21]  (.A(
        \cmd_decoder_0/sample_counter[21]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[22]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_9 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[6]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[6]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[17]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[17]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[17]  (.D(
        \trans_m7_0/bit_count_5[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[17]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[10]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[10]/Y ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[6]  (.D(\trans_m2_0/N_31 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[6]_net_1 ));
    NOR2 \cmd_decoder_0/rcv_shftreg_RNILIR5[9]  (.A(
        \cmd_decoder_0/rcv_shftreg[9]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .Y(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_1[0] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[31]  (.A(
        \trans_m7_0/m7_t_mc_reg[31]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[30]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_375 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[28]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[27]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[28]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_404 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[14]  (.A(
        \trans_m7_0/m7_t_mc_reg[14]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[13]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_390 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[4]  (.D(
        \cmd_decoder_0/sample_counter[3]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[4]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[19]  (.D(\cmd_decoder_0/N_440 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ));
    NOR2B \trans_m2_0/counter_RNO[17]  (.A(
        \trans_m2_0/counter[16]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_273 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[9]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[9]_net_1 ));
    DFN0C0 \trans_m7_0/rden77  (.D(m7_send_en_TEST_0), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/rden77_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[8]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[4]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[8] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[38]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[37]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_319 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[12]  (.D(\cmd_decoder_0/N_208 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[12]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[6]  (.D(
        \trans_m5m7_0/bit_count_5[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[6]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[21]  (.A(
        \trans_m5m7_0/bit_count[20]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[21] ));
    DFN0E0C0 \trans_m7_0/bit_count[28]  (.D(
        \trans_m7_0/bit_count_5[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[28]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4]/Y ));
    NOR3B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNID12H[5]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/m7_0 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m7_3 ));
    OR2A \cmd_decoder_0/state_RNO_0[7]  (.A(
        \cmd_decoder_0/state[7]_net_1 ), .B(\cmd_decoder_0/N_552 ), .Y(
        \cmd_decoder_0/N_240_tz ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[11]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[11]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[3] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[16]  (.A(
        \trans_m5m7_0/bit_count[15]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[16] ));
    DFN1E0C0 \trans_m2_0/counter[35]  (.D(\trans_m2_0/N_309 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[35]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[31]  (.D(
        \trans_m5m7_0/bit_count_5[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[31]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[15]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[15]_net_1 ));
    NOR2 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI60H8[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m7_0 ));
    AO1A \cmd_decoder_0/bit_counter_RNO_0[4]  (.A(
        \cmd_decoder_0/N_352_0 ), .B(
        \cmd_decoder_0/bit_counter[3]_net_1 ), .C(
        \cmd_decoder_0/N_511 ), .Y(\cmd_decoder_0/N_257 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[22]  (.A(
        \cmd_decoder_0/rcv_shftreg[18]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1257 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[23]  (.A(\trans_m7_0/N_399 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[23] ));
    OR2 \trans_m5m7_0/bit_counter_clear_b0_i_o3  (.A(
        \trans_m5m7_0/state[1]_net_1 ), .B(
        \trans_m5m7_0/state[0]_net_1 ), .Y(\trans_m5m7_0/N_520 ));
    AO1B \trans_m5m7_0/state_RNI5PAG9_1[0]  (.A(\trans_m5m7_0/N_528 ), 
        .B(\trans_m5m7_0/un1_bit_count_2 ), .C(\trans_m5m7_0/N_520 ), 
        .Y(\trans_m5m7_0/N_521 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[25]  (.A(
        \cmd_decoder_0/rst_counter[25]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[24]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_384 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[14]  (.D(
        \cmd_decoder_0/rcv_shftreg[31]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[14] ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[8]  (.D(
        \edib_ctrl_reg_0/N_37 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[8]_net_1 ));
    IOTRI_OB_EB \adc_pwdn_out_pad[1]/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \adc_pwdn_out_pad[1]/U0/NET1 ), .EOUT(
        \adc_pwdn_out_pad[1]/U0/NET2 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[31]  (.D(
        \cmd_decoder_0/N_1266 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[31]_net_1 ));
    MX2 \address_encoder_0/clr_m7_loadone_flag/U0  (.A(
        address_encoder_0_clr_m7_loadone_flag), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_43 ), .Y(
        \address_encoder_0/clr_m7_loadone_flag/Y ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[10]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[10] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[10]_net_1 )
        );
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[2]  (.D(
        \edib_ctrl_reg_0/N_49 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[2]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[16]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[16]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[8] ));
    MX2 \address_encoder_0/m2start_pulse_counter[2]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[2] ), .B(
        \address_encoder_0/m2start_pulse_counter[2] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[2]/Y ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[12]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[11]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[12]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_356 ));
    NOR2B \cmd_decoder_0/state_RNIQMQKO[3]  (.A(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_1[0] ), .B(
        \cmd_decoder_0/N_656 ), .Y(\cmd_decoder_0/state_iii_srst[0] ));
    AND3 \edib_m2m5m7_clkgen_0/un5_counter_I_10  (.A(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ), .C(
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/DWACT_FINC_E[0] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[27]  (.A(
        \cmd_decoder_0/rst_counter[27]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[26]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_386 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[9]  (.A(
        \trans_m5m7_0/q5[4]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[9] ));
    DFN1E0C0 \cmd_decoder_0/headreg[0]  (.D(\cmd_decoder_0/N_245 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[0]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[8]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[8] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[8]_net_1 )
        );
    MX2A \address_encoder_0/mux_ctrl_RNO  (.A(\dsp_address_c[0] ), .B(
        address_encoder_0_mux_ctrl), .S(\address_encoder_0/N_71 ), .Y(
        \address_encoder_0/N_16 ));
    IOPAD_TRI \adc_fsync_test_pad/U0/U0  (.D(
        \adc_fsync_test_pad/U0/NET1 ), .E(\adc_fsync_test_pad/U0/NET2 )
        , .PAD(adc_fsync_test));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_1_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[13]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[13]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[13]_net_1 )
        , .Y(\ADC_TOP_0_dataout[13] ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIGRCG1[13]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[13]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[13] )
        );
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[4]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[4] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[4]_net_1 )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[15]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[15]/Y ));
    IOPAD_IN \adc_din3_pad/U0/U0  (.PAD(adc_din3), .Y(
        \adc_din3_pad/U0/NET1 ));
    NOR3A \trans_m2_0/shift_reg_boo_RNO[0]  (.A(
        \trans_m2_0/m2_check_net_1 ), .B(\trans_m2_0/state[0]_net_1 ), 
        .C(\trans_m2_0/state_1[1]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_6[0] ));
    IOIN_IB \adc_din1_pad/U0/U1  (.YIN(\adc_din1_pad/U0/NET1 ), .Y(
        adc_din1_c));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIT3PC[2]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_11_i ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_12_i ));
    NOR3C \trans_m5m7_0/bit_count_RNIRE5S5[14]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_10_0 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_22 ), .C(
        \trans_m5m7_0/m5_t_mc_reg104_28 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_18 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[7]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[6]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_218 ));
    INV \edib_m2m5m7_clkgen_0/un5_counter_I_4  (.A(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/I_4 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[0]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[0] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[0]_net_1 )
        );
    OR2A \trans_m5m7_0/state_RNI5PAG9_2[0]  (.A(\trans_m5m7_0/N_520 ), 
        .B(\trans_m5m7_0/N_522 ), .Y(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ));
    OR3 \cmd_decoder_0/int_counter_RNISDVQ1[1]  (.A(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_4[0] ), .B(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_3[0] ), .C(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_5[0] ), .Y(
        \cmd_decoder_0/N_1255 ));
    IOTRI_OB_EB \pt_MUX2_pad[1]/U0/U1  (.D(\pt_MUX1_c_c[1] ), .E(VCC), 
        .DOUT(\pt_MUX2_pad[1]/U0/NET1 ), .EOUT(
        \pt_MUX2_pad[1]/U0/NET2 ));
    DFN1C0 \cmd_decoder_0/state[4]  (.D(\cmd_decoder_0/state_ns[4] ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[4]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[18]  (.A(
        \trans_m5m7_0/bit_count[17]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[18] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[22]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[22]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[0]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[0]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[13]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_372 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[13]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[29]  (.A(
        \trans_m5m7_0/N_373 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[29] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[15]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[15] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[15]_net_1 )
        );
    OA1C \trans_m2_0/shift_reg_bzo_RNO[10]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[9]_net_1 ), .C(\trans_m2_0/N_333 ), 
        .Y(\trans_m2_0/N_48 ));
    IOTRI_OB_EB \adc_pwdn_out_pad[2]/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \adc_pwdn_out_pad[2]/U0/NET1 ), .EOUT(
        \adc_pwdn_out_pad[2]/U0/NET2 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[18]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[18]_net_1 ));
    NOR2B \cmd_decoder_0/state_RNIUAR48[0]  (.A(\cmd_decoder_0/N_553 ), 
        .B(\cmd_decoder_0/N_352 ), .Y(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_1_0 ));
    DFN1E0C0 \trans_m2_0/counter[9]  (.D(\trans_m2_0/N_257 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[9]_net_1 ));
    IOPAD_TRI \adc_pwdn_out_pad[1]/U0/U0  (.D(
        \adc_pwdn_out_pad[1]/U0/NET1 ), .E(
        \adc_pwdn_out_pad[1]/U0/NET2 ), .PAD(adc_pwdn_out[1]));
    NOR3B \cmd_decoder_0/state_ii_RNO_2[0]  (.A(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .B(
        \cmd_decoder_0/N_656_0 ), .C(cmd_decoder_0_m2rxirqb), .Y(
        \cmd_decoder_0/N_1275 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[5]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[5]_net_1 ));
    NOR2A \tri_state_ctrl_0/Dout_1  (.A(\Data_in[15] ), .B(DSP_XRW_c_0)
        , .Y(\tri_state_ctrl_0_Dout[15] ));
    IOIN_IB \dsp_address_pad[4]/U0/U1  (.YIN(
        \dsp_address_pad[4]/U0/NET1 ), .Y(\dsp_address_c[4] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[20]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[20]_net_1 ));
    DFN1C0 \cmd_decoder_0/state[3]  (.D(\cmd_decoder_0/N_72 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[3]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[12]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[12]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[4] ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[14]  (.A(
        \trans_m5m7_0/N_390 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[14] ));
    AO1B \trans_m7_0/bit_count_RNIRH4EB_0[1]  (.A(
        \trans_m7_0/m7_t_mc_reg104_19 ), .B(
        \trans_m7_0/m7_t_mc_reg104_18 ), .C(m7_send_en_TEST_0), .Y(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[4]  (.A(\trans_m7_0/N_380 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[4] ));
    DFN0E0C0 \trans_m7_0/bit_count[21]  (.D(
        \trans_m7_0/bit_count_5[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[21]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[37]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[36]_net_1 ), .C(
        \trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_64 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[8]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[8] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[8]_net_1 )
        );
    DFN1E1C0 \cmd_decoder_0/sample_counter[15]  (.D(
        \cmd_decoder_0/sample_counter[14]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[15]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[2]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[2]_net_1 ));
    DFN1E1C0 \trans_m5m7_0/q5[0]  (.D(\tri_state_ctrl_0_Dout[0] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[0]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[7] ));
    MX2 \MUX2_0/MX2_Result[9]  (.A(\edib_ctrl_reg_0_dsp_data_out[9] ), 
        .B(\ADC_TOP_0_dataout[9] ), .S(\MUX2_0/SelAux_0[6] ), .Y(
        \MUX2_0_Result[9] ));
    NOR2A \cmd_decoder_0/state_RNO_8[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_0_0[5] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[8]  (.A(\trans_m7_0/N_352 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[8] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[23]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[23]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[0]  (.D(
        \cmd_decoder_0/rcv_shftreg[3]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[0] ));
    MX2 \MUX2_0/MX2_Result[0]  (.A(\edib_ctrl_reg_0_dsp_data_out[0] ), 
        .B(\ADC_TOP_0_dataout[0] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[0] ));
    AO1 \cmd_decoder_0/state_RNO[0]  (.A(
        \cmd_decoder_0/state_ns_0_0_0_a3_1[0] ), .B(
        \cmd_decoder_0/state_ns_0_0_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_417 ), .Y(\cmd_decoder_0/state_ns[0] ));
    OR3 \cmd_decoder_0/state_RNO_3[4]  (.A(\cmd_decoder_0/N_516 ), .B(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .C(
        \cmd_decoder_0/N_517 ), .Y(\cmd_decoder_0/N_287 ));
    MX2 \address_encoder_0/m7_sendata_reg_wren/U0  (.A(
        address_encoder_0_m7_sendata_reg_wren), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_29 ), .Y(
        \address_encoder_0/m7_sendata_reg_wren/Y ));
    OR3 \cmd_decoder_0/rst_counter_RNIPEF9[11]  (.A(
        \cmd_decoder_0/m33_0_o2_19 ), .B(\cmd_decoder_0/m33_0_o2_18 ), 
        .C(\cmd_decoder_0/m33_0_o2_27 ), .Y(
        \cmd_decoder_0/m33_0_o2_30 ));
    IOPAD_TRI \adc_pwdn_out_pad[2]/U0/U0  (.D(
        \adc_pwdn_out_pad[2]/U0/NET1 ), .E(
        \adc_pwdn_out_pad[2]/U0/NET2 ), .PAD(adc_pwdn_out[2]));
    NOR3A \trans_m2_0/counter_RNILM4J1[1]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_19 ), .B(
        \trans_m2_0/counter[2]_net_1 ), .C(
        \trans_m2_0/counter[1]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_29 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2]/Y ));
    NOR3B \address_encoder_0/un1_mux_ctrl12_i_a2_2  (.A(adc_rstn_test), 
        .B(\dsp_address_c[4] ), .C(xzcs0and1_c), .Y(
        \address_encoder_0/un1_mux_ctrl12_i_a2_2_net_1 ));
    OA1 \trans_m2_0/counter_RNO[35]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[34]_net_1 ), .Y(\trans_m2_0/N_309 ));
    NOR3B \cmd_decoder_0/state_RNO_6[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .Y(
        \cmd_decoder_0/N_114 ));
    DFN1 \edib_m5m7_clkgen_0/counter[3]  (.D(
        \edib_m5m7_clkgen_0/N_13_i ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/counter[3]_net_1 ));
    NOR2 \trans_m7_0/bit_count_RNIFML7[0]  (.A(
        \trans_m7_0/bit_count[0]_net_1 ), .B(
        \trans_m7_0/bit_count[1]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_6 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[22]  (.A(
        \trans_m5m7_0/bit_count[21]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[22] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[27]  (.D(
        \trans_m5m7_0/bit_count_5[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[27]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4] ));
    NOR2 \trans_m2_0/counter_RNI5PQB[14]  (.A(
        \trans_m2_0/counter[14]_net_1 ), .B(
        \trans_m2_0/counter[37]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_5 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[5]  (.D(\trans_m2_0/N_21 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[5]_net_1 ));
    OA1B \trans_m2_0/state_1_RNI9R8F[1]  (.A(
        \trans_m2_0/state_1[1]_net_1 ), .B(\state_RNISNSU1_0[0] ), .C(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/counter_1_sqmuxa )
        );
    MX2 \cmd_decoder_0/rst_counter_RNO_0[5]  (.A(
        \cmd_decoder_0/rst_counter[5]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[4]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_364 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[30]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_389 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[30]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[11]  (.A(
        \trans_m7_0/q7[5]_net_1 ), .B(m7_send_en_TEST_0), .Y(
        \trans_m7_0/m7_t_mc_reg_19[11] ));
    DFN1E1C0 \trans_m7_0/q7[2]  (.D(\tri_state_ctrl_0_Dout[2] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[2]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[13]  (.D(\tri_state_ctrl_0_Dout[13] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[13]_net_1 ));
    XOR3 \trans_m2_0/m2_check_RNO_7  (.A(\tri_state_ctrl_0_Dout[3] ), 
        .B(\tri_state_ctrl_0_Dout[2] ), .C(\trans_m2_0/un3_m2_check_3 )
        , .Y(\trans_m2_0/un3_m2_check_9 ));
    AO1D \cmd_decoder_0/state_RNO_5[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .C(
        \cmd_decoder_0/N_280 ), .Y(\cmd_decoder_0/N_94 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[7]  (.A(
        \trans_m5m7_0/bit_count[6]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[7] ));
    IOPAD_TRI \adc_en_test_pad/U0/U0  (.D(\adc_en_test_pad/U0/NET1 ), 
        .E(\adc_en_test_pad/U0/NET2 ), .PAD(adc_en_test));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3]/Y ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[11]  (.D(
        \edib_ctrl_reg_0/N_15 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[11]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[29]  (.A(
        \cmd_decoder_0/rst_counter[29]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[28]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_388 ));
    DFN1P0 \address_encoder_0/edib_interface_rst/U1  (.D(
        \address_encoder_0/edib_interface_rst/Y ), .CLK(DSP_CLK_TEST), 
        .PRE(adc_rstn_test_1), .Q(
        \address_encoder_0/edib_interface_rst ));
    DFN1E1C0 \trans_m5m7_0/q5[6]  (.D(\tri_state_ctrl_0_Dout[6] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[6]_net_1 ));
    NOR3C \trans_m7_0/bit_count_RNIM83B7[12]  (.A(
        \trans_m7_0/m7_t_mc_reg104_10_0 ), .B(
        \trans_m7_0/m7_t_mc_reg104_22 ), .C(
        \trans_m7_0/m7_t_mc_reg104_28 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_18 ));
    DFN1E0C0 \cmd_decoder_0/headreg[6]  (.D(\cmd_decoder_0/N_31 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[6]_net_1 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[15]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[14]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[15]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_391 ));
    NOR2A \cmd_decoder_0/state_RNO_0[0]  (.A(\cmd_decoder_0/N_288 ), 
        .B(\cmd_decoder_0/N_271 ), .Y(
        \cmd_decoder_0/state_ns_0_0_0_a3_1[0] ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[25]  (.A(\trans_m7_0/N_401 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[25] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[4]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[4]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[34]  (.A(
        \cmd_decoder_0/rst_counter[34]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[33]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_393 ));
    NOR2B \trans_m2_0/counter_RNO[10]  (.A(
        \trans_m2_0/counter[9]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .Y(\trans_m2_0/N_259 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[8]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[8]/Y ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[8]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[4]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[8] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[17]  (.A(
        \trans_m5m7_0/bit_count[16]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[17] ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[11]  (.D(
        \cmd_decoder_0_rcvd_datareg[11] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[11]_net_1 ));
    NOR3C \trans_m2_0/counter_RNIFT8F1[11]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_1 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_0 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_21 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_30 ));
    OR3C \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNIT2BE[2]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_9 ));
    DFN0E0C0 \trans_m7_0/bit_count[6]  (.D(\trans_m7_0/bit_count_5[6] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[6]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[39]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[38]_net_1 ), .Y(\trans_m2_0/N_317 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[14]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[14]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[6] ));
    OR3 \cmd_decoder_0/state_RNO[4]  (.A(\cmd_decoder_0/N_1283 ), .B(
        \cmd_decoder_0/N_1284 ), .C(\cmd_decoder_0/N_1282 ), .Y(
        \cmd_decoder_0/state_ns[4] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[3]  (.A(\trans_m7_0/N_347 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[3] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[25]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_384 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[25]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[20]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[20]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[32]  (.D(\trans_m2_0/N_303 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[32]_net_1 ));
    IOTRI_OB_EB \pt_MUX1_pad[1]/U0/U1  (.D(\pt_MUX1_c_c[1] ), .E(VCC), 
        .DOUT(\pt_MUX1_pad[1]/U0/NET1 ), .EOUT(
        \pt_MUX1_pad[1]/U0/NET2 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[30]  (.A(\trans_m7_0/N_374 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[30] ));
    NOR3C \cmd_decoder_0/state_RNIC3T7N[3]  (.A(\cmd_decoder_0/N_546 ), 
        .B(\cmd_decoder_0/state[3]_net_1 ), .C(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_5 ), .Y(
        \cmd_decoder_0/N_656_0 ));
    DFN1E1C0 \trans_m5m7_0/q5[7]  (.D(\tri_state_ctrl_0_Dout[7] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[7]_net_1 ));
    INV AFLSDF_INV_1 (.A(address_encoder_0_edib_interface_rst), .Y(
        AFLSDF_INV_1_net_1));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[28]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[14]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[28] )
        );
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[5]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[5] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[5]_net_1 )
        );
    NOR2 \trans_m5m7_0/rden55_RNI4A6S_1  (.A(
        \trans_m5m7_0/rden55_net_1 ), .B(\trans_m5m7_0/N_520 ), .Y(
        \trans_m5m7_0/N_525_0 ));
    OR2 \cmd_decoder_0/sample_counter_RNILEHI[0]  (.A(
        \cmd_decoder_0/sample_counter[0]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[16]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_3 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[11]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[11]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[0]  (.A(
        \trans_m7_0/shift ), .B(\trans_m7_0/m7_t_mc_reg[0]_net_1 ), .Y(
        \trans_m7_0/N_221 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[36]  (.D(
        \trans_m2_0/shift_reg_boo_6[36] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[36]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[23]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[15] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[14] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[23]/Y ));
    OR2 \cmd_decoder_0/int_counter_RNILA3D[5]  (.A(
        \cmd_decoder_0/int_counter[5]_net_1 ), .B(
        \cmd_decoder_0/int_counter[0]_net_1 ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_2[0] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[12]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[11]_net_1 ), .C(\trans_m2_0/N_334 ), 
        .Y(\trans_m2_0/N_44 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[23]  (.A(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[22]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1258 ));
    AO1 \edib_ctrl_reg_0/m7_loadone_reg_RNIHNAB1[0]  (.A(
        \edib_ctrl_reg_0/edib_zone_en_i_a3_1_net_1 ), .B(
        \edib_ctrl_reg_0/N_55 ), .C(\edib_ctrl_reg_0/N_78 ), .Y(
        \edib_ctrl_reg_0/N_56 ));
    MX2 \address_encoder_0/adc_open/U0  (.A(adc_en_test_c), .B(
        \address_encoder_0/adc_open_1_sqmuxa_1 ), .S(
        \address_encoder_0/N_47 ), .Y(\address_encoder_0/adc_open/Y ));
    NOR2A \trans_m5m7_0/bit_count_RNO[4]  (.A(
        \trans_m5m7_0/bit_count[3]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[4] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[13]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[12]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_206 ));
    NOR3A \trans_m5m7_0/bit_count_RNIN31F1[19]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_22_0 ), .B(
        \trans_m5m7_0/bit_count[19]_net_1 ), .C(
        \trans_m5m7_0/bit_count[20]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_22 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI3BKL1[7]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[7]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[7] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[20]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[20]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[26]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[26]_net_1 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[18]  (.A(
        \trans_m7_0/m7_t_mc_reg[18]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[17]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_394 ));
    MX2 \MUX2_0/MX2_Result[10]  (.A(\edib_ctrl_reg_0_dsp_data_out[10] )
        , .B(\ADC_TOP_0_dataout[10] ), .S(\MUX2_0/SelAux_0[6] ), .Y(
        \MUX2_0_Result[10] ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[11]  (.A(
        \trans_m5m7_0/N_355 ), .B(\trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[11] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[10]  (.A(
        \trans_m5m7_0/bit_count[9]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[10] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[18]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[10] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[9] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[18]/Y ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[4]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[4]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[6]  (.A(
        \trans_m5m7_0/N_350 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[6] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[7]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[7] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[7]_net_1 )
        );
    DFN1E0C0 \trans_m2_0/shift_reg_boo[9]  (.D(\trans_m2_0/N_29 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[9]_net_1 ));
    AOI1B \edib_m2m5m7_clkgen_0/counter_RNO[1]  (.A(
        \edib_m2m5m7_clkgen_0/counter13_2 ), .B(
        \edib_m2m5m7_clkgen_0/counter13_1 ), .C(
        \edib_m2m5m7_clkgen_0/I_5 ), .Y(
        \edib_m2m5m7_clkgen_0/counter_3[1] ));
    DFN1E0C0 \trans_m2_0/counter[29]  (.D(\trans_m2_0/N_297 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[29]_net_1 ));
    OR2 \cmd_decoder_0/rst_counter_RNINEA[32]  (.A(
        \cmd_decoder_0/rst_counter[32]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[33]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_10 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[31]  (.A(
        \trans_m7_0/q7[15]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[31] ));
    MX2 \MUX2_0/MX2_Result[12]  (.A(\edib_ctrl_reg_0_dsp_data_out[12] )
        , .B(\ADC_TOP_0_dataout[12] ), .S(\MUX2_0/SelAux_0[11] ), .Y(
        \MUX2_0_Result[12] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[1] ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNI22MH[14]  (.A(
        \trans_m2_0/m2_data[14]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state_2[1]_net_1 )
        , .Y(\trans_m2_0/N_352 ));
    XOR2 \edib_m5m7_clkgen_0/counter_RNO[1]  (.A(
        \edib_m5m7_clkgen_0/counter[0]_net_1 ), .B(
        \edib_m5m7_clkgen_0/counter[1]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/N_11_i ));
    NOR3A \trans_m5m7_0/bit_count_RNI5K3F1[27]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_28_1 ), .B(
        \trans_m5m7_0/bit_count[28]_net_1 ), .C(
        \trans_m5m7_0/bit_count[27]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_28_4 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[12]  (.D(
        \cmd_decoder_0_rcvd_datareg[12] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[12]_net_1 ));
    AO1 \trans_m5m7_0/state_RNO[1]  (.A(
        \trans_m5m7_0/state_ns_0_0_0[1] ), .B(
        \trans_m5m7_0/state_ns_0_0_tz[1] ), .C(\trans_m5m7_0/N_614 ), 
        .Y(\trans_m5m7_0/state_ns[1] ));
    IOIN_IB \dsp_address_pad[3]/U0/U1  (.YIN(
        \dsp_address_pad[3]/U0/NET1 ), .Y(\dsp_address_c[3] ));
    NOR3A \trans_m5m7_0/bit_count_RNI1BUE1[14]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_10 ), .B(
        \trans_m5m7_0/bit_count[14]_net_1 ), .C(
        \trans_m5m7_0/bit_count[16]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_10_0 ));
    DFN1 \cmd_decoder_0/rst_counter[5]  (.D(
        \cmd_decoder_0/rst_counter_RNO[5]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[5]_net_1 ));
    NOR3B \edib_mode2_clkgen_0/counter1_RNIMOIV[2]  (.A(
        \edib_mode2_clkgen_0/counter1[2]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter113_2 ), .C(
        \edib_mode2_clkgen_0/counter1[4]_net_1 ), .Y(
        \edib_mode2_clkgen_0/counter113_4 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[22]  (.A(\trans_m7_0/N_398 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[22] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[12]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[12]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[4] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[4]  (.D(
        \trans_m5m7_0/bit_count_5[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[4]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[6]  (.A(
        \cmd_decoder_0/rst_counter[6]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[5]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_365 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[21]  (.A(
        \trans_m7_0/m7_t_mc_reg[21]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[20]_net_1 ), .S(
        \trans_m7_0/N_522 ), .Y(\trans_m7_0/N_365 ));
    OR3 \cmd_decoder_0/state_RNO[5]  (.A(\cmd_decoder_0/N_657 ), .B(
        \cmd_decoder_0/state_ns_0_i_i_0[5] ), .C(
        \cmd_decoder_0/N_1280 ), .Y(\cmd_decoder_0/N_92 ));
    AO1C \cmd_decoder_0/state_RNO[1]  (.A(\cmd_decoder_0/N_552 ), .B(
        \cmd_decoder_0/state[1]_net_1 ), .C(\cmd_decoder_0/N_323 ), .Y(
        \cmd_decoder_0/N_157 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[16]  (.D(\cmd_decoder_0/N_200 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[16]_net_1 ));
    MX2 \MUX2_0/MX2_Result[1]  (.A(\edib_ctrl_reg_0_dsp_data_out[1] ), 
        .B(\ADC_TOP_0_dataout[1] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[1] ));
    NOR2 \trans_m5m7_0/state_RNO_0[0]  (.A(\trans_m5m7_0/rden55_net_1 )
        , .B(\trans_m5m7_0/state[0]_net_1 ), .Y(\trans_m5m7_0/N_615 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI57OR[15]  (.A(
        \cmd_decoder_0/bit_counter[15]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[16]_net_1 ), .Y(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_2 ));
    NOR2B \trans_m2_0/shift_reg_boo_RNO[36]  (.A(
        \trans_m2_0/shift_reg_boo[35]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_6[36] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[19]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[19]_net_1 ));
    NOR3C \trans_m5m7_0/bit_count_RNI3QAH5[31]  (.A(
        \trans_m5m7_0/un1_bit_count_2_9 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_22 ), .C(
        \trans_m5m7_0/m5_t_mc_reg104_28 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_17 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[18]  (.D(\cmd_decoder_0/N_439 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[18]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[7]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[7]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[13]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[13]/Y ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[1]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[1]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[9]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[8]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[9]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_353 ));
    MX2B \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[18]  (.A(
        \trans_m5m7_0/m5_t_mc_shiftreg[17]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[18]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_394 ));
    NOR2A \tri_state_ctrl_0/Dout_1_5  (.A(\Data_in[9] ), .B(DSP_XRW_c), 
        .Y(\tri_state_ctrl_0_Dout[9] ));
    DFN1E0C0 \trans_m2_0/counter[25]  (.D(\trans_m2_0/N_289 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[25]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[19]  (.D(
        \cmd_decoder_0/rst_counter_RNO[19]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[19]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[11]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[10]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_210 ));
    DFN1E1C0 \trans_m7_0/q7[3]  (.D(\tri_state_ctrl_0_Dout[3] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[3]_net_1 ));
    AOI1B \cmd_decoder_0/sample_counter_RNO[10]  (.A(
        \cmd_decoder_0/N_550 ), .B(\cmd_decoder_0/N_263 ), .C(
        \cmd_decoder_0/sample_counter[9]_net_1 ), .Y(
        \cmd_decoder_0/N_1278 ));
    OA1 \trans_m2_0/counter_RNO[26]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[25]_net_1 ), .Y(\trans_m2_0/N_291 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[21]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[13] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[12] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[21]/Y ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[15]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[15]_net_1 ));
    IOPAD_TRI \pt_MUX1_pad[0]/U0/U0  (.D(\pt_MUX1_pad[0]/U0/NET1 ), .E(
        \pt_MUX1_pad[0]/U0/NET2 ), .PAD(pt_MUX1[0]));
    IOTRI_OB_EB \adc_pwdn_out_pad[3]/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \adc_pwdn_out_pad[3]/U0/NET1 ), .EOUT(
        \adc_pwdn_out_pad[3]/U0/NET2 ));
    AND3 \edib_mode2_clkgen_0/un5_counter1_I_16  (.A(
        \edib_mode2_clkgen_0/DWACT_FINC_E[0] ), .B(
        \edib_mode2_clkgen_0/DWACT_FINC_E[1] ), .C(
        \edib_mode2_clkgen_0/counter1[5]_net_1 ), .Y(
        \edib_mode2_clkgen_0/N_2 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[24]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[23]_net_1 ), .C(\trans_m2_0/N_346 ), 
        .Y(\trans_m2_0/N_152 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[1]  (.A(
        \cmd_decoder_0/headreg[1]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[0]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_422 ));
    CLKINT \address_encoder_0/edib_interface_rst_RNIUVLB  (.A(
        \address_encoder_0/edib_interface_rst ), .Y(
        address_encoder_0_edib_interface_rst));
    AO1A \trans_m2_0/m2_data_RNI11MH_0[13]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[13]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_351 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[32]  (.D(\trans_m2_0/N_193 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[32]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[11]  (.A(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[10]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_432 ));
    IOPAD_IN \dsp_address_pad[16]/U0/U0  (.PAD(dsp_address[16]), .Y(
        \dsp_address_pad[16]/U0/NET1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[1]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[1]_net_1 ));
    NOR2 \cmd_decoder_0/rcv_shftreg_RNI6MU2[25]  (.A(
        \cmd_decoder_0/rcv_shftreg[25]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ), .Y(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_1 ));
    DFN1 \edib_m2m5m7_clkgen_0/counter[4]  (.D(
        \edib_m2m5m7_clkgen_0/I_12 ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/counter[4]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[14]  (.D(\cmd_decoder_0/N_204 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[14]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[5]  (.D(\tri_state_ctrl_0_Dout[5] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[5]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[17]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[9] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[8] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[17]/Y ));
    NOR2A \trans_m5m7_0/bit_count_RNO[29]  (.A(
        \trans_m5m7_0/bit_count[28]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[29] ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIT4KL1[1]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[1]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[1] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[7]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[7] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[7]_net_1 )
        );
    DFN0E0C0 \trans_m5m7_0/bit_count[9]  (.D(
        \trans_m5m7_0/bit_count_5[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[9]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[33]  (.D(\trans_m2_0/N_305 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[33]_net_1 ));
    NOR2 \trans_m7_0/bit_count_RNILSL7[3]  (.A(
        \trans_m7_0/bit_count[3]_net_1 ), .B(
        \trans_m7_0/bit_count[4]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_5 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIEPCG1[11]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[11]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[11] )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[19]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[11] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[10] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[19]/Y ));
    NOR2B \cmd_decoder_0/headreg_RNITEKH_0[0]  (.A(
        \cmd_decoder_0/headreg[0]_net_1 ), .B(
        \cmd_decoder_0/headreg[1]_net_1 ), .Y(\cmd_decoder_0/N_513 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[2]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[2]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[18]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[17]_net_1 ), .C(\trans_m2_0/N_340 ), 
        .Y(\trans_m2_0/N_100 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[30]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[30]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[24]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[12]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[24] ));
    OA1 \trans_m2_0/counter_RNO[32]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[31]_net_1 ), .Y(\trans_m2_0/N_303 ));
    NOR2A \trans_m5m7_0/rden55_RNI4A6S_0  (.A(
        \trans_m5m7_0/rden55_net_1 ), .B(\trans_m5m7_0/N_520 ), .Y(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ));
    DFI1C0 \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0  (.D(VCC), .CLK(
        sam_clk_5M_out_net_1), .CLR(adc_rstn_test), .QN(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg0_i ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[2]  (.D(
        \cmd_decoder_0_rcvd_datareg[2] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[2]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[14]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[14]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[14]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[14]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[13]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_358 ));
    MX2 \address_encoder_0/m7_send_en/U0  (.A(\address_encoder_0/N_22 )
        , .B(m7_send_en_TEST), .S(xzcs0and1_c), .Y(
        \address_encoder_0/m7_send_en/Y ));
    IOPAD_TRI \adc_pwdn_out_pad[3]/U0/U0  (.D(
        \adc_pwdn_out_pad[3]/U0/NET1 ), .E(
        \adc_pwdn_out_pad[3]/U0/NET2 ), .PAD(adc_pwdn_out[3]));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[14]  (.A(
        \cmd_decoder_0/rst_counter[14]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[13]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_373 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[25]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[25]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[3]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[2]_net_1 ), .C(\trans_m2_0/N_324 ), 
        .Y(\trans_m2_0/N_17 ));
    OR3 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_8  (.A(
        \dsp_address_c[17] ), .B(\dsp_address_c[18] ), .C(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_5_net_1 ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_8_net_1 ));
    BUFF DSP_XRW_pad_RNIREFD (.A(DSP_XRW_c), .Y(DSP_XRW_c_0));
    NOR2A \edib_mode2_clkgen_0/counter1_RNIABPF[1]  (.A(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ), .Y(
        \edib_mode2_clkgen_0/counter113_2 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[27]  (.A(\trans_m7_0/N_371 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[27] ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[7]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[7]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_39 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[5]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[4]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_222 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[15]  (.D(
        \cmd_decoder_0_rcvd_datareg[15] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[15]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[1]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[1]_net_1 ));
    IOTRI_OB_EB \adc_data3_test_pad/U0/U1  (.D(adc_data3_test_c), .E(
        VCC), .DOUT(\adc_data3_test_pad/U0/NET1 ), .EOUT(
        \adc_data3_test_pad/U0/NET2 ));
    AO1A \trans_m2_0/m2_data_RNIH6DS_0[5]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[5]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_335 ));
    NOR3B \cmd_decoder_0/bit_counter_RNI0MBSB[3]  (.A(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_2 ), .B(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_3 ), .C(
        \cmd_decoder_0/bit_counter[3]_net_1 ), .Y(
        \cmd_decoder_0/load_0_a3_0_a2_0 ));
    NOR2B \edib_ctrl_reg_0/m7_loadone_flag_RNO  (.A(
        address_encoder_0_clr_m7_loadone_flag), .B(
        address_encoder_0_edib_interface_rst), .Y(
        \edib_ctrl_reg_0/m7_loadone_flag_1_sqmuxa ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[2]  (.A(\trans_m7_0/N_346 ), 
        .B(\trans_m7_0/N_521_1 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[2] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[19]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[19]_net_1 ));
    MX2 \cmd_decoder_0/state_RNO_2[0]  (.A(
        \cmd_decoder_0/state[0]_net_1 ), .B(
        \cmd_decoder_0/state[4]_net_1 ), .S(
        \cmd_decoder_0/md2udireg_net_1 ), .Y(\cmd_decoder_0/N_417 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[4]  (.A(
        \cmd_decoder_0/rst_counter[4]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[3]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_363 ));
    OR3 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0  (.A(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_7_net_1 ), .B(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_6_net_1 ), .C(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_8_net_1 ), .Y(
        \address_encoder_0/N_59 ));
    IOTRI_OB_EB \sam_clk_5M_out_pad/U0/U1  (.D(sam_clk_5M_out_net_1), 
        .E(VCC), .DOUT(\sam_clk_5M_out_pad/U0/NET1 ), .EOUT(
        \sam_clk_5M_out_pad/U0/NET2 ));
    OR3 \cmd_decoder_0/rst_counter_RNIQ481[19]  (.A(
        \cmd_decoder_0/m33_0_o2_17 ), .B(\cmd_decoder_0/m33_0_o2_16 ), 
        .C(\cmd_decoder_0/m33_0_o2_24 ), .Y(
        \cmd_decoder_0/m33_0_o2_29 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[23]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[15] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[14] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[23]/Y ));
    NOR2 \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[0]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[37]  (.D(
        \trans_m2_0/shift_reg_bzo_6[37] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[37]_net_1 ));
    NOR2A \address_encoder_0/m7_sendata_reg_wren_RNO_0  (.A(
        \dsp_address_c[1] ), .B(\dsp_address_c[2] ), .Y(
        \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[12]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[12]/Y ));
    DFN1E1C0 \trans_m7_0/q7[12]  (.D(\tri_state_ctrl_0_Dout[12] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[12]_net_1 ));
    NOR2 \trans_m2_0/counter_RNI5NOB[15]  (.A(
        \trans_m2_0/counter[18]_net_1 ), .B(
        \trans_m2_0/counter[15]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_3 ));
    NOR3C \cmd_decoder_0/bit_counter_RNITHKK5[13]  (.A(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_2 ), .B(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_3 ), .C(
        \cmd_decoder_0/N_533 ), .Y(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_2 ));
    NOR3A \trans_m2_0/counter_RNI2EPN[31]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_11 ), .B(
        \trans_m2_0/counter[32]_net_1 ), .C(
        \trans_m2_0/counter[31]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_25 ));
    NOR3C \cmd_decoder_0/state_RNO_1[5]  (.A(\cmd_decoder_0/N_546 ), 
        .B(\cmd_decoder_0/state[3]_net_1 ), .C(
        \cmd_decoder_0/state_ns_0_i_i_a3_0_2[5] ), .Y(
        \cmd_decoder_0/N_1280 ));
    AO1B \trans_m5m7_0/bit_count_RNINVM49_0[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_19 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_18 ), .C(
        address_encoder_0_m5_send_en_0), .Y(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[15]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[15]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[7] ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[26]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[25]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[26]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_402 ));
    NOR2A \tri_state_ctrl_0/Dout_1_8  (.A(\Data_in[6] ), .B(DSP_XRW_c), 
        .Y(\tri_state_ctrl_0_Dout[6] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[31]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[30]_net_1 ), .C(\trans_m2_0/N_352 ), 
        .Y(\trans_m2_0/N_191 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[32]  (.A(
        \cmd_decoder_0/rst_counter[32]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[31]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_391 ));
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[1]_net_1 ));
    AND3 \edib_m2m5m7_clkgen_0/un5_counter_I_8  (.A(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ), .C(
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/N_3 ));
    XOR2 \edib_mode2_clkgen_0/un5_counter1_I_14  (.A(
        \edib_mode2_clkgen_0/N_3 ), .B(
        \edib_mode2_clkgen_0/counter1[5]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_14 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[8]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[7]_net_1 ), .C(\trans_m2_0/N_330 ), 
        .Y(\trans_m2_0/N_27 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[5]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[5]_net_1 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI102Q[4]  (.A(
        \cmd_decoder_0/bit_counter[4]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[5]_net_1 ), .Y(
        \cmd_decoder_0/state_tr13_1_64_0_a3_2_0_a2_0 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX1_c_c_i[1] ), .CLK(
        convert_over_out), .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[1]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[4]  (.D(
        \cmd_decoder_0_rcvd_datareg[4] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[4]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_348 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4]/Y ));
    AO1D \trans_m2_0/m2_data_RNIMDGT[9]  (.A(
        \trans_m2_0/m2_data[9]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_342 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[26]  (.A(
        \trans_m5m7_0/bit_count[25]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[26] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_346 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2]/Y ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[15]  (.A(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[14]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_436 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[5]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[4]_net_1 ), .C(\trans_m2_0/N_327 ), 
        .Y(\trans_m2_0/N_13 ));
    NOR2 \trans_m2_0/shift_reg_boo_RNO[1]  (.A(\trans_m2_0/N_387 ), .B(
        \trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_66 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[28]  (.A(
        \cmd_decoder_0/rst_counter[28]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[27]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_387 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[10]  (.A(\trans_m7_0/N_386 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[10] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[22]  (.D(
        \cmd_decoder_0/sample_counter[21]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[22]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[25]  (.D(
        \cmd_decoder_0/rst_counter_RNO[25]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[25]_net_1 ));
    DFN0C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[1]_net_1 ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]_net_1 ));
    NOR3A \cmd_decoder_0/state_RNIB15C1[4]  (.A(\cmd_decoder_0/N_553 ), 
        .B(\cmd_decoder_0/state[5]_net_1 ), .C(
        \cmd_decoder_0/state[4]_net_1 ), .Y(\cmd_decoder_0/N_756_0 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[5]  (.D(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[5] ));
    AO1A \trans_m2_0/m2_data_RNIKBGT[7]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[7]_net_1 )
        , .C(\trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_339 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[10]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[10]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[7]  (.A(
        \trans_m5m7_0/N_383 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[7] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[17]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[16]_net_1 ), .C(\trans_m2_0/N_339 ), 
        .Y(\trans_m2_0/N_68 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI2AKL1[6]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[6]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[6] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[25]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[24]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_182 ));
    IOPAD_TRI \m7_boo_pad/U0/U0  (.D(\m7_boo_pad/U0/NET1 ), .E(
        \m7_boo_pad/U0/NET2 ), .PAD(m7_boo));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[7]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[6]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[7]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_383 ));
    AO1A \trans_m2_0/m2_data_RNI00MH_0[12]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[12]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_349 ));
    OR3 \cmd_decoder_0/sample_counter_RNI9H4D1[4]  (.A(
        \cmd_decoder_0/sample_counter[4]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[19]_net_1 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_5 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_13 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[10]  (.A(\trans_m7_0/N_354 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[10] ));
    NOR3C \trans_m2_0/counter_RNIHIS46[10]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_31 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_30 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_34 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_37 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[21]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[21]_net_1 ));
    NOR3B \cmd_decoder_0/state_RNO_4[8]  (.A(
        \cmd_decoder_0/headreg[6]_net_1 ), .B(
        \cmd_decoder_0/state[8]_net_1 ), .C(\cmd_decoder_0/N_354 ), .Y(
        \cmd_decoder_0/N_500 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[30]  (.D(
        \trans_m5m7_0/bit_count_5[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[30]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[1]  (.A(
        \trans_m7_0/m7_t_mc_reg[1]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[0]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_345 ));
    MX2 \address_encoder_0/m2start_pulse_counter[7]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[7] ), .B(
        \address_encoder_0/m2start_pulse_counter[7] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[7]/Y ));
    IOPAD_TRI \DSP_XRD_TEST_pad/U0/U0  (.D(\DSP_XRD_TEST_pad/U0/NET1 ), 
        .E(\DSP_XRD_TEST_pad/U0/NET2 ), .PAD(DSP_XRD_TEST));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[10]  (.D(\cmd_decoder_0/N_431 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[10]_net_1 ));
    NOR3C \trans_m5m7_0/bit_count_RNI306U2[23]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_28_3 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_28_2 ), .C(
        \trans_m5m7_0/m5_t_mc_reg104_28_4 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_28 ));
    NOR2A \tri_state_ctrl_0/Dout_1_4  (.A(\Data_in[10] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[10] ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[14]  (.D(
        \cmd_decoder_0_rcvd_datareg[14] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[14]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[28]  (.D(\trans_m2_0/N_169 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[28]_net_1 ));
    DFN1C0 \address_encoder_0/adc_open/U1  (.D(
        \address_encoder_0/adc_open/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_1), .Q(adc_en_test_c));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[33]  (.D(\trans_m2_0/N_238 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[33]_net_1 ));
    IOBI_IB_OB_EB \Data_pad[8]/U0/U1  (.D(\MUX2_0_Result[8] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[8]/U0/NET3 ), .DOUT(
        \Data_pad[8]/U0/NET1 ), .EOUT(\Data_pad[8]/U0/NET2 ), .Y(
        \Data_in[8] ));
    OR2 \trans_m7_0/bit_counter_clear_b0_i_o3  (.A(
        \trans_m7_0/state[1]_net_1 ), .B(\trans_m7_0/state[0]_net_1 ), 
        .Y(\trans_m7_0/N_520 ));
    DFN1C0 \cmd_decoder_0/state[7]  (.D(\cmd_decoder_0/N_240 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[7]_net_1 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[31]  (.A(
        \trans_m7_0/m7_t_mc_reg[31]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[30]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_407 ));
    DFN1E0C0 \trans_m2_0/counter[22]  (.D(\trans_m2_0/N_283 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[22]_net_1 ));
    IOTRI_OB_EB \bit35_pad/U0/U1  (.D(bit35_c), .E(VCC), .DOUT(
        \bit35_pad/U0/NET1 ), .EOUT(\bit35_pad/U0/NET2 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[8]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[8] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[8]_net_1 )
        );
    CLKINT \edib_m2m5m7_clkgen_0/clk_m2_rcv_RNIAAHA  (.A(
        \edib_m2m5m7_clkgen_0/clk_m2_rcv_i ), .Y(
        edib_m2m5m7_clkgen_0_clk_m2_rcv));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[28]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[28]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[26]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[26]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[25]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_402 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[4]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[4]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[4] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[3]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[2]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[3]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_347 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[3]  (.A(
        \cmd_decoder_0/headreg[3]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[2]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_424 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[28]  (.A(
        \trans_m5m7_0/bit_count[27]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[28] ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[9]  (.D(
        \cmd_decoder_0_rcvd_datareg[9] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[9]_net_1 ));
    OR3 \cmd_decoder_0/state_ii_RNO[0]  (.A(\cmd_decoder_0/N_1272 ), 
        .B(\cmd_decoder_0/state_ii_ns_0_0_0_0[0] ), .C(
        \cmd_decoder_0/N_1275 ), .Y(\cmd_decoder_0/state_ii_ns[0] ));
    IOIN_IB \dsp_address_pad[14]/U0/U1  (.YIN(
        \dsp_address_pad[14]/U0/NET1 ), .Y(\dsp_address_c[14] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[23]  (.D(\trans_m2_0/N_118 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[23]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[2]  (.A(
        \trans_m5m7_0/bit_count[1]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[2] ));
    NOR2 \trans_m7_0/rden77_RNI22H11_0  (.A(\trans_m7_0/rden77_net_1 ), 
        .B(\trans_m7_0/N_520 ), .Y(\trans_m7_0/N_525 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[20]  (.D(\trans_m2_0/N_104 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[20]_net_1 ));
    AXOI4 \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[1] ));
    AO1 \cmd_decoder_0/rcv_shftreg_RNITHA4[11]  (.A(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .Y(
        \cmd_decoder_0/N_280 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[2]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[2]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[6]  (.A(
        \trans_m5m7_0/bit_count[5]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[6] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7]/Y ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[2]  (.A(
        \cmd_decoder_0/headreg[2]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[1]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_423 ));
    NOR2A \address_encoder_0/m2_send_en_RNO_1  (.A(\dsp_address_c[2] ), 
        .B(\address_encoder_0/N_63 ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_1 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[7]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_16_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[7]_net_1 ));
    NOR3C \cmd_decoder_0/state_RNO_2[8]  (.A(
        \cmd_decoder_0/headreg[6]_net_1 ), .B(
        \cmd_decoder_0/state[8]_net_1 ), .C(\cmd_decoder_0/N_270 ), .Y(
        \cmd_decoder_0/N_498 ));
    NOR3B \cmd_decoder_0/rcv_shftreg_RNI563J_0[7]  (.A(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_0[0] ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_1[0] ), .C(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ), .Y(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ));
    DFN1C0 \cmd_decoder_0/state[2]  (.D(
        \cmd_decoder_0/state_RNO[2]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[2]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[12]  (.D(
        \trans_m5m7_0/bit_count_5[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[12]_net_1 )
        );
    NOR2A \tri_state_ctrl_0/Dout_1_9  (.A(\Data_in[5] ), .B(DSP_XRW_c), 
        .Y(\tri_state_ctrl_0_Dout[5] ));
    NOR2A \trans_m7_0/bit_count_RNO[14]  (.A(
        \trans_m7_0/bit_count[13]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[14] ));
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNIPIKL1[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_i_0[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_35 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_ns[0] ));
    OA1 \trans_m2_0/counter_RNO[27]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[26]_net_1 ), .Y(\trans_m2_0/N_293 ));
    NOR2A \trans_m7_0/bit_count_RNO[5]  (.A(
        \trans_m7_0/bit_count[4]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[5] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[19]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[19]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[11] ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[22]  (.D(\cmd_decoder_0/N_188 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[22]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[11]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[11] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[11]_net_1 )
        );
    IOTRI_OB_EB \DSP_XRD_TEST_pad/U0/U1  (.D(DSP_XRD_TEST_c), .E(VCC), 
        .DOUT(\DSP_XRD_TEST_pad/U0/NET1 ), .EOUT(
        \DSP_XRD_TEST_pad/U0/NET2 ));
    DFN1 \cmd_decoder_0/rst_counter[2]  (.D(
        \cmd_decoder_0/rst_counter_RNO[2]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[2]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[13]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[13]_net_1 ));
    DFN0P0 \edib_ctrl_reg_0/m7_loadone_reg[0]  (.D(
        \edib_ctrl_reg_0/m7_loadone_flag_net_1 ), .CLK(DSP_CLK_TEST), 
        .PRE(address_encoder_0_edib_interface_rst), .Q(
        \edib_ctrl_reg_0/m7_loadone_reg[0]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[14]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[13]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_204 ));
    MX2 \address_encoder_0/m5_sendata_reg_wren/U0  (.A(
        address_encoder_0_m5_sendata_reg_wren), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_33 ), .Y(
        \address_encoder_0/m5_sendata_reg_wren/Y ));
    DFN0E0C0 \trans_m7_0/bit_count[9]  (.D(\trans_m7_0/bit_count_5[9] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[9]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[1] ));
    NOR3A \cmd_decoder_0/bit_counter_RNI01QL1[6]  (.A(
        \cmd_decoder_0/state_tr13_1_64_0_a3_3_0_a2_0 ), .B(
        \cmd_decoder_0/bit_counter[7]_net_1 ), .C(
        \cmd_decoder_0/bit_counter[6]_net_1 ), .Y(
        \cmd_decoder_0/N_616_64_3 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[28]  (.A(\trans_m7_0/N_372 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[28] ));
    NOR2B \trans_m2_0/counter_RNO[13]  (.A(
        \trans_m2_0/counter[12]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_265 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[19]  (.A(\trans_m7_0/N_395 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[19] ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[6]  (.A(\trans_m7_0/N_382 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[6] ));
    OR3 \cmd_decoder_0/rst_counter_RNIK6Q7[3]  (.A(
        \cmd_decoder_0/m33_0_o2_7 ), .B(\cmd_decoder_0/m33_0_o2_6 ), 
        .C(\cmd_decoder_0/m33_0_o2_21 ), .Y(
        \cmd_decoder_0/m33_0_o2_27 ));
    XOR2 \cmd_decoder_0/headreg_RNI1JKH[2]  (.A(
        \cmd_decoder_0/headreg[3]_net_1 ), .B(
        \cmd_decoder_0/headreg[2]_net_1 ), .Y(\cmd_decoder_0/N_261_i ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[31]  (.A(
        \trans_m5m7_0/m5_t_no_shiftreg[30]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[31]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_375 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[16]  (.D(\cmd_decoder_0/N_437 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[16]_net_1 ));
    IOPAD_IN \INBUF_0/U0/U0  (.PAD(gpio1), .Y(\INBUF_0/U0/NET1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[2]  (.A(\trans_m7_0/N_378 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[2] ));
    DFN1E1C0 \cmd_decoder_0/int_counter[4]  (.D(
        \cmd_decoder_0/int_counter[3]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[4]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[26]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[25]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_180 ));
    NOR2 \trans_m7_0/bit_count_RNIVVAT[17]  (.A(
        \trans_m7_0/bit_count[18]_net_1 ), .B(
        \trans_m7_0/bit_count[17]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_10 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[2] ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]_net_1 ));
    AOI1B \edib_mode2_clkgen_0/counter1_RNO[6]  (.A(
        \edib_mode2_clkgen_0/counter113_4 ), .B(
        \edib_mode2_clkgen_0/counter113_3 ), .C(
        \edib_mode2_clkgen_0/I_17 ), .Y(
        \edib_mode2_clkgen_0/counter1_3[6] ));
    DFN0E0C0 \trans_m5m7_0/bit_count[24]  (.D(
        \trans_m5m7_0/bit_count_5[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[24]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[12]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[12]/Y ));
    DFN1C0 \trans_m2_0/state_0[1]  (.D(\trans_m2_0/N_321 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m2_0/state_0[1]_net_1 ));
    AX1 \edib_m5m7_clkgen_0/counter_RNO[4]  (.A(
        \edib_m5m7_clkgen_0/N_9 ), .B(
        \edib_m5m7_clkgen_0/counter[3]_net_1 ), .C(
        \edib_m5m7_clkgen_0/counter[4]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/N_14_i ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[4]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[4]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[14]  (.A(
        \cmd_decoder_0/rcv_shftreg[10]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_435 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[15]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[15]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[7] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[9]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[8]_net_1 ), .C(\trans_m2_0/N_331 ), 
        .Y(\trans_m2_0/N_29 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[20]  (.A(
        \cmd_decoder_0/rcv_shftreg[16]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_441 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[31]  (.A(
        \trans_m5m7_0/bit_count[30]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[31] ));
    IOPAD_TRI \adc_data3_test_pad/U0/U0  (.D(
        \adc_data3_test_pad/U0/NET1 ), .E(\adc_data3_test_pad/U0/NET2 )
        , .PAD(adc_data3_test));
    IOPAD_IN \dsp_address_pad[4]/U0/U0  (.PAD(dsp_address[4]), .Y(
        \dsp_address_pad[4]/U0/NET1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[16]  (.A(
        address_encoder_0_m5_send_en_0), .B(\trans_m5m7_0/q5[8]_net_1 )
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[16] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[30]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[30]_net_1 ));
    IOIN_IB \dsp_address_pad[11]/U0/U1  (.YIN(
        \dsp_address_pad[11]/U0/NET1 ), .Y(\dsp_address_c[11] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_i[0] ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[12]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[12]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[11]_net_1 ), .S(
        \trans_m5m7_0/N_522 ), .Y(\trans_m5m7_0/N_356 ));
    MX2 \address_encoder_0/m2_wr_reg_en/U0  (.A(
        address_encoder_0_m2_wr_reg_en), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_37 ), .Y(
        \address_encoder_0/m2_wr_reg_en/Y ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIU5KL1[2]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[2]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[2] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[12]  (.A(
        \cmd_decoder_0/rst_counter[12]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[11]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_371 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[26]  (.A(
        \trans_m5m7_0/N_370 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[26] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[28]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[27]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[28]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_372 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[14]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[14]/Y ));
    NOR2 \trans_m7_0/bit_count_RNISVDT[29]  (.A(
        \trans_m7_0/bit_count[29]_net_1 ), .B(
        \trans_m7_0/bit_count[30]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_28_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[27]  (.A(
        \trans_m5m7_0/bit_count[26]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[27] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[21]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[13] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[12] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[21]/Y ));
    OR2 \cmd_decoder_0/state_RNI6H2M[1]  (.A(
        \cmd_decoder_0/state[7]_net_1 ), .B(
        \cmd_decoder_0/state[1]_net_1 ), .Y(\cmd_decoder_0/N_263 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[1]  
        (.A(\address_encoder_0_adc_data_choice_0[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[1]_net_1 )
        );
    DFN1C0 \address_encoder_0/m2start_pulse_counter[2]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[2]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_0), .Q(
        \address_encoder_0/m2start_pulse_counter[2] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[23]  (.D(
        \cmd_decoder_0/sample_counter[22]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[23]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[6]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[6] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[6]_net_1 )
        );
    OA1C \trans_m2_0/shift_reg_boo_RNO[21]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[20]_net_1 ), .C(\trans_m2_0/N_343 ), 
        .Y(\trans_m2_0/N_106 ));
    OA1C \address_encoder_0/m2_send_en_RNIV4JG  (.A(adc_rstn_test), .B(
        \state_RNISNSU1_0[0] ), .C(\address_encoder_0/m2_send_en ), .Y(
        \address_encoder_0/N_89 ));
    NOR2A \trans_m5m7_0/q55  (.A(address_encoder_0_m5_sendata_reg_wren)
        , .B(DSP_XWE_c), .Y(\trans_m5m7_0/q55_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[24]  (.D(
        \cmd_decoder_0/N_1259 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[24]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[10]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[10]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[25]  (.A(
        \trans_m5m7_0/N_369 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[25] ));
    DFN1E0C0 \trans_m2_0/counter[23]  (.D(\trans_m2_0/N_285 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[23]_net_1 ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[5]  (.A(
        \address_encoder_0/m2start_pulse_counter[4] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[5] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[8]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[8]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[0] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[16]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[15]_net_1 ), .C(\trans_m2_0/N_338 ), 
        .Y(\trans_m2_0/N_65 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[8]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[7]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[8]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_384 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[7]  (.A(\trans_m7_0/N_351 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[7] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[10]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_369 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[10]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[11]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[11]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_15 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_e0 ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 ));
    AO1 \cmd_decoder_0/bit_counter_RNI3PCVR_0[3]  (.A(
        \cmd_decoder_0/N_251 ), .B(\cmd_decoder_0/N_259_1 ), .C(
        \cmd_decoder_0/N_399 ), .Y(\cmd_decoder_0/N_232 ));
    IOPAD_BI \Data_pad[4]/U0/U0  (.D(\Data_pad[4]/U0/NET1 ), .E(
        \Data_pad[4]/U0/NET2 ), .Y(\Data_pad[4]/U0/NET3 ), .PAD(
        Data[4]));
    DFN1E1C0 \trans_m7_0/q7[9]  (.D(\tri_state_ctrl_0_Dout[9] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[9]_net_1 ));
    NOR3 \cmd_decoder_0/state_RNO_1[0]  (.A(
        \cmd_decoder_0/headreg[2]_net_1 ), .B(
        \cmd_decoder_0/headreg[3]_net_1 ), .C(\cmd_decoder_0/N_354 ), 
        .Y(\cmd_decoder_0/state_ns_0_0_0_a3_0[0] ));
    DFN1E1C0 \trans_m7_0/q7[13]  (.D(\tri_state_ctrl_0_Dout[13] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[13]_net_1 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[16]  (.A(
        \trans_m7_0/m7_t_mc_reg[16]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[15]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_392 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[28]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[27]_net_1 ), .C(\trans_m2_0/N_351 ), 
        .Y(\trans_m2_0/N_177 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[2]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[20]  (.A(
        \trans_m5m7_0/bit_count[19]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[20] ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[4]  (.A(
        \cmd_decoder_0/rcv_shftreg[0]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[3]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_425 ));
    NOR2B \cmd_decoder_0/sample_counter_RNIQROE7[9]  (.A(
        \cmd_decoder_0/N_550 ), .B(
        \cmd_decoder_0/sample_counter[9]_net_1 ), .Y(
        \cmd_decoder_0/N_552 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[5]  (.A(
        \trans_m5m7_0/N_349 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[5] ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[12]  (.D(
        \edib_ctrl_reg_0/N_13 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[12]_net_1 ));
    NOR2 \trans_m2_0/counter_RNITEOB[12]  (.A(
        \trans_m2_0/counter[12]_net_1 ), .B(
        \trans_m2_0/counter[13]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_15 ));
    DFN1E1C0 \trans_m2_0/m2_data[8]  (.D(\tri_state_ctrl_0_Dout[8] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[8]_net_1 ));
    IOIN_IB \dsp_address_pad[0]/U0/U1  (.YIN(
        \dsp_address_pad[0]/U0/NET1 ), .Y(\dsp_address_c[0] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[4]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[4] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[4]_net_1 ));
    NOR2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[0]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[0]_net_1 ), .B(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_221 ));
    NOR2A \trans_m7_0/bit_count_RNO[4]  (.A(
        \trans_m7_0/bit_count[3]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[4] ));
    IOTRI_OB_EB \m2_bzo_pad/U0/U1  (.D(m2_bzo_c), .E(VCC), .DOUT(
        \m2_bzo_pad/U0/NET1 ), .EOUT(\m2_bzo_pad/U0/NET2 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[3]  (.D(\cmd_decoder_0/N_424 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[3]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[9]  (.D(\cmd_decoder_0/N_430 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[9]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[30]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[29]_net_1 ), .C(\trans_m2_0/N_352 ), 
        .Y(\trans_m2_0/N_181 ));
    OR2A \trans_m7_0/state_RNO_1[1]  (.A(\trans_m7_0/un1_bit_count_2 ), 
        .B(m7_send_en_TEST), .Y(\trans_m7_0/state_ns_0_0_tz[1] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[12]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[12] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[12]_net_1 )
        );
    OR2 \cmd_decoder_0/sample_counter_RNI1GJQ[10]  (.A(
        \cmd_decoder_0/sample_counter[20]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[10]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_6 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[25]  (.D(
        \trans_m5m7_0/bit_count_5[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[25]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[19]  (.A(
        \trans_m7_0/q7[9]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[19] ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[31]  (.A(
        \trans_m5m7_0/q5[15]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[31] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[33]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[32]_net_1 ), .C(\trans_m2_0/N_354 ), 
        .Y(\trans_m2_0/N_238 ));
    DFN1 \cmd_decoder_0/rst_counter[9]  (.D(
        \cmd_decoder_0/rst_counter_RNO[9]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[9]_net_1 ));
    OR2 \cmd_decoder_0/state_RNIAL2M[9]  (.A(
        \cmd_decoder_0/state[9]_net_1 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .Y(\cmd_decoder_0/N_259 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_net_1 ));
    IOPAD_IN \CLKA_pad/U0/U0  (.PAD(CLKA), .Y(\CLKA_pad/U0/NET1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[11]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[11]/Y ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[30]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[30]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[29]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_374 ));
    NOR2B \trans_m2_0/shift_reg_boo_RNO[35]  (.A(
        \trans_m2_0/shift_reg_boo[34]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_6[35] ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[15]  (.D(
        \cmd_decoder_0/rcv_shftreg[33]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[15] ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[7]  (.A(
        \cmd_decoder_0/rcv_shftreg[3]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[6]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_428 ));
    DFN1 \edib_m2m5m7_clkgen_0/counter[2]  (.D(
        \edib_m2m5m7_clkgen_0/counter_3[2] ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[20]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[19]_net_1 ), .Y(\trans_m2_0/N_279 ));
    OA1C \address_encoder_0/m7_send_en_0_RNIK8A3E  (.A(
        \address_encoder_0/N_78 ), .B(m7_send_en_TEST_0), .C(
        \address_encoder_0/N_91 ), .Y(\address_encoder_0/N_22 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[17]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[17]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[16]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_361 ));
    NOR2B \cmd_decoder_0/state_RNO_3[5]  (.A(
        \cmd_decoder_0/state[5]_net_1 ), .B(
        \cmd_decoder_0/md2udireg_net_1 ), .Y(\cmd_decoder_0/N_1281 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[19]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[19]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[13]  (.D(
        \cmd_decoder_0_rcvd_datareg[13] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[13]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[0]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[0]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_53 ));
    NOR3C \trans_m7_0/bit_count_RNIHSD22[5]  (.A(
        \trans_m7_0/m7_t_mc_reg104_9 ), .B(
        \trans_m7_0/m7_t_mc_reg104_8 ), .C(
        \trans_m7_0/m7_t_mc_reg104_13 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_17 ));
    OA1 \trans_m2_0/counter_RNO[11]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[10]_net_1 ), .Y(\trans_m2_0/N_261 ));
    AO1 \cmd_decoder_0/state_RNO_0[5]  (.A(
        \cmd_decoder_0/state_ns_0_i_i_a3_14[5] ), .B(
        \cmd_decoder_0/N_610_61 ), .C(\cmd_decoder_0/N_1281 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_0[5] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[28]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[28]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[11]  (.A(
        \trans_m7_0/bit_count[10]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[11] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[9]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[9]_net_1 ));
    MX2A \cmd_decoder_0/sample_counter_RNO[0]  (.A(
        \cmd_decoder_0/N_352 ), .B(\cmd_decoder_0/N_552 ), .S(
        \cmd_decoder_0/N_263 ), .Y(\cmd_decoder_0/clr_sample_counter ));
    DFN1E0C0 \trans_m2_0/counter[8]  (.D(\trans_m2_0/N_255 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[8]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[34]  (.D(
        \trans_m2_0/shift_reg_boo_6[34] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[34]_net_1 ));
    NOR2 \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNIJQIE[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]_net_1 ), .Y(
        \cnt_step_RNIJQIE[1] ));
    OR3 \cmd_decoder_0/rst_counter_RNIQLTB[11]  (.A(
        \cmd_decoder_0/m33_0_o2_29 ), .B(\cmd_decoder_0/m33_0_o2_28 ), 
        .C(\cmd_decoder_0/m33_0_o2_30 ), .Y(\cmd_decoder_0/N_267 ));
    MX2 \MUX2_0/MX2_Result[14]  (.A(\edib_ctrl_reg_0_dsp_data_out[14] )
        , .B(\ADC_TOP_0_dataout[14] ), .S(\MUX2_0/SelAux_0[11] ), .Y(
        \MUX2_0_Result[14] ));
    DFN0E0C0 \trans_m7_0/bit_count[27]  (.D(
        \trans_m7_0/bit_count_5[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[27]_net_1 ));
    NOR3B \cmd_decoder_0/state_RNO_13[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[19]_net_1 ), .B(
        \cmd_decoder_0/state[3]_net_1 ), .C(\cmd_decoder_0/N_275 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_5[5] ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[4]  (.D(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[4] ));
    DFN1E0C0 \trans_m2_0/counter[17]  (.D(\trans_m2_0/N_273 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[17]_net_1 ));
    OR3 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_6  (.A(
        \dsp_address_c[6] ), .B(\dsp_address_c[9] ), .C(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_1_net_1 ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_6_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[10]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[10]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[9]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_386 ));
    IOPAD_IN \dsp_address_pad[17]/U0/U0  (.PAD(dsp_address[17]), .Y(
        \dsp_address_pad[17]/U0/NET1 ));
    NOR3 \trans_m2_0/state_RNO[0]  (.A(\trans_m2_0/N_704 ), .B(
        \trans_m2_0/state[1]_net_1 ), .C(\trans_m2_0/N_473 ), .Y(
        \trans_m2_0/state_RNO[0]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[8]  (.A(
        \trans_m5m7_0/N_384 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[8] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[8]  (.D(\trans_m2_0/N_27 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[8]_net_1 ));
    AX1C \edib_m2m5m7_clkgen_0/un5_counter_I_7  (.A(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[0]_net_1 ), .C(
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/I_7 ));
    IOPAD_IN \dsp_address_pad[3]/U0/U0  (.PAD(dsp_address[3]), .Y(
        \dsp_address_pad[3]/U0/NET1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[28]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[28]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[11]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[10]_net_1 ), .C(\trans_m2_0/N_332 ), 
        .Y(\trans_m2_0/N_50 ));
    DFN1C0 \address_encoder_0/m5_send_en/U1  (.D(
        \address_encoder_0/m5_send_en/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_1), .Q(address_encoder_0_m5_send_en));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[19]  (.D(\trans_m2_0/N_110 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[19]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[16]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[16]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[2]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[2]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[0]  (.D(
        \trans_m2_0/shift_reg_boo_6[0] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[0]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[4]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[3]_net_1 ), .C(\trans_m2_0/N_327 ), 
        .Y(\trans_m2_0/N_19 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[38]  (.D(
        \trans_m2_0/shift_reg_bzo_6[38] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[38]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3]/Y ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[14]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[14]/Y ));
    NOR3A \trans_m5m7_0/bit_count_RNI3E141[11]  (.A(
        \trans_m5m7_0/un1_bit_count_2_4 ), .B(
        \trans_m5m7_0/bit_count[11]_net_1 ), .C(
        \trans_m5m7_0/bit_count[12]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_11 ));
    NOR3C \cmd_decoder_0/state_RNO_11[5]  (.A(
        \cmd_decoder_0/N_616_64_3 ), .B(\cmd_decoder_0/N_616_64_2 ), 
        .C(\cmd_decoder_0/state_ns_0_i_i_a3_8[5] ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_11[5] ));
    NOR3A \address_encoder_0/m2_wr_reg_en_RNO_1  (.A(
        \address_encoder_0/N_106 ), .B(\dsp_address_c[1] ), .C(
        \address_encoder_0/N_63 ), .Y(
        \address_encoder_0/m2_wr_reg_en_0_sqmuxa_i_a2_0 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[8]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[8]/Y ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[21]  (.D(
        \cmd_decoder_0/sample_counter[20]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[21]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[19]  (.A(
        \trans_m5m7_0/N_363 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[19] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[2] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[20]  (.D(\trans_m2_0/N_112 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[20]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[6]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[6]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[5]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_350 ));
    DFN1C0 \address_encoder_0/clr_m7_loadone_flag/U1  (.D(
        \address_encoder_0/clr_m7_loadone_flag/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_1), .Q(
        address_encoder_0_clr_m7_loadone_flag));
    NOR3C \cmd_decoder_0/rst_counter_RNO[8]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_367 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[8]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[14]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[14]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[6] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[11]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[11]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[10]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_355 ));
    NOR2B \cmd_decoder_0/headreg_RNO[0]  (.A(md2udi_c), .B(
        \cmd_decoder_0/N_254_1 ), .Y(\cmd_decoder_0/N_245 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[9]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[9] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[9]_net_1 )
        );
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[23]  (.D(
        \cmd_decoder_0/N_1258 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[26]  (.D(\cmd_decoder_0/N_180 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[26]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[21]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[13] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[12] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[21]/Y ));
    DFN0E0C0 \trans_m7_0/bit_count[16]  (.D(
        \trans_m7_0/bit_count_5[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[16]_net_1 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[29]  (.A(
        \trans_m5m7_0/q5[14]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[29] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[11]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[11] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[11]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[8]  (.D(\trans_m7_0/bit_count_5[8] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[8]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[17]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[17]_net_1 ));
    IOTRI_OB_EB \tst_state_pad[0]/U0/U1  (.D(\tst_state_c[0] ), .E(VCC)
        , .DOUT(\tst_state_pad[0]/U0/NET1 ), .EOUT(
        \tst_state_pad[0]/U0/NET2 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[31]  (.D(\trans_m2_0/N_191 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[31]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[18]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[17]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_196 ));
    AO1A \trans_m2_0/m2_data_RNIV8781_0[3]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[3]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_331 ));
    AO1A \cmd_decoder_0/state_RNO[6]  (.A(
        \cmd_decoder_0/state[5]_net_1 ), .B(
        \cmd_decoder_0/state_i_0[6] ), .C(
        \cmd_decoder_0/md2udireg_net_1 ), .Y(
        \cmd_decoder_0/state_RNO[6]_net_1 ));
    IOTRI_OB_EB \adc_clk_5M_test_pad/U0/U1  (.D(sam_clk_5M_out_net_1), 
        .E(VCC), .DOUT(\adc_clk_5M_test_pad/U0/NET1 ), .EOUT(
        \adc_clk_5M_test_pad/U0/NET2 ));
    OR3B \address_encoder_0/m7_loadone_reg_rden_0_sqmuxa_i_o2  (.A(
        \dsp_address_c[3] ), .B(\dsp_address_c[0] ), .C(
        \dsp_address_c[4] ), .Y(\address_encoder_0/N_73 ));
    NOR3A \address_encoder_0/m2start_pulse_counter_RNIG9GP[3]  (.A(
        \address_encoder_0/m10_4 ), .B(
        \address_encoder_0/m2start_pulse_counter[5] ), .C(
        \address_encoder_0/m2start_pulse_counter[3] ), .Y(
        \address_encoder_0/m10_6 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[6]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[5]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_220 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[31]  (.A(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[30]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_1266 ));
    AO1A \trans_m2_0/m2_data_RNIVULH_0[11]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[11]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_347 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_4_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[10]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[10]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[10]_net_1 )
        , .Y(\ADC_TOP_0_dataout[10] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[13]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[13] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[13]_net_1 )
        );
    OR3A \address_encoder_0/mux_ctrl_2_i_o3  (.A(\dsp_address_c[4] ), 
        .B(\dsp_address_c[3] ), .C(\address_encoder_0/N_66 ), .Y(
        \address_encoder_0/N_71 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[7]  (.D(
        \cmd_decoder_0_rcvd_datareg[7] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[7]_net_1 ));
    XNOR2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNO[4]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_10 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_348 ));
    DFN1 \cmd_decoder_0/rst_counter[13]  (.D(
        \cmd_decoder_0/rst_counter_RNO[13]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[13]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[8]  (.D(
        \cmd_decoder_0/sample_counter[7]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[8]_net_1 ));
    OR3 \cmd_decoder_0/rst_counter_RNINI81[11]  (.A(
        \cmd_decoder_0/rst_counter[12]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[11]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_5 ), .Y(\cmd_decoder_0/m33_0_o2_19 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[27]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[26]_net_1 ), .C(\trans_m2_0/N_348 ), 
        .Y(\trans_m2_0/N_175 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[0]  (.D(\cmd_decoder_0/N_1270 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[0]_net_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI4CKL1[8]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[8]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[8] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[9]  (.D(\trans_m2_0/N_38 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[9]_net_1 ));
    NOR2A \tri_state_ctrl_0/Dout_1_12  (.A(\Data_in[2] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[2] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[18]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[18]_net_1 ));
    MX2 \address_encoder_0/m5_send_en_0/U0  (.A(
        \address_encoder_0/N_14 ), .B(address_encoder_0_m5_send_en_0), 
        .S(xzcs0and1_c), .Y(\address_encoder_0/m5_send_en_0/Y ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[20]  (.A(
        \trans_m7_0/m7_t_mc_reg[20]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[19]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_396 ));
    IOPAD_BI \Data_pad[10]/U0/U0  (.D(\Data_pad[10]/U0/NET1 ), .E(
        \Data_pad[10]/U0/NET2 ), .Y(\Data_pad[10]/U0/NET3 ), .PAD(
        Data[10]));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[6]  (.D(\cmd_decoder_0/N_427 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[6]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[24]  (.D(\cmd_decoder_0/N_184 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[24]_net_1 ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNICK321[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/m7_4 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/m7_3 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_63_mux ));
    DFN0E0C0 \trans_m5m7_0/bit_count[21]  (.D(
        \trans_m5m7_0/bit_count_5[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[21]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[29]  (.D(
        \cmd_decoder_0/rst_counter_RNO[29]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[29]_net_1 ));
    AND3 \edib_mode2_clkgen_0/un5_counter1_I_13  (.A(
        \edib_mode2_clkgen_0/DWACT_FINC_E[0] ), .B(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ), .C(
        \edib_mode2_clkgen_0/counter1[4]_net_1 ), .Y(
        \edib_mode2_clkgen_0/N_3 ));
    OR3A \trans_m2_0/shift_reg_boo_RNO[39]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/state[1]_net_1 ), 
        .C(\trans_m2_0/shift_reg_boo[38]_net_1 ), .Y(\trans_m2_0/N_80 )
        );
    NOR2A \trans_m5m7_0/bit_count_RNO[13]  (.A(
        \trans_m5m7_0/bit_count[12]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[13] ));
    AO1 \cmd_decoder_0/bit_counter_RNI3PCVR[3]  (.A(
        \cmd_decoder_0/N_251 ), .B(\cmd_decoder_0/N_259_0 ), .C(
        \cmd_decoder_0/N_399 ), .Y(\cmd_decoder_0/N_232_0 ));
    OR2 \cmd_decoder_0/rst_counter_RNITG6[17]  (.A(
        \cmd_decoder_0/rst_counter[17]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[18]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_1 ));
    AO1 \cmd_decoder_0/state_RNO[2]  (.A(
        \cmd_decoder_0/state[1]_net_1 ), .B(\cmd_decoder_0/N_552 ), .C(
        \cmd_decoder_0/state_ns_i_a2_i_0_0[2] ), .Y(
        \cmd_decoder_0/state_RNO[2]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[2]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_361 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[2]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/int_counter[6]  (.D(
        \cmd_decoder_0/int_counter[5]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[6]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[14]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[14] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[14]_net_1 )
        );
    NOR2 \trans_m5m7_0/bit_count_RNILSL1[0]  (.A(
        \trans_m5m7_0/bit_count[0]_net_1 ), .B(
        \trans_m5m7_0/bit_count[3]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_3 ));
    INV \edib_mode2_clkgen_0/un5_counter1_I_4  (.A(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_4_0 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[2]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[1]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_226 ));
    DFN0C0 \trans_m5m7_0/state[1]  (.D(\trans_m5m7_0/state_ns[1] ), 
        .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/state[1]_net_1 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[21]  (.A(
        \trans_m5m7_0/q5[10]_net_1 ), .B(
        address_encoder_0_m5_send_en_0), .Y(
        \trans_m5m7_0/m5_t_mc_reg_19[21] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[5]/Y ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[13]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[13]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[5] ));
    NOR2A \trans_m7_0/bit_count_RNO[24]  (.A(
        \trans_m7_0/bit_count[23]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[24] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[22]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[22]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[23]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[23]_net_1 ));
    AO1 \trans_m2_0/shift_reg_bzo_RNO[39]  (.A(
        \trans_m2_0/shift_reg_bzo[38]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/state[1]_net_1 ), 
        .Y(\trans_m2_0/shift_reg_bzo_6[39] ));
    DFN1E1C0 \trans_m2_0/m2_data[14]  (.D(\tri_state_ctrl_0_Dout[14] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[14]_net_1 ));
    DFN1E0P0 \trans_m2_0/shift_reg_boo[39]  (.D(\trans_m2_0/N_80 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(m2_boo_c));
    NOR2A \trans_m7_0/bit_count_RNI48GI[0]  (.A(
        \trans_m7_0/bit_count[15]_net_1 ), .B(
        \trans_m7_0/bit_count[0]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_3 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[15]  (.D(\cmd_decoder_0/N_202 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[15]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[26]  (.A(
        \cmd_decoder_0/rst_counter[26]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[25]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_385 ));
    NOR2B \cmd_decoder_0/headreg_RNO[4]  (.A(
        \cmd_decoder_0/headreg[3]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_35 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[26]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[26]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[24]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[24]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[2]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[2]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[1]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_378 ));
    IOPAD_TRI \pt_MUX2_pad[1]/U0/U0  (.D(\pt_MUX2_pad[1]/U0/NET1 ), .E(
        \pt_MUX2_pad[1]/U0/NET2 ), .PAD(pt_MUX2[1]));
    DFN1E0C0 \trans_m2_0/counter[4]  (.D(\trans_m2_0/N_247 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[4]_net_1 ));
    OR2 \cmd_decoder_0/sample_counter_RNI3HIQ[11]  (.A(
        \cmd_decoder_0/sample_counter[11]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[12]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_10 ));
    IOPAD_TRI \adc_fsync_out_pad/U0/U0  (.D(
        \adc_fsync_out_pad/U0/NET1 ), .E(\adc_fsync_out_pad/U0/NET2 ), 
        .PAD(adc_fsync_out));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[16]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[16]_net_1 ));
    MX2 \MUX2_0/MX2_Result[4]  (.A(\edib_ctrl_reg_0_dsp_data_out[4] ), 
        .B(\ADC_TOP_0_dataout[4] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[4] ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[5]  (.A(
        \trans_m7_0/m7_t_mc_reg[5]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[4]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_381 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[6]/Y ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[0]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[0]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[19]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[19]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[18]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_363 ));
    DFN1E1C0 \cmd_decoder_0/int_counter[3]  (.D(
        \cmd_decoder_0/int_counter[2]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[3]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[25]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[24]_net_1 ), .C(\trans_m2_0/N_346 ), 
        .Y(\trans_m2_0/N_163 ));
    CLKIO \CLKBUF_0/U0/U1  (.A(\CLKBUF_0/U0/NET1 ), .Y(DSP_CLK_TEST));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[20]  (.A(\trans_m7_0/N_396 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[20] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[10]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[10]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[9]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_354 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[4]  (.A(\trans_m7_0/N_348 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[4] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[5]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[5]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[16]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[16]_net_1 ));
    DFN1 \edib_m5m7_clkgen_0/clk_m5m7  (.D(
        \edib_m5m7_clkgen_0/clk_m5m7_RNO_net_1 ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/clk_m5m7_i ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[3]  (.A(\trans_m7_0/N_379 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[3] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[7]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[7]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[36]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[35]_net_1 ), .Y(\trans_m2_0/N_311 ));
    XOR2 \trans_m2_0/m2_check_RNO_3  (.A(\tri_state_ctrl_0_Dout[8] ), 
        .B(\tri_state_ctrl_0_Dout[9] ), .Y(\trans_m2_0/un3_m2_check_7 )
        );
    DFN1C0 \address_encoder_0/m7_loadone_reg_rden/U1  (.D(
        \address_encoder_0/m7_loadone_reg_rden/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_1), .Q(
        address_encoder_0_m7_loadone_reg_rden));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[22]  (.A(\trans_m7_0/N_366 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[22] ));
    XNOR2 \edib_m5m7_clkgen_0/counter_RNO[3]  (.A(
        \edib_m5m7_clkgen_0/N_9 ), .B(
        \edib_m5m7_clkgen_0/counter[3]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/N_13_i ));
    AXOI5 \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_RNO[2]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[1]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[0]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5[2]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_60_5_3[2] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[0]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[0]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        adc_data3_test_c));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[16]  (.D(\trans_m2_0/N_93 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[16]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[8]  (.D(
        \trans_m5m7_0/bit_count_5[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[8]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[2]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[2]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_49 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[4]/Y ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[20]  (.A(
        \trans_m5m7_0/N_396 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[20] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[12]  (.D(
        \cmd_decoder_0/sample_counter[11]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[12]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[30]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[29]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_172 ));
    XOR2 \edib_m2m5m7_clkgen_0/un5_counter_I_9  (.A(
        \edib_m2m5m7_clkgen_0/N_3 ), .B(
        \edib_m2m5m7_clkgen_0/counter[3]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/I_9 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[10]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[10]_net_1 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI9BOR[17]  (.A(
        \cmd_decoder_0/bit_counter[17]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[18]_net_1 ), .Y(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_1 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[15]  (.A(\trans_m7_0/N_359 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[15] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[5]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[4]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[5]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_349 ));
    OA1 \trans_m2_0/counter_RNO[3]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[2]_net_1 ), .Y(\trans_m2_0/N_245 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[24]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[24]_net_1 ));
    IOTRI_OB_EB \adc_data1_test_pad/U0/U1  (.D(adc_data1_test_c), .E(
        VCC), .DOUT(\adc_data1_test_pad/U0/NET1 ), .EOUT(
        \adc_data1_test_pad/U0/NET2 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[16]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[8] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[16]/Y ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[33]  (.D(\cmd_decoder_0/N_166 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[33]_net_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[8]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[8]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[8] ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIUH1H[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_12_i ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_13_i ));
    AO1D \trans_m2_0/m2_data_RNIJ8DS[7]  (.A(
        \trans_m2_0/m2_data[7]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_338 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[12]  (.D(
        \cmd_decoder_0/rcv_shftreg[27]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[12] ));
    IOPAD_TRI \m5_bzo_pad/U0/U0  (.D(\m5_bzo_pad/U0/NET1 ), .E(
        \m5_bzo_pad/U0/NET2 ), .PAD(m5_bzo));
    DFN1E1C0 \cmd_decoder_0/bit_counter[1]  (.D(\cmd_decoder_0/N_228 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[1]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[0]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_11_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[3]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[3]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[3]_net_1 )
        , .Y(\ADC_TOP_0_dataout[3] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[8]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[8]_net_1 ));
    NOR3 \cmd_decoder_0/bit_counter_RNI09Q91[30]  (.A(
        \cmd_decoder_0/bit_counter[31]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[30]_net_1 ), .C(
        \cmd_decoder_0/bit_counter[32]_net_1 ), .Y(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_3 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[14]  (.D(\trans_m2_0/N_70 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[14]_net_1 ));
    AOI1B \edib_m2m5m7_clkgen_0/counter_RNO[2]  (.A(
        \edib_m2m5m7_clkgen_0/counter13_2 ), .B(
        \edib_m2m5m7_clkgen_0/counter13_1 ), .C(
        \edib_m2m5m7_clkgen_0/I_7 ), .Y(
        \edib_m2m5m7_clkgen_0/counter_3[2] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[24]  (.A(\trans_m7_0/N_368 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[24] ));
    IOTRI_OB_EB \m7_bzo_pad/U0/U1  (.D(m7_bzo_c), .E(VCC), .DOUT(
        \m7_bzo_pad/U0/NET1 ), .EOUT(\m7_bzo_pad/U0/NET2 ));
    OR2A \trans_m5m7_0/state_RNIUM6V8[0]  (.A(
        \trans_m5m7_0/un1_bit_count_2 ), .B(\trans_m5m7_0/N_528 ), .Y(
        \trans_m5m7_0/N_522 ));
    NOR2A \tri_state_ctrl_0/Dout_1_14  (.A(\Data_in[0] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[0] ));
    OR2 \cmd_decoder_0/headreg_RNITEKH[0]  (.A(
        \cmd_decoder_0/headreg[0]_net_1 ), .B(
        \cmd_decoder_0/headreg[1]_net_1 ), .Y(\cmd_decoder_0/N_354 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[15]  (.A(
        \trans_m7_0/m7_t_mc_reg[15]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[14]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_359 ));
    INV AFLSDF_INV_2 (.A(address_encoder_0_edib_interface_rst), .Y(
        AFLSDF_INV_2_net_1));
    DFN1E0C0 \trans_m2_0/counter[14]  (.D(\trans_m2_0/N_267 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[14]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[27]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[27]_net_1 ));
    MX2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[4]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n4 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/next_sta_0_sqmuxa_1_0_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[4]_net_1 ));
    DFN1 \cmd_decoder_0/state_iii[0]  (.D(
        \cmd_decoder_0/state_iii_srst[0] ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/state_iii[0]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[29]  (.D(
        \cmd_decoder_0/N_1264 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[29]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[8]  (.D(\cmd_decoder_0/N_216 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[8]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[15]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[15] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[15]_net_1 )
        );
    OR3 \cmd_decoder_0/sample_counter_RNI86AI2[3]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_7 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_6 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_15 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_18 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[10]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[9]_net_1 ), .C(\trans_m2_0/N_332 ), 
        .Y(\trans_m2_0/N_40 ));
    DFN1E1C0 \trans_m5m7_0/q5[1]  (.D(\tri_state_ctrl_0_Dout[1] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[1]_net_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIFQCG1[12]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[12]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[12] )
        );
    OR2 \cmd_decoder_0/tst_state_RNO[0]  (.A(\cmd_decoder_0/N_288 ), 
        .B(cmd_decoder_0_load), .Y(\cmd_decoder_0/N_160 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[4]  (.D(
        \edib_ctrl_reg_0/N_45 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[4]_net_1 ));
    INV AFLSDF_INV_0 (.A(address_encoder_0_edib_interface_rst), .Y(
        AFLSDF_INV_0_net_1));
    DFN0E0C0 \trans_m5m7_0/bit_count[18]  (.D(
        \trans_m5m7_0/bit_count_5[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[18]_net_1 ));
    NOR2 \trans_m7_0/state_RNI1RIG[0]  (.A(\trans_m7_0/state[0]_net_1 )
        , .B(m7_send_en_TEST_0), .Y(\trans_m7_0/N_528 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[14]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[7]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[14] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[35]  (.D(
        \trans_m2_0/shift_reg_boo_6[35] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[35]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[13]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[12]_net_1 ), .C(\trans_m2_0/N_334 ), 
        .Y(\trans_m2_0/N_54 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[0]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[0]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        adc_data2_test_c));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[6]  (.A(
        \cmd_decoder_0/rcv_shftreg[2]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[5]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_427 ));
    OR2A \address_encoder_0/state_RNIBJC[0]  (.A(
        \address_encoder_0/state[0]_net_1 ), .B(\state_RNISNSU1_0[0] ), 
        .Y(\address_encoder_0/N_10 ));
    XOR2 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI3TG8[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_54 ));
    IOPAD_TRI \pt_MUX1_pad[1]/U0/U0  (.D(\pt_MUX1_pad[1]/U0/NET1 ), .E(
        \pt_MUX1_pad[1]/U0/NET2 ), .PAD(pt_MUX1[1]));
    NOR2A \tri_state_ctrl_0/Dout_1_13  (.A(\Data_in[1] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[1] ));
    NOR2A \edib_ctrl_reg_0/m2_sendone_flag_RNO  (.A(
        address_encoder_0_edib_interface_rst), .B(
        \state_RNISNSU1_0[0] ), .Y(
        \edib_ctrl_reg_0/m2_sendone_flag_1_sqmuxa ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[29]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[28]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_174 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[22]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_381 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[22]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[9]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_368 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[9]_net_1 ));
    NOR3 \trans_m2_0/shift_reg_bzo_RNO[0]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/state_1[1]_net_1 )
        , .C(\trans_m2_0/m2_check_net_1 ), .Y(
        \trans_m2_0/shift_reg_bzo_6[0] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[15]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[14]_net_1 ), .C(\trans_m2_0/N_337 ), 
        .Y(\trans_m2_0/N_61 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[8]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[8]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[0] ));
    XOR2 \trans_m2_0/m2_check_RNO_8  (.A(\tri_state_ctrl_0_Dout[0] ), 
        .B(\tri_state_ctrl_0_Dout[1] ), .Y(\trans_m2_0/un3_m2_check_3 )
        );
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[13]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[13]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[5] ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[29]  (.A(\trans_m7_0/N_405 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[29] ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[28]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[28]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[27]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_404 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1] ), .B(adc_data1_test_c)
        , .S(\ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[1]/Y ));
    DFN1E1C0 \cmd_decoder_0/int_counter[7]  (.D(
        \cmd_decoder_0/int_counter[6]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[7]_net_1 ));
    IOPAD_BI \Data_pad[11]/U0/U0  (.D(\Data_pad[11]/U0/NET1 ), .E(
        \Data_pad[11]/U0/NET2 ), .Y(\Data_pad[11]/U0/NET3 ), .PAD(
        Data[11]));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[5]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[5]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[13]  (.A(
        \trans_m7_0/bit_count[12]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[13] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[0]/U0  (.A(
        adc_data1_test_c), .B(adc_din1_c), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[0]/Y ));
    NOR2 \trans_m5m7_0/bit_count_RNILSL1[1]  (.A(
        \trans_m5m7_0/bit_count[1]_net_1 ), .B(
        \trans_m5m7_0/bit_count[2]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_8 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[1]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[1]_net_1 ));
    MX2 \address_encoder_0/m5_loadone_reg_rden/U0  (.A(
        address_encoder_0_m5_loadone_reg_rden), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_35 ), .Y(
        \address_encoder_0/m5_loadone_reg_rden/Y ));
    MX2 \address_encoder_0/state_RNISNSU1[0]  (.A(
        \address_encoder_0/N_89 ), .B(\address_encoder_0/N_19_mux ), 
        .S(\address_encoder_0/state[0]_net_1 ), .Y(
        \state_RNISNSU1_0[0] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4]/Y ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[16]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[16]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[8] ));
    AO1B \trans_m7_0/state_RNIGIIOC_0[0]  (.A(\trans_m7_0/N_528 ), .B(
        \trans_m7_0/un1_bit_count_2 ), .C(\trans_m7_0/N_520 ), .Y(
        \trans_m7_0/N_521_1 ));
    NOR2A \edib_ctrl_reg_0/rcv_reg5  (.A(cmd_decoder_0_m2rxirqb), .B(
        cmd_decoder_0_load), .Y(\edib_ctrl_reg_0/rcv_reg5_net_1 ));
    IOIN_IB \dsp_address_pad[12]/U0/U1  (.YIN(
        \dsp_address_pad[12]/U0/NET1 ), .Y(\dsp_address_c[12] ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[1]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[23]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[22]_net_1 ), .Y(\trans_m2_0/N_285 ));
    DFN1E0C0 \trans_m2_0/counter[10]  (.D(\trans_m2_0/N_259 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[10]_net_1 ));
    OR2 \cmd_decoder_0/rst_counter_RNILA8[21]  (.A(
        \cmd_decoder_0/rst_counter[24]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[21]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_15 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[10]  (.A(
        \trans_m7_0/m7_t_mc_reg[10]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[9]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_386 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[34]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[33]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_59 ));
    NOR3C \cmd_decoder_0/state_RNIC3T7N_0[3]  (.A(
        \cmd_decoder_0/N_546 ), .B(\cmd_decoder_0/state[3]_net_1 ), .C(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_5 ), .Y(
        \cmd_decoder_0/N_656 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[15]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[15]/Y ));
    NOR2A \trans_m7_0/bit_count_RNO[21]  (.A(
        \trans_m7_0/bit_count[20]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[21] ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[6]  (.A(
        \trans_m5m7_0/N_382 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[6] ));
    NOR2 \trans_m5m7_0/bit_count_RNICIIC[8]  (.A(
        \trans_m5m7_0/bit_count[8]_net_1 ), .B(
        \trans_m5m7_0/bit_count[11]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_7 ));
    IOTRI_OB_EB \OUTBUF_1/U0/U1  (.D(\cmd_decoder_0.state_iii_i[0] ), 
        .E(VCC), .DOUT(\OUTBUF_1/U0/NET1 ), .EOUT(\OUTBUF_1/U0/NET2 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[27]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[27]_net_1 ));
    OR2B \cmd_decoder_0/headreg_RNIRPRJ[6]  (.A(
        \cmd_decoder_0/state[8]_net_1 ), .B(
        \cmd_decoder_0/headreg[6]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_i_a2_i_i_o2_0[9] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[4]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[3]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[4]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_348 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[17]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[17]_net_1 ));
    NOR3A \trans_m5m7_0/bit_count_RNID32Q1[10]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_9 ), .B(
        \trans_m5m7_0/bit_count[13]_net_1 ), .C(
        \trans_m5m7_0/bit_count[10]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_14 ));
    AX1C \edib_mode2_clkgen_0/clk_send_RNO  (.A(
        \edib_mode2_clkgen_0/counter113_3 ), .B(
        \edib_mode2_clkgen_0/counter113_4 ), .C(
        \edib_mode2_clkgen_0/clk_send_i ), .Y(
        \edib_mode2_clkgen_0/clk_send_RNO_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[3]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_362 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[3]_net_1 ));
    OR2 \cmd_decoder_0/rst_counter_RNIFBU1[1]  (.A(
        \cmd_decoder_0/rst_counter[1]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[2]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_9 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[8]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[8]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[7]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_352 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[27]  (.A(
        \trans_m5m7_0/q5[13]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[27] ));
    DFN1P0 \cmd_decoder_0/state[0]  (.D(\cmd_decoder_0/state_ns[0] ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .PRE(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[0]_net_1 ));
    DFN1 \edib_mode2_clkgen_0/clk_send  (.D(
        \edib_mode2_clkgen_0/clk_send_RNO_net_1 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/clk_send_i ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[4]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_363 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[4]_net_1 ));
    CLKINT \trans_m2_0/state_RNICFHD[0]  (.A(\trans_m2_0/state_0[0] ), 
        .Y(\trans_m2_0/state[0]_net_1 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_6_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[8]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[8]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[8]_net_1 )
        , .Y(\ADC_TOP_0_dataout[8] ));
    DFN1E1C0 \trans_m2_0/m2_data[7]  (.D(\tri_state_ctrl_0_Dout[7] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[7]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[21]  (.D(\trans_m2_0/N_106 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[21]_net_1 ));
    DFN1E0C0 \cmd_decoder_0/headreg[1]  (.D(\cmd_decoder_0/N_41 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[1]_net_1 ));
    OA1B \trans_m2_0/state_0_RNI8O5E[1]  (.A(
        \trans_m2_0/state_0[1]_net_1 ), .B(\state_RNISNSU1_0[0] ), .C(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/counter_1_sqmuxa_0 ));
    NOR2B \trans_m2_0/state_RNIDGHD[1]  (.A(\state_RNISNSU1_0[0] ), .B(
        \trans_m2_0/state[1]_net_1 ), .Y(trans_m2_0_clr_reg_flag));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[17]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[17] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[17]_net_1 ));
    NOR2A \tri_state_ctrl_0/Dout_1_11  (.A(\Data_in[3] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[3] ));
    NOR2 \trans_m5m7_0/bit_count_RNIT4M1[4]  (.A(
        \trans_m5m7_0/bit_count[4]_net_1 ), .B(
        \trans_m5m7_0/bit_count[7]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_5 ));
    DFN0E0C0 \trans_m7_0/bit_count[12]  (.D(
        \trans_m7_0/bit_count_5[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[12]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[1]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[1]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[0]_net_1 ), .S(
        \trans_m5m7_0/N_522 ), .Y(\trans_m5m7_0/N_345 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[13]  (.D(
        \cmd_decoder_0/sample_counter[12]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[13]_net_1 ));
    XOR3 \trans_m2_0/m2_check_RNO_2  (.A(\trans_m2_0/un3_m2_check_1 ), 
        .B(\trans_m2_0/un3_m2_check_0 ), .C(
        \trans_m2_0/un3_m2_check_9 ), .Y(\trans_m2_0/un3_m2_check_12 ));
    AO1 \cmd_decoder_0/bit_counter_RNILOK6P[3]  (.A(
        \cmd_decoder_0/N_251 ), .B(\cmd_decoder_0/N_259_0 ), .C(
        \cmd_decoder_0/N_1296 ), .Y(
        \cmd_decoder_0/bit_counter_RNILOK6P[3]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[5]  (.D(\cmd_decoder_0/N_222 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[5]_net_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[6]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[6]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[6] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[16]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[8] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[7] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[16]/Y ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[7]  (.A(
        \trans_m5m7_0/N_351 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[7] ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_0_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[14]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[14]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[14]_net_1 )
        , .Y(\ADC_TOP_0_dataout[14] ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[27]  (.A(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[26]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1262 ));
    NOR2A \cmd_decoder_0/bit_counter_RNIC1AGA[28]  (.A(
        \cmd_decoder_0/N_541 ), .B(\cmd_decoder_0/N_352 ), .Y(
        \cmd_decoder_0/N_610_61 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[0]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[0]_net_1 ), .B(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[0] ));
    OA1 \trans_m2_0/counter_RNO[37]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[36]_net_1 ), .Y(\trans_m2_0/N_313 ));
    NOR2 \trans_m7_0/bit_count_RNINUL7[4]  (.A(
        \trans_m7_0/bit_count[4]_net_1 ), .B(
        \trans_m7_0/bit_count[5]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_8 ));
    OR3 \trans_m2_0/state_2_RNIL68DB[1]  (.A(\trans_m2_0/N_464 ), .B(
        \trans_m2_0/N_465 ), .C(\trans_m2_0/N_466 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ));
    OR3 \cmd_decoder_0/sample_counter_RNIMUR94[4]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_13 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_12 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_16 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_19 ));
    IOPAD_IN \dsp_address_pad[0]/U0/U0  (.PAD(dsp_address[0]), .Y(
        \dsp_address_pad[0]/U0/NET1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[18]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[18]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[17]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_362 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[25]  (.D(\trans_m2_0/N_163 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[25]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[15]  (.D(\cmd_decoder_0/N_436 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[5]  (.D(\trans_m2_0/N_249 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[5]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[23]  (.D(
        \trans_m5m7_0/bit_count_5[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[23]_net_1 ));
    IOIN_IB \dsp_address_pad[10]/U0/U1  (.YIN(
        \dsp_address_pad[10]/U0/NET1 ), .Y(\dsp_address_c[10] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[23]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[23]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[19]  (.D(
        \trans_m7_0/bit_count_5[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[19]_net_1 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[14]  (.D(
        \edib_ctrl_reg_0/N_9 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[14]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[5]/Y ));
    DFN0P0 \trans_m5m7_0/m5_t_mc_shiftreg[31]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .Q(m5_boo_c));
    NOR2 \trans_m2_0/counter_RNIREQB[20]  (.A(
        \trans_m2_0/counter[20]_net_1 ), .B(
        \trans_m2_0/counter[21]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_13 ));
    IOPAD_TRI \adc_data1_test_pad/U0/U0  (.D(
        \adc_data1_test_pad/U0/NET1 ), .E(\adc_data1_test_pad/U0/NET2 )
        , .PAD(adc_data1_test));
    NOR2A \trans_m5m7_0/bit_count_RNO[8]  (.A(
        \trans_m5m7_0/bit_count[7]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[8] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[18]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_377 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[18]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[15]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[15]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[14]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_391 ));
    DFN1E0C0 \trans_m2_0/counter[37]  (.D(\trans_m2_0/N_313 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[37]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[16]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[8]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[16] ));
    NOR3A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIGO321_0[7]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_56_mux ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ));
    NOR3 \trans_m7_0/state_RNO[0]  (.A(\trans_m7_0/N_615 ), .B(
        \trans_m7_0/state[1]_net_1 ), .C(\trans_m7_0/N_614 ), .Y(
        \trans_m7_0/state_RNO_1[0] ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[18]  (.A(
        \cmd_decoder_0/rcv_shftreg[14]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_439 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[19]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[18]_net_1 ), .C(\trans_m2_0/N_341 ), 
        .Y(\trans_m2_0/N_102 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_ns[0] ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[24]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[24]_net_1 ));
    DFN1E1C0 \trans_m5m7_0/q5[14]  (.D(\tri_state_ctrl_0_Dout[14] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[14]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[6]/Y ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[16]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[15]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[16]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_360 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[19]  (.D(
        \trans_m5m7_0/bit_count_5[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[19]_net_1 ));
    AO1A \trans_m2_0/m2_data_RNIU7781_0[2]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[2]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_329 ));
    NOR2A \trans_m7_0/bit_count_RNO[1]  (.A(
        \trans_m7_0/bit_count[0]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[1] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[17]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[17]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[9] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[20]  (.A(
        \cmd_decoder_0/rst_counter[20]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[19]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_379 ));
    OR3B \address_encoder_0/m5_loadone_reg_rden_0_sqmuxa_i_o2  (.A(
        \dsp_address_c[1] ), .B(\dsp_address_c[2] ), .C(
        \address_encoder_0/N_63 ), .Y(\address_encoder_0/N_72 ));
    DFN1C0 \address_encoder_0/rcvd_datareg_en/U1  (.D(
        \address_encoder_0/rcvd_datareg_en/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_1), .Q(address_encoder_0_rcvd_datareg_en));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[0]  (.A(
        \trans_m7_0/m7_t_mc_reg[0]_net_1 ), .B(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[0] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg/Y ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test_0), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2]/Y ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test_0), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[2] ));
    AX1C \edib_mode2_clkgen_0/un5_counter1_I_7  (.A(
        \edib_mode2_clkgen_0/counter1[1]_net_1 ), .B(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ), .C(
        \edib_mode2_clkgen_0/counter1[2]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_7_0 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[16]  (.D(\trans_m2_0/N_65 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[16]_net_1 ));
    NOR3B \cmd_decoder_0/state_RNIVBS32[6]  (.A(\cmd_decoder_0/N_323 ), 
        .B(\cmd_decoder_0/un1_state_8_0_0_a3_1 ), .C(
        \cmd_decoder_0/N_288 ), .Y(\cmd_decoder_0/N_1296 ));
    NOR2 \trans_m5m7_0/state_RNIIV3K[0]  (.A(
        \trans_m5m7_0/state[0]_net_1 ), .B(
        address_encoder_0_m5_send_en), .Y(\trans_m5m7_0/N_528 ));
    DFN1C0 \trans_m2_0/state[0]  (.D(\trans_m2_0/state_RNO[0]_net_1 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m2_0/state_0[0] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[31]  (.A(
        \cmd_decoder_0/rst_counter[31]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[30]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_390 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[19]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[18]_net_1 ), .C(\trans_m2_0/N_340 ), 
        .Y(\trans_m2_0/N_110 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[30]  (.A(
        \trans_m5m7_0/bit_count[29]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[30] ));
    NOR3A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIVI1H[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/m7_2 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/m7_4 ));
    DFN1 \cmd_decoder_0/rst_counter[17]  (.D(
        \cmd_decoder_0/rst_counter_RNO[17]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[17]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[5]  (.A(
        \cmd_decoder_0/rcv_shftreg[1]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[4]_net_1 ), .S(
        \cmd_decoder_0/N_259 ), .Y(\cmd_decoder_0/N_426 ));
    INV \address_encoder_0/state_RNO[0]  (.A(\state_RNISNSU1_0[0] ), 
        .Y(\address_encoder_0/N_396_i ));
    OA1 \trans_m2_0/counter_RNO[21]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[20]_net_1 ), .Y(\trans_m2_0/N_281 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[16]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[16]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[8] ));
    NOR3C \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out_RNO  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/m50_3 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/m50_2 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_45 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/adc_fsync_out5 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[3]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[3] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[3]_net_1 )
        );
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[28]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[14]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[28] ));
    MX2 \MUX2_0/MX2_Result[5]  (.A(\edib_ctrl_reg_0_dsp_data_out[5] ), 
        .B(\ADC_TOP_0_dataout[5] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[5] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[15]  (.A(
        \trans_m5m7_0/bit_count[14]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[15] ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[23]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[22]_net_1 ), .C(\trans_m2_0/N_345 ), 
        .Y(\trans_m2_0/N_118 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[22]  (.A(
        address_encoder_0_m5_send_en_0), .B(
        \trans_m5m7_0/q5[11]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg_19[22] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[1]  (.A(
        \trans_m5m7_0/N_377 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[1] ));
    NOR2A \trans_m2_0/m2_data5  (.A(address_encoder_0_m2_wr_reg_en), 
        .B(DSP_XWE_c), .Y(\trans_m2_0/m2_data5_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[15]  (.A(
        \trans_m7_0/bit_count[14]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[15] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[15]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[7] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[6] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[15]/Y ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[18]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[18]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[33]  (.D(
        \cmd_decoder_0/N_1268 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[33]_net_1 ));
    NOR3C \cmd_decoder_0/state_RNO_9[5]  (.A(\cmd_decoder_0/N_534 ), 
        .B(\cmd_decoder_0/state_ns_0_i_i_a3_2[5] ), .C(
        \cmd_decoder_0/N_533 ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_10[5] ));
    DFN1E0C0 \trans_m2_0/counter[7]  (.D(\trans_m2_0/N_253 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[7]_net_1 ));
    NOR2B \cmd_decoder_0/headreg_RNO[2]  (.A(
        \cmd_decoder_0/headreg[1]_net_1 ), .B(\cmd_decoder_0/N_254_1 ), 
        .Y(\cmd_decoder_0/N_39 ));
    XA1 \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO_0[4]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_13_i ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_n4 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[7]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[7]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[2]  (.A(
        \trans_m5m7_0/m5_t_no_shiftreg[1]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[2]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_346 ));
    NOR3A \trans_m2_0/counter_RNI47B51[8]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_15 ), .B(
        \trans_m2_0/counter[9]_net_1 ), .C(
        \trans_m2_0/counter[8]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_27 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[13]  (.A(
        \trans_m5m7_0/q5[6]_net_1 ), .B(address_encoder_0_m5_send_en_0)
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[13] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[18]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[10] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[9] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[18]/Y ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[12]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[12]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[11]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_388 ));
    NOR2B \address_encoder_0/m7_send_en_2_i_a2_0  (.A(
        \address_encoder_0/N_101_1 ), .B(\address_encoder_0/N_108 ), 
        .Y(\address_encoder_0/N_91 ));
    OA1 \cmd_decoder_0/rst_counter_RNIEJTC1[0]  (.A(
        \cmd_decoder_0/N_267 ), .B(\cmd_decoder_0/state_iii_nss[0] ), 
        .C(\cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .Y(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_1[0] ));
    NOR2B \cmd_decoder_0/rcv_shftreg_RNI0SO5[17]  (.A(
        \cmd_decoder_0/N_280 ), .B(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .Y(
        \cmd_decoder_0/N_517 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[3]  (.D(
        \cmd_decoder_0/rcv_shftreg[9]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[3] ));
    NOR2A \trans_m5m7_0/bit_count_RNO[23]  (.A(
        \trans_m5m7_0/bit_count[22]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[23] ));
    IOPAD_BI \Data_pad[0]/U0/U0  (.D(\Data_pad[0]/U0/NET1 ), .E(
        \Data_pad[0]/U0/NET2 ), .Y(\Data_pad[0]/U0/NET3 ), .PAD(
        Data[0]));
    DFN1E1C0 \cmd_decoder_0/bit_counter[4]  (.D(\cmd_decoder_0/N_1269 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[4]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[25]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[25] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[25]_net_1 ));
    NOR3B \cmd_decoder_0/rcv_shftreg_RNI563J[7]  (.A(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_0[0] ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_1[0] ), .C(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ), .Y(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ));
    NOR2B \cmd_decoder_0/md2udireg_RNO  (.A(\cmd_decoder_0/N_443 ), .B(
        address_encoder_0_edib_interface_rst), .Y(
        \cmd_decoder_0/md2udireg_RNO_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[9]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[0] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[9]/Y ));
    NOR2 \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[0]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[14]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[13]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[14]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_358 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[16]  (.A(
        \cmd_decoder_0/rcv_shftreg[12]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_437 ));
    OR3 \trans_m2_0/state_2_RNIL68DB_2[1]  (.A(\trans_m2_0/N_464 ), .B(
        \trans_m2_0/N_465 ), .C(\trans_m2_0/N_466 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ));
    NOR2 \cmd_decoder_0/rcv_shftreg_RNIUAQ8[3]  (.A(
        \cmd_decoder_0/rcv_shftreg[3]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[5]_net_1 ), .Y(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_4_0[0] ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[11]  (.D(
        \cmd_decoder_0/sample_counter[10]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[11]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[20]  (.D(
        \trans_m5m7_0/bit_count_5[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[20]_net_1 ));
    DFN1E1 \address_encoder_0/adc_data_choice_0[1]  (.D(
        \dsp_address_c[1] ), .CLK(DSP_CLK_TEST), .E(
        \address_encoder_0/N_81 ), .Q(
        \address_encoder_0_adc_data_choice_0[1] ));
    NOR3A \trans_m2_0/counter_RNIHSON[35]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_9 ), .B(
        \trans_m2_0/counter[36]_net_1 ), .C(
        \trans_m2_0/counter[35]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_24 ));
    AO1A \address_encoder_0/m7_loadone_reg_rden_RNO  (.A(
        \address_encoder_0/N_73 ), .B(\address_encoder_0/N_109 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_31 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[0]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[0]_net_1 ));
    DFN1 \edib_m2m5m7_clkgen_0/counter[1]  (.D(
        \edib_m2m5m7_clkgen_0/counter_3[1] ), .CLK(CLKA_c), .Q(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ));
    AO1 \cmd_decoder_0/state_RNO[8]  (.A(
        \cmd_decoder_0/state[7]_net_1 ), .B(\cmd_decoder_0/N_552 ), .C(
        \cmd_decoder_0/state_ns_i_a2_i_2[8] ), .Y(
        \cmd_decoder_0/N_242 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[8]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[8]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_37 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[16]  (.A(
        \trans_m5m7_0/N_360 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[16] ));
    NOR2A \tri_state_ctrl_0/Dout_1_1  (.A(\Data_in[13] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[13] ));
    NOR3C \trans_m5m7_0/bit_count_RNIKHKH[0]  (.A(
        \trans_m5m7_0/m5_t_mc_reg104_3 ), .B(
        \trans_m5m7_0/m5_t_mc_reg104_2 ), .C(
        \trans_m5m7_0/m5_t_mc_reg104_12 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_16 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[6]  (.D(
        \cmd_decoder_0/sample_counter[5]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[6]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[4]  (.D(\cmd_decoder_0/N_425 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[4]_net_1 ));
    IOBI_IB_OB_EB \Data_pad[4]/U0/U1  (.D(\MUX2_0_Result[4] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[4]/U0/NET3 ), .DOUT(
        \Data_pad[4]/U0/NET1 ), .EOUT(\Data_pad[4]/U0/NET2 ), .Y(
        \Data_in[4] ));
    DFN0E0P0 \trans_m7_0/bit_count[0]  (.D(\trans_m7_0/shift_0 ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[0]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[33]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[32]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_166 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[10]  (.D(
        \cmd_decoder_0_rcvd_datareg[10] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[10]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[7]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[6]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[7]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_351 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[20]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[10]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[20] )
        );
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[28]  (.D(
        \cmd_decoder_0/N_1263 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[28]_net_1 ));
    AO1A \trans_m2_0/m2_data_RNIMDGT_0[9]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[9]_net_1 )
        , .C(\trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_343 ));
    OA1C \cmd_decoder_0/sample_counter_RNI5EVS[9]  (.A(
        \cmd_decoder_0/md2udireg_net_1 ), .B(\cmd_decoder_0/N_553 ), 
        .C(\cmd_decoder_0/sample_counter[9]_net_1 ), .Y(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0_0 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[3] ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[17]  (.A(\trans_m7_0/N_393 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[17] ));
    IOTRI_OB_EB \adc_clk_20M_out_pad/U0/U1  (.D(\cnt_step_RNIJQIE[1] ), 
        .E(VCC), .DOUT(\adc_clk_20M_out_pad/U0/NET1 ), .EOUT(
        \adc_clk_20M_out_pad/U0/NET2 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[6]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[3]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[6] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[6]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[6]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[15]  (.A(
        \trans_m5m7_0/N_359 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[15] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[27]  (.A(
        \trans_m5m7_0/N_403 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[27] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[26]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[26]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[2]  (.D(\trans_m2_0/N_243 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[2]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[18]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[18]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[10] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[12]  (.D(\trans_m2_0/N_52 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[12]_net_1 ));
    MX2 \address_encoder_0/m2start_pulse_counter[3]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[3] ), .B(
        \address_encoder_0/m2start_pulse_counter[3] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[3]/Y ));
    OR2A \trans_m7_0/bit_counter_clear_b0_i_a3_2  (.A(
        \trans_m7_0/N_520 ), .B(\trans_m7_0/un1_bit_count_2 ), .Y(
        \trans_m7_0/shift_2 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[22]  (.A(
        \trans_m5m7_0/N_398 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[22] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[13]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[13]/Y ));
    AX1D \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI18PC[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[2]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[1]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/i4_mux ));
    DFN1 \cmd_decoder_0/rst_counter[10]  (.D(
        \cmd_decoder_0/rst_counter_RNO[10]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[10]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[16]  (.A(
        \trans_m7_0/bit_count[15]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[16] ));
    DFN1E1C0 \trans_m5m7_0/q5[10]  (.D(\tri_state_ctrl_0_Dout[10] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[10]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[30]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[29]_net_1 ), .Y(\trans_m2_0/N_299 ));
    NOR2A \tri_state_ctrl_0/Dout_1_10  (.A(\Data_in[4] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[4] ));
    IOIN_IB \xzcs0and1_pad/U0/U1  (.YIN(\xzcs0and1_pad/U0/NET1 ), .Y(
        xzcs0and1_c));
    NOR2A \trans_m5m7_0/bit_count_RNI9FIC[1]  (.A(
        \trans_m5m7_0/bit_count[15]_net_1 ), .B(
        \trans_m5m7_0/bit_count[1]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_2 ));
    NOR3A \trans_m7_0/bit_count_RNIFJOQ1[19]  (.A(
        \trans_m7_0/m7_t_mc_reg104_22_0 ), .B(
        \trans_m7_0/bit_count[19]_net_1 ), .C(
        \trans_m7_0/bit_count[20]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_22 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[29]  (.A(
        \trans_m5m7_0/N_405 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[29] ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[28]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[28] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[28]_net_1 ));
    IOPAD_TRI \bit35_pad/U0/U0  (.D(\bit35_pad/U0/NET1 ), .E(
        \bit35_pad/U0/NET2 ), .PAD(bit35));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[8]  (.D(\trans_m2_0/N_35 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[8]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[30]  (.A(
        \trans_m5m7_0/N_374 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[30] ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[9]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[9]_net_1 ));
    MX2 \address_encoder_0/m2start_pulse_counter[0]/U0  (.A(
        \address_encoder_0/N_10 ), .B(
        \address_encoder_0/m2start_pulse_counter[0] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[0]/Y ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[31]  (.D(\cmd_decoder_0/N_170 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[31]_net_1 ));
    NOR3A \trans_m7_0/bit_count_RNIAPBF[2]  (.A(
        \trans_m7_0/un1_bit_count_2_8 ), .B(
        \trans_m7_0/bit_count[3]_net_1 ), .C(
        \trans_m7_0/bit_count[2]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_13 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[10]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[10]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[22]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[21]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_188 ));
    OR3 \cmd_decoder_0/rst_counter_RNIL1I[27]  (.A(
        \cmd_decoder_0/rst_counter[27]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[30]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_13 ), .Y(\cmd_decoder_0/m33_0_o2_23 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIITCG1[15]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[15]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[15] )
        );
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[19]  (.A(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[18]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_440 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[0]  (.D(
        \trans_m2_0/shift_reg_bzo_6[0] ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[0]_net_1 ));
    DFN1 \edib_m5m7_clkgen_0/counter[0]  (.D(
        \edib_m5m7_clkgen_0/counter_i[0] ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/counter[0]_net_1 ));
    OR3 \cmd_decoder_0/headreg_RNIUIP82[6]  (.A(\cmd_decoder_0/N_270 ), 
        .B(\cmd_decoder_0/state_ns_i_a2_i_i_o2_0[9] ), .C(
        \cmd_decoder_0/N_262 ), .Y(\cmd_decoder_0/N_279 ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO_0[7]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_15_i ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_16_i ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[27]  (.D(\trans_m2_0/N_167 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[27]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[10]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[10]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_17 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[17]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[9] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[8] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[17]/Y ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[12]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[6]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[12] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[10]  (.A(
        address_encoder_0_m5_send_en_0), .B(\trans_m5m7_0/q5[5]_net_1 )
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[10] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[9]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[9]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[1] ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[13]  (.A(\trans_m7_0/N_357 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[13] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[9]  (.A(
        \cmd_decoder_0/rst_counter[9]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[8]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_368 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[21]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[21]_net_1 ));
    IOTRI_OB_EB \pt_MUX2_pad[0]/U0/U1  (.D(\pt_MUX1_c_c[0] ), .E(VCC), 
        .DOUT(\pt_MUX2_pad[0]/U0/NET1 ), .EOUT(
        \pt_MUX2_pad[0]/U0/NET2 ));
    NOR3C \trans_m7_0/bit_count_RNI1SH91[0]  (.A(
        \trans_m7_0/un1_bit_count_2_6 ), .B(
        \trans_m7_0/m7_t_mc_reg104_8 ), .C(
        \trans_m7_0/un1_bit_count_2_13 ), .Y(
        \trans_m7_0/un1_bit_count_2_16 ));
    NOR2 \trans_m2_0/counter_RNI0HIP[3]  (.A(
        \trans_m2_0/counter[3]_net_1 ), .B(
        \trans_m2_0/counter[7]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_17 ));
    NOR2B \trans_m2_0/counter_RNO[14]  (.A(
        \trans_m2_0/counter[13]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_267 ));
    DFN1P0 \cmd_decoder_0/state[6]  (.D(
        \cmd_decoder_0/state_RNO[6]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .PRE(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state_i_0[6] ));
    XOR2 \trans_m2_0/m2_check_RNO_6  (.A(\tri_state_ctrl_0_Dout[6] ), 
        .B(\tri_state_ctrl_0_Dout[7] ), .Y(\trans_m2_0/un3_m2_check_0 )
        );
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[19]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[11] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[10] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[19]/Y ));
    DFN1 \cmd_decoder_0/rst_counter[23]  (.D(
        \cmd_decoder_0/rst_counter_RNO[23]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[23]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[31]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[30]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_170 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[3]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[3]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_47 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[6]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[6]_net_1 ));
    NOR3A \cmd_decoder_0/rcv_shftreg_RNI86R5[13]  (.A(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .Y(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_3 ));
    MX2 \address_encoder_0/m7_loadone_reg_rden/U0  (.A(
        address_encoder_0_m7_loadone_reg_rden), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_31 ), .Y(
        \address_encoder_0/m7_loadone_reg_rden/Y ));
    OR2A \trans_m7_0/state_RNID46QB[0]  (.A(
        \trans_m7_0/un1_bit_count_2 ), .B(\trans_m7_0/N_528 ), .Y(
        \trans_m7_0/N_522 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[2]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[2]_net_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[3]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[3]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[3] ));
    DFN1E1C0 \trans_m5m7_0/q5[15]  (.D(\tri_state_ctrl_0_Dout[15] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[15]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[3]  (.D(
        \cmd_decoder_0_rcvd_datareg[3] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[3]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[30]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[30]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[29]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_406 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[3]  (.A(
        \trans_m5m7_0/bit_count[2]_net_1 ), .B(\trans_m5m7_0/shift_0 ), 
        .Y(\trans_m5m7_0/bit_count_5[3] ));
    DFN0E0C0 \trans_m7_0/bit_count[30]  (.D(
        \trans_m7_0/bit_count_5[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[30]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[10]  (.A(
        \trans_m5m7_0/N_386 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[10] ));
    NOR2B \cmd_decoder_0/bit_counter_RNICNLCM_0[3]  (.A(
        \cmd_decoder_0/load_0_a3_0_a2_0 ), .B(\cmd_decoder_0/N_610_61 )
        , .Y(\cmd_decoder_0/N_546 ));
    NOR2 \cmd_decoder_0/bit_counter_RNI6AQR[23]  (.A(
        \cmd_decoder_0/bit_counter[27]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[23]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_i_a2_6_0_a2_2[5] ));
    OR3 \cmd_decoder_0/rst_counter_RNI2RS3[3]  (.A(
        \cmd_decoder_0/rst_counter[4]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[3]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_9 ), .Y(\cmd_decoder_0/m33_0_o2_21 ));
    OR3B \cmd_decoder_0/rst_counter_RNO[0]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_359 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[0]_net_1 ));
    DFN1E1C0 \trans_m5m7_0/q5[8]  (.D(\tri_state_ctrl_0_Dout[8] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[8]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[11]  (.A(
        \cmd_decoder_0/rst_counter[11]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[10]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_370 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[25]  (.D(\cmd_decoder_0/N_182 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[25]_net_1 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[26]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[25]_net_1 ), .C(\trans_m2_0/N_349 ), 
        .Y(\trans_m2_0/N_173 ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[8]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[7]_net_1 ), .C(\trans_m2_0/N_331 ), 
        .Y(\trans_m2_0/N_35 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[3] ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[17]  (.D(\trans_m2_0/N_95 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[17]_net_1 ));
    INV \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt_RNO[1]  (.A(
        \pt_MUX1_c_c[1] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX1_c_c_i[1] ));
    NOR2A \trans_m7_0/bit_count_RNO[31]  (.A(
        \trans_m7_0/bit_count[30]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[31] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[24]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_383 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[24]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[29]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[28]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[29]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_373 ));
    NOR3A \edib_ctrl_reg_0/edib_zone_en_i_a3  (.A(
        \edib_ctrl_reg_0/edib_zone_en_i_a3_1_net_1 ), .B(
        address_encoder_0_m5_loadone_reg_rden), .C(
        address_encoder_0_m7_loadone_reg_rden), .Y(
        \edib_ctrl_reg_0/N_58 ));
    NOR2A \trans_m7_0/state_RNIHRAI_0[1]  (.A(
        \trans_m7_0/rden77_net_1 ), .B(\trans_m7_0/state[1]_net_1 ), 
        .Y(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3]/Y ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test_0), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[30]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[30]_net_1 ));
    AO1A \trans_m2_0/m2_data_RNII7DS_0[6]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[6]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_337 ));
    IOPAD_BI \Data_pad[7]/U0/U0  (.D(\Data_pad[7]/U0/NET1 ), .E(
        \Data_pad[7]/U0/NET2 ), .Y(\Data_pad[7]/U0/NET3 ), .PAD(
        Data[7]));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[12]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[12]_net_1 ));
    MX2 \address_encoder_0/m7_send_en_0/U0  (.A(
        \address_encoder_0/N_22 ), .B(m7_send_en_TEST_0), .S(
        xzcs0and1_c), .Y(\address_encoder_0/m7_send_en_0/Y ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[5]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[4]_net_1 ), .C(\trans_m2_0/N_326 ), 
        .Y(\trans_m2_0/N_21 ));
    NOR2 \trans_m2_0/shift_reg_bzo_RNO[1]  (.A(\trans_m2_0/N_388 ), .B(
        \trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_62 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_8_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[6]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[6]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[6]_net_1 )
        , .Y(\ADC_TOP_0_dataout[6] ));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[14]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[13]_net_1 ), .C(\trans_m2_0/N_337 ), 
        .Y(\trans_m2_0/N_70 ));
    NOR2A \trans_m7_0/bit_count_RNO[6]  (.A(
        \trans_m7_0/bit_count[5]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[6] ));
    IOPAD_TRI \OUTBUF_2/U0/U0  (.D(\OUTBUF_2/U0/NET1 ), .E(
        \OUTBUF_2/U0/NET2 ), .PAD(ALL_RST));
    IOIN_IB \dsp_address_pad[9]/U0/U1  (.YIN(
        \dsp_address_pad[9]/U0/NET1 ), .Y(\dsp_address_c[9] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[2]  (.A(
        \cmd_decoder_0/rst_counter[2]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[1]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_361 ));
    NOR2A \trans_m7_0/bit_count_RNO[23]  (.A(
        \trans_m7_0/bit_count[22]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[23] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[22]  (.D(\trans_m2_0/N_116 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[22]_net_1 ));
    IOPAD_IN \dsp_address_pad[13]/U0/U0  (.PAD(dsp_address[13]), .Y(
        \dsp_address_pad[13]/U0/NET1 ));
    NOR3 \trans_m5m7_0/state_RNO[0]  (.A(\trans_m5m7_0/N_615 ), .B(
        \trans_m5m7_0/state[1]_net_1 ), .C(\trans_m5m7_0/N_614 ), .Y(
        \trans_m5m7_0/state_RNO_0[0]_net_1 ));
    OA1C \cmd_decoder_0/bit_counter_RNICNLCM[3]  (.A(
        \cmd_decoder_0/N_507 ), .B(
        \cmd_decoder_0/bit_counter[3]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_251 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[18]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[10] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[9] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[18]/Y ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[14]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[14]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[13]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_390 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[12]  (.D(\cmd_decoder_0/N_433 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[12]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[23]  (.A(
        \trans_m5m7_0/N_367 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[23] ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[17]  (.A(
        \trans_m7_0/q7[8]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[17] ));
    NOR3C \trans_m5m7_0/bit_count_RNICBO6[3]  (.A(
        \trans_m5m7_0/un1_bit_count_2_6 ), .B(
        \trans_m5m7_0/un1_bit_count_2_5 ), .C(
        \trans_m5m7_0/un1_bit_count_2_13 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_16 ));
    DFN1E0C0 \trans_m2_0/counter[34]  (.D(\trans_m2_0/N_307 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[34]_net_1 ));
    NOR3C \cmd_decoder_0/state_RNO_14[5]  (.A(\cmd_decoder_0/N_518 ), 
        .B(\cmd_decoder_0/rcv_shftreg[27]_net_1 ), .C(
        \cmd_decoder_0/state_ns_0_i_i_a3_4[5] ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_8[5] ));
    NOR2A \cmd_decoder_0/bit_counter_RNI9ERR[28]  (.A(bit35_c), .B(
        \cmd_decoder_0/bit_counter[28]_net_1 ), .Y(
        \cmd_decoder_0/state_tr11_10_61_0_a2_4_a2_0_2 ));
    IOTRI_OB_EB \dsp_xint2_pad/U0/U1  (.D(convert_over_out), .E(VCC), 
        .DOUT(\dsp_xint2_pad/U0/NET1 ), .EOUT(\dsp_xint2_pad/U0/NET2 ));
    OR2 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_3  (.A(
        \dsp_address_c[11] ), .B(\dsp_address_c[8] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_3_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[13]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[13]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[12]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_357 ));
    OA1C \cmd_decoder_0/state_RNO_5[4]  (.A(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[15]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[13]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_0_0_0_a2_1_0[4] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[17]  (.A(
        \trans_m7_0/m7_t_mc_reg[17]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[16]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_361 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[23]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[22]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[23]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_399 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[17]  (.D(\cmd_decoder_0/N_438 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ));
    DFN1P0 \ADC_TOP_0/ads_trans_fsm_0/pt_MUX2_1[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/pt_MUX_cnt[0]_net_1 ), .CLK(
        convert_over_out), .PRE(adc_rstn_test), .Q(\pt_MUX1_c_c[0] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[6]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[27]  (.D(\trans_m2_0/N_293 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[27]_net_1 ));
    AO1A \address_encoder_0/clr_m7_loadone_flag_RNO  (.A(
        \address_encoder_0/N_73 ), .B(\address_encoder_0/N_101_1 ), .C(
        xzcs0and1_c), .Y(\address_encoder_0/N_43 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[5]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[5] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[5]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[30]  (.D(\cmd_decoder_0/N_172 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[30]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[29]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_388 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[29]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_check  (.D(\trans_m2_0/un3_m2_check ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_check_net_1 ));
    MX2 \address_encoder_0/m2start_pulse_counter[6]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[6] ), .B(
        \address_encoder_0/m2start_pulse_counter[6] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[6]/Y ));
    OR2A \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNIU54J[3]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_9 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_10 ));
    NOR2B \edib_ctrl_reg_0/m5_loadone_flag_RNO  (.A(
        address_encoder_0_clr_m5_loadone_flag), .B(
        address_encoder_0_edib_interface_rst), .Y(
        \edib_ctrl_reg_0/m5_loadone_flag_1_sqmuxa ));
    MX2 \address_encoder_0/m5_send_en/U0  (.A(\address_encoder_0/N_14 )
        , .B(address_encoder_0_m5_send_en), .S(xzcs0and1_c), .Y(
        \address_encoder_0/m5_send_en/Y ));
    NOR3A \edib_ctrl_reg_0/edib_zone_en_i_a3_0  (.A(
        \edib_ctrl_reg_0/edib_zone_en_i_a3_1_net_1 ), .B(
        address_encoder_0_m5_loadone_reg_rden), .C(
        address_encoder_0_m7_loadone_reg_rden), .Y(
        \edib_ctrl_reg_0/N_58_0 ));
    NOR3B \cmd_decoder_0/rcv_shftreg_RNIE46G[13]  (.A(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_2 ), .B(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_3 ), .C(
        \cmd_decoder_0/N_277 ), .Y(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_5 ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[1]  (.A(
        \trans_m5m7_0/N_345 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[1] ));
    AO1A \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_RNO  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_10 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[4] ), .C(adc_en_test_c), 
        .Y(\ADC_TOP_0/ads_trans_fsm_0/un1_dsp_adc_en_in ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[20]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[20]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[19]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_396 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[2]  (.D(\cmd_decoder_0/N_226 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[2]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[13]  (.D(\trans_m2_0/N_54 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[13]_net_1 ));
    NOR3C \cmd_decoder_0/state_RNO_7[5]  (.A(
        \cmd_decoder_0/state_ns_0_i_i_a3_10[5] ), .B(
        \cmd_decoder_0/state_ns_0_i_i_a3_9[5] ), .C(
        \cmd_decoder_0/state_ns_0_i_i_a3_11[5] ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_13[5] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[0]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[0]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[0] ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[20]  (.D(\cmd_decoder_0/N_441 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[20]_net_1 ));
    DFN1 \edib_mode2_clkgen_0/counter1[2]  (.D(
        \edib_mode2_clkgen_0/I_7_0 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[2]_net_1 ));
    AO1A \trans_m2_0/m2_data_RNIG5DS_0[4]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(\trans_m2_0/m2_data[4]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_333 ));
    NOR3A \cmd_decoder_0/bit_counter_RNIAEGN1[13]  (.A(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_1 ), .B(
        \cmd_decoder_0/bit_counter[14]_net_1 ), .C(
        \cmd_decoder_0/bit_counter[13]_net_1 ), .Y(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_3 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5] ));
    MX2A \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNIL57E1[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/N_63_mux ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_35 ));
    IOBI_IB_OB_EB \Data_pad[10]/U0/U1  (.D(\MUX2_0_Result[10] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[10]/U0/NET3 ), 
        .DOUT(\Data_pad[10]/U0/NET1 ), .EOUT(\Data_pad[10]/U0/NET2 ), 
        .Y(\Data_in[10] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[13]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[13]/Y ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[2]  (.A(
        \trans_m5m7_0/N_378 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[2] ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[9]  (.D(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[9] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[15]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[14]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_202 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[13]  (.A(
        \trans_m7_0/m7_t_mc_reg[13]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[12]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_357 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[23]  (.A(
        \trans_m7_0/q7[11]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[23] ));
    NOR2 \trans_m5m7_0/bit_count_RNICIIC[9]  (.A(
        \trans_m5m7_0/bit_count[9]_net_1 ), .B(
        \trans_m5m7_0/bit_count[10]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_4 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[1] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[1]  (.D(\trans_m2_0/N_66 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[1]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[10]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[10] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[10]_net_1 )
        );
    OR2A \trans_m7_0/bit_counter_clear_b0_i_a3  (.A(\trans_m7_0/N_520 )
        , .B(\trans_m7_0/un1_bit_count_2 ), .Y(\trans_m7_0/shift ));
    OR2 \cmd_decoder_0/sample_counter_RNIDRIQ[15]  (.A(
        \cmd_decoder_0/sample_counter[18]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[15]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_5 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[6]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[5]_net_1 ), .C(\trans_m2_0/N_328 ), 
        .Y(\trans_m2_0/N_23 ));
    OA1 \cmd_decoder_0/state_RNO_0[2]  (.A(\cmd_decoder_0/N_395 ), .B(
        \cmd_decoder_0/N_271 ), .C(\cmd_decoder_0/state[2]_net_1 ), .Y(
        \cmd_decoder_0/state_ns_i_a2_i_0_0[2] ));
    OR2 \cmd_decoder_0/rcv_shftreg_RNI5MV2[31]  (.A(
        \cmd_decoder_0/rcv_shftreg[31]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[29]_net_1 ), .Y(
        \cmd_decoder_0/N_275 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[7]  (.A(
        \trans_m5m7_0/q5[3]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[7] ));
    NOR2B \trans_m2_0/counter_RNO[18]  (.A(
        \trans_m2_0/counter[17]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_275 ));
    IOTRI_OB_EB \m5_bzo_pad/U0/U1  (.D(m5_bzo_c), .E(VCC), .DOUT(
        \m5_bzo_pad/U0/NET1 ), .EOUT(\m5_bzo_pad/U0/NET2 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[9]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[0] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[9]/Y ));
    DFN1C0 \trans_m2_0/state[1]  (.D(\trans_m2_0/N_321 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m2_0/state[1]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[22]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[22]_net_1 ));
    DFN1E0C0 \trans_m2_0/counter[30]  (.D(\trans_m2_0/N_299 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[30]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[13]  (.D(\cmd_decoder_0/N_206 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[13]_net_1 ));
    INV \cmd_decoder_0/state_iii_RNI9JTC[0]  (.A(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(
        \cmd_decoder_0.state_iii_i[0] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[17]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[9] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[8] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[17]/Y ));
    IOPAD_TRI \tst_state_pad[1]/U0/U0  (.D(\tst_state_pad[1]/U0/NET1 ), 
        .E(\tst_state_pad[1]/U0/NET2 ), .PAD(tst_state[1]));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[15]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[15]_net_1 ));
    NOR2B \trans_m2_0/shift_reg_boo_RNO[34]  (.A(
        \trans_m2_0/shift_reg_boo[33]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_6[34] ));
    NOR2A \trans_m7_0/state_RNIHRAI[1]  (.A(\trans_m7_0/rden77_net_1 ), 
        .B(\trans_m7_0/state[1]_net_1 ), .Y(
        \trans_m7_0/load_head_shiftreg_0_sqmuxa ));
    DFN0E0C0 \trans_m7_0/bit_count[2]  (.D(\trans_m7_0/bit_count_5[2] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[2]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[20]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[20]_net_1 ));
    OR2 \trans_m7_0/m7_t_mc_shiftreg_RNO[31]  (.A(\trans_m7_0/N_407 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[31] )
        );
    OA1C \trans_m2_0/shift_reg_bzo_RNO[22]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[21]_net_1 ), .C(\trans_m2_0/N_345 ), 
        .Y(\trans_m2_0/N_157 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[6]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[6]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_41 ));
    DFN0E0C0 \trans_m7_0/bit_count[26]  (.D(
        \trans_m7_0/bit_count_5[26] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[26]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[19]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[11] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[10] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[19]/Y ));
    IOIN_IB \dsp_address_pad[5]/U0/U1  (.YIN(
        \dsp_address_pad[5]/U0/NET1 ), .Y(\dsp_address_c[5] ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[6]  (.A(m7_send_en_TEST_0), .B(
        \trans_m7_0/q7[3]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[6] ));
    OR2A \trans_m7_0/bit_counter_clear_b0_i_a3_1  (.A(
        \trans_m7_0/N_520 ), .B(\trans_m7_0/un1_bit_count_2 ), .Y(
        \trans_m7_0/shift_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[30]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[29]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[30]_net_1 ), .S(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/N_374 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[21]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[21]_net_1 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[29]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[29]_net_1 ));
    OR3C \edib_m5m7_clkgen_0/counter_RNIMVV21[2]  (.A(
        \edib_m5m7_clkgen_0/counter[1]_net_1 ), .B(
        \edib_m5m7_clkgen_0/counter[0]_net_1 ), .C(
        \edib_m5m7_clkgen_0/counter[2]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/N_9 ));
    DFN1E0C0 \cmd_decoder_0/headreg[3]  (.D(\cmd_decoder_0/N_37 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[3]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[11]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[11]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[10]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_387 ));
    OA1 \trans_m2_0/counter_RNO[8]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[7]_net_1 ), .Y(\trans_m2_0/N_255 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[19]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[19]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[11] ));
    DFN1E1C0 \trans_m7_0/q7[10]  (.D(\tri_state_ctrl_0_Dout[10] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[10]_net_1 ));
    INV \edib_m5m7_clkgen_0/counter_RNO[0]  (.A(
        \edib_m5m7_clkgen_0/counter[0]_net_1 ), .Y(
        \edib_m5m7_clkgen_0/counter_i[0] ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[38]  (.D(\trans_m2_0/N_319 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[38]_net_1 ));
    IOPAD_TRI \dsp_xint2_pad/U0/U0  (.D(\dsp_xint2_pad/U0/NET1 ), .E(
        \dsp_xint2_pad/U0/NET2 ), .PAD(dsp_xint2));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[9]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[8]_net_1 ), .C(\trans_m2_0/N_330 ), 
        .Y(\trans_m2_0/N_38 ));
    DFN1E1C0 \trans_m7_0/q7[7]  (.D(\tri_state_ctrl_0_Dout[7] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[7]_net_1 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[15]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[15]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_7 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[1]  (.D(
        \cmd_decoder_0_rcvd_datareg[1] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[1]_net_1 ));
    OR2A \cmd_decoder_0/sample_counter_RNISMII[23]  (.A(
        \cmd_decoder_0/sample_counter[23]_net_1 ), .B(
        \cmd_decoder_0/sample_counter[9]_net_1 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o3_0 ));
    AO1D \trans_m2_0/m2_data_RNIV8781[3]  (.A(
        \trans_m2_0/m2_data[3]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state[1]_net_1 ), .Y(\trans_m2_0/N_330 ));
    IOPAD_IN \dsp_address_pad[15]/U0/U0  (.PAD(dsp_address[15]), .Y(
        \dsp_address_pad[15]/U0/NET1 ));
    DFN1E1C0 \trans_m7_0/q7[5]  (.D(\tri_state_ctrl_0_Dout[5] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[5]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNILCGT[8]  (.A(
        \trans_m2_0/m2_data[8]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_340 ));
    NOR3B \cmd_decoder_0/state_RNO_3[8]  (.A(
        \cmd_decoder_0/state[8]_net_1 ), .B(\cmd_decoder_0/N_264 ), .C(
        \cmd_decoder_0/headreg[6]_net_1 ), .Y(\cmd_decoder_0/N_499 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[26]  (.D(
        \cmd_decoder_0/N_1261 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232_0 ), .Q(
        \cmd_decoder_0/rcv_shftreg[26]_net_1 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[21]  (.A(
        \cmd_decoder_0/rcv_shftreg[17]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[20]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_442 ));
    DFN1C0 \address_encoder_0/m5_sendata_reg_wren/U1  (.D(
        \address_encoder_0/m5_sendata_reg_wren/Y ), .CLK(DSP_CLK_TEST), 
        .CLR(adc_rstn_test_1), .Q(
        address_encoder_0_m5_sendata_reg_wren));
    DFN0C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[0]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[0]_net_1 ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[0]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[33]  (.D(\trans_m2_0/N_187 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[33]_net_1 ));
    OR3 \cmd_decoder_0/sample_counter_RNIBCLV1[1]  (.A(
        \cmd_decoder_0/N_1057_i_0_o2_1 ), .B(
        \cmd_decoder_0/N_1057_i_0_o2_0 ), .C(
        \cmd_decoder_0/N_1057_i_0_o2_10 ), .Y(
        \cmd_decoder_0/N_1057_i_0_o2_16 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[21]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[20]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[21]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_397 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[30]  (.D(\trans_m2_0/N_181 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_boo[30]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[0]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[0]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        adc_data1_test_c));
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO_0[0]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_52_mux ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[0]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_31 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[15]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[15] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[15]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[21]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[21]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[27]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_386 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[27]_net_1 ));
    NOR2 \address_encoder_0/adc_open_RNO  (.A(\dsp_address_c[0] ), .B(
        xzcs0and1_c), .Y(\address_encoder_0/adc_open_1_sqmuxa_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[31]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[31]_net_1 ));
    DFN1E1 \address_encoder_0/adc_data_choice[1]  (.D(
        \dsp_address_c[1] ), .CLK(DSP_CLK_TEST), .E(
        \address_encoder_0/N_81 ), .Q(
        \address_encoder_0_adc_data_choice[1] ));
    IOIN_IB \adc_din2_pad/U0/U1  (.YIN(\adc_din2_pad/U0/NET1 ), .Y(
        adc_din2_c));
    OR3A \cmd_decoder_0/int_counter_RNIP9LJ[8]  (.A(
        \cmd_decoder_0/int_counter[8]_net_1 ), .B(
        \cmd_decoder_0/int_counter[3]_net_1 ), .C(
        \cmd_decoder_0/int_counter[6]_net_1 ), .Y(
        \cmd_decoder_0/state_ii_ns_0_0_0_o2_0_4[0] ));
    NOR3C \trans_m2_0/counter_RNINNGC3[31]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_25 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_24 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_33 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_36 ));
    MX2 \MUX2_0/MX2_Result[2]  (.A(\edib_ctrl_reg_0_dsp_data_out[2] ), 
        .B(\ADC_TOP_0_dataout[2] ), .S(\MUX2_0/SelAux_0[0] ), .Y(
        \MUX2_0_Result[2] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[16]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[15]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_200 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[26]  (.A(
        \trans_m5m7_0/N_402 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[26] ));
    DFN1E1C0 \trans_m2_0/m2_data[1]  (.D(\tri_state_ctrl_0_Dout[1] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[1]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[7]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_366 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[7]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[25]  (.A(
        \trans_m7_0/bit_count[24]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[25] ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[4]  (.A(
        \trans_m5m7_0/N_380 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[4] ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[12]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[12] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[12]_net_1 )
        );
    NOR3B \cmd_decoder_0/bit_counter_RNO[34]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[33]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_164 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[24]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[24]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[23]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_368 ));
    OR2 \address_encoder_0/clr_m5_loadone_flag_0_sqmuxa_i_o2  (.A(
        \address_encoder_0/N_62 ), .B(\dsp_address_c[1] ), .Y(
        \address_encoder_0/N_66 ));
    DFN1 \cmd_decoder_0/rst_counter[8]  (.D(
        \cmd_decoder_0/rst_counter_RNO[8]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[8]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[6]  (.D(
        \cmd_decoder_0_rcvd_datareg[6] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[6]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[13]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[13]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[12]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_389 ));
    AO1D \trans_m2_0/m2_data_RNII7DS[6]  (.A(
        \trans_m2_0/m2_data[6]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_336 ));
    MX2 \cmd_decoder_0/md2udireg_RNO_0  (.A(md2udi_c), .B(
        \cmd_decoder_0/md2udireg_net_1 ), .S(\cmd_decoder_0/N_756 ), 
        .Y(\cmd_decoder_0/N_443 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[22]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[21]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[22]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_398 ));
    NOR2B \cmd_decoder_0/bit_counter_RNIFFSF2[12]  (.A(
        \cmd_decoder_0/N_518 ), .B(\cmd_decoder_0/N_616_64_2 ), .Y(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_0 ));
    OR2 \address_encoder_0/m7_send_en_2_i_o3  (.A(
        \address_encoder_0/N_73 ), .B(\address_encoder_0/N_66 ), .Y(
        \address_encoder_0/N_78 ));
    NOR2B \cmd_decoder_0/state_RNI45NNM[9]  (.A(
        \cmd_decoder_0/state[9]_net_1 ), .B(\cmd_decoder_0/N_546 ), .Y(
        \cmd_decoder_0/N_657 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[8]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[8] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[8]_net_1 ));
    DLN0 \cmd_decoder_0/tst_state[1]  (.D(\cmd_decoder_0/N_259 ), .G(
        \cmd_decoder_0/bit_counter_RNILOK6P[3]_net_1 ), .Q(
        \tst_state_c[1] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[21]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[21]_net_1 ));
    NOR2 \trans_m5m7_0/bit_count_RNI38FN[17]  (.A(
        \trans_m5m7_0/bit_count[18]_net_1 ), .B(
        \trans_m5m7_0/bit_count[17]_net_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_reg104_10 ));
    NOR2A \tri_state_ctrl_0/Dout_1_0  (.A(\Data_in[14] ), .B(DSP_XRW_c)
        , .Y(\tri_state_ctrl_0_Dout[14] ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[12]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[12]_net_1 ));
    NOR2A \trans_m5m7_0/bit_count_RNO[25]  (.A(
        \trans_m5m7_0/bit_count[24]_net_1 ), .B(\trans_m5m7_0/shift ), 
        .Y(\trans_m5m7_0/bit_count_5[25] ));
    DFN1 \cmd_decoder_0/rst_counter[3]  (.D(
        \cmd_decoder_0/rst_counter_RNO[3]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[3]_net_1 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_2_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[12]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[12]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[12]_net_1 )
        , .Y(\ADC_TOP_0_dataout[12] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[3]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[3] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[3]_net_1 )
        );
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[1]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[0]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[1]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_377 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[1]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[1]_net_1 ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[5]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[5] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[5]_net_1 )
        );
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[21]  (.A(
        \trans_m5m7_0/N_397 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[21] ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[25]  (.A(
        \trans_m7_0/q7[12]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[25] ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[25]  (.A(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[24]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1260 ));
    AOI1B \edib_mode2_clkgen_0/counter1_RNO[3]  (.A(
        \edib_mode2_clkgen_0/counter113_4 ), .B(
        \edib_mode2_clkgen_0/counter113_3 ), .C(
        \edib_mode2_clkgen_0/I_9_0 ), .Y(
        \edib_mode2_clkgen_0/counter1_3[3] ));
    NOR3A \trans_m7_0/bit_count_RNIM5CF[5]  (.A(
        \trans_m7_0/m7_t_mc_reg104_7 ), .B(
        \trans_m7_0/bit_count[6]_net_1 ), .C(
        \trans_m7_0/bit_count[5]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_13 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[27]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[27] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[27]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[26]  (.A(
        \trans_m7_0/bit_count[25]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[26] ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[7]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[7]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[6]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_383 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[13]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[12]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[13]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_389 ));
    OR2A \trans_m7_0/bit_counter_clear_b0_i_a3_0  (.A(
        \trans_m7_0/N_520 ), .B(\trans_m7_0/un1_bit_count_2 ), .Y(
        \trans_m7_0/shift_0 ));
    XOR2 \edib_mode2_clkgen_0/un5_counter1_I_17  (.A(
        \edib_mode2_clkgen_0/N_2 ), .B(
        \edib_mode2_clkgen_0/counter1[6]_net_1 ), .Y(
        \edib_mode2_clkgen_0/I_17 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[21]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_380 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[21]_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[13]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[13]_net_1 ));
    DFN1 \cmd_decoder_0/rst_counter[11]  (.D(
        \cmd_decoder_0/rst_counter_RNO[11]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[11]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[15]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_374 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[15]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[33]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[32]_net_1 ), .Y(\trans_m2_0/N_305 ));
    DFN1E1C0 \trans_m2_0/m2_data[11]  (.D(\tri_state_ctrl_0_Dout[11] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[11]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[0]/U0  (.A(
        adc_data3_test_c), .B(adc_din3_c), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[0]/Y ));
    IOBI_IB_OB_EB \Data_pad[11]/U0/U1  (.D(\MUX2_0_Result[11] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[11]/U0/NET3 ), 
        .DOUT(\Data_pad[11]/U0/NET1 ), .EOUT(\Data_pad[11]/U0/NET2 ), 
        .Y(\Data_in[11] ));
    NOR2 \cmd_decoder_0/bit_counter_RNI57OR[12]  (.A(
        \cmd_decoder_0/bit_counter[12]_net_1 ), .B(
        \cmd_decoder_0/bit_counter[19]_net_1 ), .Y(
        \cmd_decoder_0/N_518 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[11]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[11] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[11]_net_1 )
        );
    MX2 \MUX2_0/MX2_Result[13]  (.A(\edib_ctrl_reg_0_dsp_data_out[13] )
        , .B(\ADC_TOP_0_dataout[13] ), .S(\MUX2_0/SelAux_0[11] ), .Y(
        \MUX2_0_Result[13] ));
    DFN1E1C0 \trans_m7_0/q7[4]  (.D(\tri_state_ctrl_0_Dout[4] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[4]_net_1 ));
    IOPAD_BI \Data_pad[14]/U0/U0  (.D(\Data_pad[14]/U0/NET1 ), .E(
        \Data_pad[14]/U0/NET2 ), .Y(\Data_pad[14]/U0/NET3 ), .PAD(
        Data[14]));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[19]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[19]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[11] ));
    NOR2A \address_encoder_0/m2_send_en_RNO_0  (.A(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_0 ), .B(
        \dsp_address_c[1] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_a2_2 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[1]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[1]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[0]_net_1 ), .S(
        \trans_m5m7_0/N_522 ), .Y(\trans_m5m7_0/N_377 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[14]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[14]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[11]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_0 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[11]/Y ));
    NOR2A \trans_m5m7_0/m5_t_no_shiftreg_RNO[2]  (.A(
        \trans_m5m7_0/N_346 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[2] ));
    NOR2B \trans_m7_0/state_RNITFPOB[0]  (.A(
        \trans_m7_0/state[0]_net_1 ), .B(\trans_m7_0/un1_bit_count_2 ), 
        .Y(\trans_m7_0/N_614 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[29]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[28]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[29]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_405 ));
    DFN0P0 \trans_m7_0/m7_t_no_shiftreg[31]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .Q(m7_bzo_c));
    DFN1E0C0 \trans_m2_0/counter[24]  (.D(\trans_m2_0/N_287 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[24]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[14]  (.D(\trans_m2_0/N_58 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[14]_net_1 ));
    NOR3A \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNIGO321_1[7]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_56_mux ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[6]_net_1 ), .C(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ));
    MX2B \trans_m2_0/state_RNIPV2R[1]  (.A(\trans_m2_0/state[0]_net_1 )
        , .B(\trans_m2_0/state[1]_net_1 ), .S(\state_RNISNSU1_0[0] ), 
        .Y(\trans_m2_0/N_322 ));
    NOR3C \cmd_decoder_0/bit_counter_RNI3TRGE[0]  (.A(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_2 ), .B(
        \cmd_decoder_0/un1_state_8_0_0_a2_1_3 ), .C(
        \cmd_decoder_0/N_541 ), .Y(\cmd_decoder_0/N_507 ));
    DFN1E0C0 \cmd_decoder_0/headreg[4]  (.D(\cmd_decoder_0/N_35 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_1244 ), .Q(\cmd_decoder_0/headreg[4]_net_1 ));
    NOR2B \trans_m5m7_0/m5_t_mc_reg_RNO[25]  (.A(
        \trans_m5m7_0/q5[12]_net_1 ), .B(address_encoder_0_m5_send_en), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[25] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[3]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[3]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[33]  (.A(
        \cmd_decoder_0/rst_counter[33]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[32]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_392 ));
    DFN0E0C0 \trans_m7_0/bit_count[10]  (.D(
        \trans_m7_0/bit_count_5[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[10]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[24]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[24]_net_1 ));
    AO1D \trans_m2_0/m2_data_RNIH6DS[5]  (.A(
        \trans_m2_0/m2_data[5]_net_1 ), .B(\trans_m2_0/state[0]_net_1 )
        , .C(\trans_m2_0/state_1[1]_net_1 ), .Y(\trans_m2_0/N_334 ));
    NOR2 \trans_m7_0/bit_count_RNITVCT[25]  (.A(
        \trans_m7_0/bit_count[25]_net_1 ), .B(
        \trans_m7_0/bit_count[26]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_28_3 ));
    BUFF \MUX2_0/BUFF_SelAux_0[0]  (.A(address_encoder_0_mux_ctrl), .Y(
        \MUX2_0/SelAux_0[0] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[15]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[15]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[14]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_359 ));
    OR2 \trans_m7_0/m7_t_no_shiftreg_RNO[31]  (.A(\trans_m7_0/N_375 ), 
        .B(\trans_m7_0/N_521 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[31] )
        );
    AND3B \address_encoder_0/m7_sendata_reg_wren_0_sqmuxa_i_a2_0  (.A(
        \dsp_address_c[14] ), .B(\address_encoder_0/N_59 ), .C(
        \dsp_address_c[13] ), .Y(\address_encoder_0/N_106 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[5]  (.A(
        \trans_m5m7_0/N_381 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[5] ));
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[1]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[1] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[1]_net_1 )
        );
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[13]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[13] ), .B(
        \address_encoder_0_adc_data_choice_0[1] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[13]_net_1 )
        );
    DFN1E1C0 \cmd_decoder_0/int_counter[5]  (.D(
        \cmd_decoder_0/int_counter[4]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[5]_net_1 ));
    OR3 \address_encoder_0/un1_mux_ctrl12_i_o2  (.A(
        \address_encoder_0/N_59 ), .B(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_net_1 ), .C(
        \dsp_address_c[2] ), .Y(\address_encoder_0/N_62 ));
    DFN1E1C0 \cmd_decoder_0/rcvd_datareg[13]  (.D(
        \cmd_decoder_0/rcv_shftreg[29]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(cmd_decoder_0_load), 
        .Q(\cmd_decoder_0_rcvd_datareg[13] ));
    MX2B \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[4]  (.A(
        \trans_m5m7_0/m5_t_mc_shiftreg[3]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_reg[4]_net_1 ), .S(
        \trans_m5m7_0/shift_0 ), .Y(\trans_m5m7_0/N_380 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[17]  (.A(
        \trans_m5m7_0/N_393 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[17] ));
    OR2 \cmd_decoder_0/rst_counter_RNIRNU1[7]  (.A(
        \cmd_decoder_0/rst_counter[7]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[8]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_6 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[12]  (.A(
        \trans_m5m7_0/N_388 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[12] ));
    DFN1P0 \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay_i ), .CLK(
        sam_clk_5M_out_net_1), .PRE(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/fpga_adc_en_reg_delay2_i_0 ));
    DFN0E0C0 \trans_m7_0/bit_count[1]  (.D(\trans_m7_0/bit_count_5[1] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[1]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[18]  (.D(\trans_m2_0/N_108 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[18]_net_1 ));
    MX2B \trans_m2_0/shift_reg_boo_RNO_0[1]  (.A(
        \trans_m2_0/m2_check_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[0]_net_1 ), .S(
        \trans_m2_0/state[0]_net_1 ), .Y(\trans_m2_0/N_387 ));
    DFN1C0 \cmd_decoder_0/state[9]  (.D(\cmd_decoder_0/N_100 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[9]_net_1 ));
    DFN1C0 \address_encoder_0/state[0]  (.D(
        \address_encoder_0/N_396_i ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/state[0]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[19]  (.A(
        \trans_m5m7_0/N_395 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[19] ));
    AO1B \trans_m5m7_0/state_RNI5PAG9_0[0]  (.A(\trans_m5m7_0/N_528 ), 
        .B(\trans_m5m7_0/un1_bit_count_2 ), .C(\trans_m5m7_0/N_520 ), 
        .Y(\trans_m5m7_0/N_521_1 ));
    IOIN_IB \dsp_address_pad[18]/U0/U1  (.YIN(
        \dsp_address_pad[18]/U0/NET1 ), .Y(\dsp_address_c[18] ));
    DFN1 \cmd_decoder_0/rst_counter[27]  (.D(
        \cmd_decoder_0/rst_counter_RNO[27]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[27]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[6]  (.A(
        \cmd_decoder_0/N_656_0 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0_0[0] ), .C(
        \cmd_decoder_0/N_365 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[6]_net_1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[20]  (.A(\trans_m7_0/N_364 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[20] ));
    NOR2A \trans_m7_0/bit_count_RNO[17]  (.A(
        \trans_m7_0/bit_count[16]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[17] ));
    IOTRI_OB_EB \m2_boo_pad/U0/U1  (.D(m2_boo_c), .E(VCC), .DOUT(
        \m2_boo_pad/U0/NET1 ), .EOUT(\m2_boo_pad/U0/NET2 ));
    DFN0C0 \trans_m7_0/m7_t_mc_shiftreg[23]  (.D(
        \trans_m7_0/m7_t_mc_shiftreg_7[23] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_mc_shiftreg[23]_net_1 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[13]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[13]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[23]  (.A(
        \trans_m5m7_0/N_399 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[23] ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[19]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[19] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[19]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_shiftreg_RNO[18]  (.A(\trans_m7_0/N_394 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_mc_shiftreg_7[18] ));
    IOPAD_IN \CLKBUF_0/U0/U0  (.PAD(dsp_clk), .Y(\CLKBUF_0/U0/NET1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[16]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[16]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[15]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_360 ));
    AO1A \cmd_decoder_0/sample_counter_RNILERII[9]  (.A(
        \cmd_decoder_0/N_506 ), .B(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_1_0 ), .C(
        \cmd_decoder_0/N_491 ), .Y(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_0 ));
    DFN1E0P0 \trans_m2_0/counter[0]  (.D(\trans_m2_0/N_36 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .PRE(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa ), .Q(
        \trans_m2_0/counter[0]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[14]  (.D(
        \cmd_decoder_0/sample_counter[13]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756 ), .Q(
        \cmd_decoder_0/sample_counter[14]_net_1 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[27]  (.A(\trans_m7_0/N_403 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m7_0/N_521_1 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[27] ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[14]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(
        \edib_ctrl_reg_0/rcv_reg[14]_net_1 ), .C(
        \edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_9 ));
    MX2 \address_encoder_0/m2_sendone_rd_en/U0  (.A(
        address_encoder_0_m2_sendone_rd_en), .B(xzcs0and1_c_i), .S(
        \address_encoder_0/N_39 ), .Y(
        \address_encoder_0/m2_sendone_rd_en/Y ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[25]  (.A(
        \trans_m5m7_0/N_401 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[25] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[14]  (.A(
        address_encoder_0_m5_send_en_0), .B(\trans_m5m7_0/q5[7]_net_1 )
        , .Y(\trans_m5m7_0/m5_t_mc_reg_19[14] ));
    DFN1E0C0 \trans_m2_0/counter[20]  (.D(\trans_m2_0/N_279 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/counter_1_sqmuxa_0 ), .Q(
        \trans_m2_0/counter[20]_net_1 ));
    DFN0P0 \trans_m5m7_0/m5_t_no_shiftreg[31]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[31] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .PRE(
        address_encoder_0_edib_interface_rst), .Q(m5_bzo_c));
    DFN0E0C0 \trans_m7_0/bit_count[14]  (.D(
        \trans_m7_0/bit_count_5[14] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[14]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[11]  (.D(\trans_m2_0/N_50 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_1 ), .Q(
        \trans_m2_0/shift_reg_bzo[11]_net_1 ));
    DFN0E1C0 \edib_ctrl_reg_0/rcv_reg[0]  (.D(
        \cmd_decoder_0_rcvd_datareg[0] ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/rcv_reg5_net_1 ), .Q(
        \edib_ctrl_reg_0/rcv_reg[0]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[8]  (.A(
        \trans_m7_0/bit_count[7]_net_1 ), .B(\trans_m7_0/shift ), .Y(
        \trans_m7_0/bit_count_5[8] ));
    DFN1 \cmd_decoder_0/rst_counter[16]  (.D(
        \cmd_decoder_0/rst_counter_RNO[16]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[16]_net_1 ));
    IOPAD_BI \Data_pad[1]/U0/U0  (.D(\Data_pad[1]/U0/NET1 ), .E(
        \Data_pad[1]/U0/NET2 ), .Y(\Data_pad[1]/U0/NET3 ), .PAD(
        Data[1]));
    DFN1E1C0 \trans_m7_0/q7[0]  (.D(\tri_state_ctrl_0_Dout[0] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[0]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[14]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout2_reg[14]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_0 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[6] ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[11]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[10]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[11]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_387 ));
    MX2 \MUX2_0/MX2_Result[6]  (.A(\edib_ctrl_reg_0_dsp_data_out[6] ), 
        .B(\ADC_TOP_0_dataout[6] ), .S(\MUX2_0/SelAux_0[6] ), .Y(
        \MUX2_0_Result[6] ));
    NOR2B \address_encoder_0/m2start_pulse_counter_RNO[1]  (.A(
        \address_encoder_0/m2start_pulse_counter[0] ), .B(
        \address_encoder_0/state[0]_net_1 ), .Y(
        \address_encoder_0/N_24 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1]/Y ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test_0), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[3]  (.A(
        \cmd_decoder_0/rst_counter[3]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[2]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_362 ));
    NOR2B \trans_m5m7_0/state_RNIVNKJ8[0]  (.A(
        \trans_m5m7_0/state[0]_net_1 ), .B(
        \trans_m5m7_0/un1_bit_count_2 ), .Y(\trans_m5m7_0/N_614 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[20]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[19]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[20]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_364 ));
    MX2 \cmd_decoder_0/rcv_shftreg_RNO[24]  (.A(
        \cmd_decoder_0/rcv_shftreg[20]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[23]_net_1 ), .S(
        \cmd_decoder_0/N_259_2 ), .Y(\cmd_decoder_0/N_1259 ));
    OR3 \ADC_TOP_0/rdata_choice_0/un20_dataout_12_iv  (.A(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[2]_net_1 )
        , .B(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[2]_net_1 )
        , .C(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[2]_net_1 )
        , .Y(\ADC_TOP_0_dataout[2] ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[4] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout3_reg[5]/Y ));
    AO1 \cmd_decoder_0/state_RNO_0[8]  (.A(\cmd_decoder_0/N_395 ), .B(
        \cmd_decoder_0/state[8]_net_1 ), .C(
        \cmd_decoder_0/state_ns_i_a2_i_1[8] ), .Y(
        \cmd_decoder_0/state_ns_i_a2_i_2[8] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[3]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[3]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[2]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_347 ));
    AO1A \trans_m2_0/m2_data_RNI33MH_0[15]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[15]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_355 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[31]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[30]_net_1 ), .C(\trans_m2_0/N_353 ), 
        .Y(\trans_m2_0/N_183 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[20]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[20] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[20]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[2]  (.D(
        \trans_m5m7_0/bit_count_5[2] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/N_525_0 ), .Q(\trans_m5m7_0/bit_count[2]_net_1 ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[26]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_385 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[26]_net_1 ));
    DFN0C0 \trans_m7_0/state[1]  (.D(\trans_m7_0/state_ns[1] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/state[1]_net_1 ));
    AO1C \cmd_decoder_0/state_RNO[7]  (.A(\cmd_decoder_0/state_i_0[6] )
        , .B(\cmd_decoder_0/md2udireg_net_1 ), .C(
        \cmd_decoder_0/N_240_tz ), .Y(\cmd_decoder_0/N_240 ));
    AO1A \cmd_decoder_0/md2udireg_RNIMBV0Q1  (.A(
        \cmd_decoder_0/N_254_1 ), .B(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_a3_0 ), .C(
        \cmd_decoder_0/headreg_1_sqmuxa_i_i_0 ), .Y(
        \cmd_decoder_0/N_1244 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[6]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[6] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[6]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[0]  
        (.A(\address_encoder_0_adc_data_choice_0[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[0] ), .C(
        \address_encoder_0_adc_data_choice_0[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[0]_net_1 )
        );
    NOR3A 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[6]  
        (.A(\ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[6] ), .B(
        \address_encoder_0_adc_data_choice[1] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data1_out_m[6]_net_1 )
        );
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[13]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[13]_net_1 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[20]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[20]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[12] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[3]  (.A(
        \trans_m5m7_0/N_347 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[3] ));
    OR3 \cmd_decoder_0/headreg_RNIS3I62[0]  (.A(\cmd_decoder_0/N_513 ), 
        .B(\cmd_decoder_0/N_514 ), .C(\cmd_decoder_0/N_385_i ), .Y(
        \cmd_decoder_0/N_395 ));
    DFN1E1C0 \trans_m5m7_0/q5[5]  (.D(\tri_state_ctrl_0_Dout[5] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m5m7_0/q55_net_1 ), .Q(\trans_m5m7_0/q5[5]_net_1 ));
    OR3 \cmd_decoder_0/state_RNO_1[8]  (.A(\cmd_decoder_0/N_498 ), .B(
        \cmd_decoder_0/N_499 ), .C(\cmd_decoder_0/N_500 ), .Y(
        \cmd_decoder_0/state_ns_i_a2_i_1[8] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[12]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[12] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[12]_net_1 ));
    IOPAD_IN \DSP_XZCS2_pad/U0/U0  (.PAD(DSP_XZCS2), .Y(
        \DSP_XZCS2_pad/U0/NET1 ));
    DFN1 \cmd_decoder_0/rst_counter[33]  (.D(
        \cmd_decoder_0/rst_counter_RNO[33]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[33]_net_1 ));
    NOR3C \cmd_decoder_0/state_RNO_10[5]  (.A(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_2 ), .B(
        \cmd_decoder_0/state_tr13_1_64_0_a2_1_a2_0_a2_3 ), .C(
        \cmd_decoder_0/state_ns_0_i_i_a3_5[5] ), .Y(
        \cmd_decoder_0/state_ns_0_i_i_a3_9[5] ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[22]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[22]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[21]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_366 ));
    DFN1 \edib_mode2_clkgen_0/counter1[0]  (.D(
        \edib_mode2_clkgen_0/I_4_0 ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[0]_net_1 ));
    IOIN_IB \adc_din3_pad/U0/U1  (.YIN(\adc_din3_pad/U0/NET1 ), .Y(
        adc_din3_c));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[30]  (.D(\trans_m2_0/N_189 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_2 ), .Q(
        \trans_m2_0/shift_reg_bzo[30]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[31]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[30]_net_1 ), .Y(\trans_m2_0/N_301 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[2]  (.D(
        \cmd_decoder_0/sample_counter[1]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[2]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[22]  (.D(
        \trans_m7_0/bit_count_5[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[22]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[30]  (.A(
        \trans_m5m7_0/N_406 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[30] ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[28]  (.A(
        \trans_m5m7_0/N_404 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa ), .S(
        \trans_m5m7_0/N_521_1 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[28] ));
    DFN0P0 \edib_ctrl_reg_0/m5_loadone_reg[0]  (.D(
        \edib_ctrl_reg_0/m5_loadone_flag_net_1 ), .CLK(DSP_CLK_TEST), 
        .PRE(address_encoder_0_edib_interface_rst), .Q(
        \edib_ctrl_reg_0/m5_loadone_reg[0]_net_1 ));
    NOR2B \trans_m2_0/shift_reg_bzo_RNO[38]  (.A(
        \trans_m2_0/shift_reg_bzo[37]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/shift_reg_bzo_6[38] ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[12]  (.A(
        \trans_m7_0/m7_t_mc_reg[12]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[11]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_388 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[14]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[13]_net_1 ), .C(\trans_m2_0/N_336 ), 
        .Y(\trans_m2_0/N_58 ));
    NOR2A \address_encoder_0/state_RNIAOVG[0]  (.A(
        \address_encoder_0/N_89 ), .B(
        \address_encoder_0/state[0]_net_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ));
    DFN1 \cmd_decoder_0/rst_counter[20]  (.D(
        \cmd_decoder_0/rst_counter_RNO[20]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[20]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[13]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103_0 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[13]_net_1 ));
    OR2 \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_1  (.A(
        \dsp_address_c[7] ), .B(\dsp_address_c[5] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_1_net_1 ));
    IOPAD_IN \adc_din2_pad/U0/U0  (.PAD(adc_din2), .Y(
        \adc_din2_pad/U0/NET1 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[7]  (.D(\cmd_decoder_0/N_428 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[7]_net_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNIHSCG1[14]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[14]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[14] )
        );
    DFN1E0C0 \trans_m2_0/shift_reg_boo[19]  (.D(\trans_m2_0/N_102 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[19]_net_1 ));
    IOPAD_BI \Data_pad[6]/U0/U0  (.D(\Data_pad[6]/U0/NET1 ), .E(
        \Data_pad[6]/U0/NET2 ), .Y(\Data_pad[6]/U0/NET3 ), .PAD(
        Data[6]));
    NOR3A \trans_m7_0/bit_count_RNIT3RQ1[27]  (.A(
        \trans_m7_0/m7_t_mc_reg104_28_1 ), .B(
        \trans_m7_0/bit_count[28]_net_1 ), .C(
        \trans_m7_0/bit_count[27]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_28_4 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[11]  (.D(\cmd_decoder_0/N_210 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[11]_net_1 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[11]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[3] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[2] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[11]/Y ));
    DFN1C0 \cmd_decoder_0/state[5]  (.D(\cmd_decoder_0/N_92 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[5]_net_1 ));
    IOPAD_TRI \m2_bzo_pad/U0/U0  (.D(\m2_bzo_pad/U0/NET1 ), .E(
        \m2_bzo_pad/U0/NET2 ), .PAD(m2_bzo));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[30]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[30] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[30]_net_1 ));
    OA1 \trans_m2_0/counter_RNO[24]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[23]_net_1 ), .Y(\trans_m2_0/N_287 ));
    OA1 \trans_m2_0/counter_RNO[7]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_1[1]_net_1 ), .C(
        \trans_m2_0/counter[6]_net_1 ), .Y(\trans_m2_0/N_253 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[9]  (.D(
        \edib_ctrl_reg_0/N_19 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[9]_net_1 ));
    NOR3A \trans_m7_0/bit_count_RNIU2RF1[14]  (.A(
        \trans_m7_0/m7_t_mc_reg104_3 ), .B(
        \trans_m7_0/bit_count[14]_net_1 ), .C(
        \trans_m7_0/bit_count[16]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_11 ));
    NOR2 \trans_m5m7_0/bit_count_RNIRVEN[13]  (.A(
        \trans_m5m7_0/bit_count[14]_net_1 ), .B(
        \trans_m5m7_0/bit_count[13]_net_1 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_2 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[9]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[9] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[9]_net_1 ));
    DFN1E1C0 \trans_m2_0/m2_data[15]  (.D(\tri_state_ctrl_0_Dout[15] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[15]_net_1 ));
    DFN0E0C0 \trans_m7_0/bit_count[13]  (.D(
        \trans_m7_0/bit_count_5[13] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[13]_net_1 ));
    DFN1P0 \ADC_TOP_0/ads_trans_fsm_0/curr_sta[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_RNO[1]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .PRE(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/curr_sta_i_0[1] ));
    DFN0P1C1 \edib_ctrl_reg_0/m2_sendone_flag  (.D(VCC), .CLK(
        trans_m2_0_clr_reg_flag), .PRE(AFLSDF_INV_0_net_1), .CLR(
        \edib_ctrl_reg_0/m2_sendone_flag_1_sqmuxa ), .Q(
        \edib_ctrl_reg_0/m2_sendone_flag_net_1 ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[0]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[0] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103_0 ), .Q(
        \trans_m7_0/m7_t_mc_reg[0]_net_1 ));
    IOPAD_IN \dsp_address_pad[9]/U0/U0  (.PAD(dsp_address[9]), .Y(
        \dsp_address_pad[9]/U0/NET1 ));
    AO1B \trans_m7_0/state_RNIGIIOC_1[0]  (.A(\trans_m7_0/N_528 ), .B(
        \trans_m7_0/un1_bit_count_2 ), .C(\trans_m7_0/N_520 ), .Y(
        \trans_m7_0/N_521 ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[7]  (.A(\trans_m7_0/N_383 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[7] ));
    DLN0 \cmd_decoder_0/tst_state[0]  (.D(\cmd_decoder_0/N_160 ), .G(
        \cmd_decoder_0/bit_counter_RNILOK6P[3]_net_1 ), .Q(
        \tst_state_c[0] ));
    NOR3B \trans_m7_0/bit_count_RNI7ETF1[31]  (.A(
        \trans_m7_0/bit_count[31]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg104_10 ), .C(
        \trans_m7_0/bit_count[6]_net_1 ), .Y(
        \trans_m7_0/un1_bit_count_2_9 ));
    DFN0E0C0 \trans_m7_0/bit_count[29]  (.D(
        \trans_m7_0/bit_count_5[29] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525 ), 
        .Q(\trans_m7_0/bit_count[29]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[13]  (.A(
        \cmd_decoder_0/rst_counter[13]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[12]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_372 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[7]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[7]_net_1 ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[25]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[25]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[24]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_401 ));
    OR2A \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_10  (.A(
        \dsp_address_c[14] ), .B(\dsp_address_c[13] ), .Y(
        \address_encoder_0/m2_send_en_0_sqmuxa_i_o2_0_net_1 ));
    IOPAD_IN \DSP_XWE_pad/U0/U0  (.PAD(DSP_XWE), .Y(
        \DSP_XWE_pad/U0/NET1 ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[22]  (.A(
        \trans_m7_0/m7_t_no_shiftreg[21]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[22]_net_1 ), .S(\trans_m7_0/shift_1 ), 
        .Y(\trans_m7_0/N_366 ));
    IOBI_IB_OB_EB \Data_pad[0]/U0/U1  (.D(\MUX2_0_Result[0] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[0]/U0/NET3 ), .DOUT(
        \Data_pad[0]/U0/NET1 ), .EOUT(\Data_pad[0]/U0/NET2 ), .Y(
        \Data_in[0] ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[3]  (.A(
        \address_encoder_0/m2start_pulse_counter[2] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[3] ));
    DFN0E1C0 \trans_m7_0/m7_t_mc_reg[21]  (.D(
        \trans_m7_0/m7_t_mc_reg_19[21] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/un1_m7_t_mc_reg103 ), .Q(
        \trans_m7_0/m7_t_mc_reg[21]_net_1 ));
    NOR2 \trans_m7_0/state_RNO_0[0]  (.A(\trans_m7_0/rden77_net_1 ), 
        .B(\trans_m7_0/state[0]_net_1 ), .Y(\trans_m7_0/N_615 ));
    IOTRI_OB_EB \OUTBUF_2/U0/U1  (.D(adc_rstn_test), .E(VCC), .DOUT(
        \OUTBUF_2/U0/NET1 ), .EOUT(\OUTBUF_2/U0/NET2 ));
    DFN1 \cmd_decoder_0/rst_counter[0]  (.D(
        \cmd_decoder_0/rst_counter_RNO[0]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[0]_net_1 ));
    NOR2B \trans_m7_0/m7_t_mc_reg_RNO[21]  (.A(
        \trans_m7_0/q7[10]_net_1 ), .B(m7_send_en_TEST), .Y(
        \trans_m7_0/m7_t_mc_reg_19[21] ));
    IOIN_IB \dsp_address_pad[1]/U0/U1  (.YIN(
        \dsp_address_pad[1]/U0/NET1 ), .Y(\dsp_address_c[1] ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[30]  (.D(
        \cmd_decoder_0/N_1265 ), .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), 
        .CLR(address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[30]_net_1 ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[24]  (.A(
        \cmd_decoder_0/rst_counter[24]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[23]_net_1 ), .S(
        \cmd_decoder_0/state_iii[0]_net_1 ), .Y(\cmd_decoder_0/N_383 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[27]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[27]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[26]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_371 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[20]  (.A(
        \trans_m5m7_0/N_364 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[20] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO_0[11]  (.A(
        \trans_m7_0/m7_t_mc_reg[11]_net_1 ), .B(
        \trans_m7_0/m7_t_no_shiftreg[10]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_355 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step_RNO[1]_net_1 ), .CLK(
        DSP_CLK_TEST), .CLR(adc_rstn_test), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step[1]_net_1 ));
    MX2B \trans_m7_0/m7_t_mc_shiftreg_RNO_0[19]  (.A(
        \trans_m7_0/m7_t_mc_shiftreg[18]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_reg[19]_net_1 ), .S(\trans_m7_0/shift_0 ), 
        .Y(\trans_m7_0/N_395 ));
    DFN1E1C0 \cmd_decoder_0/sample_counter[3]  (.D(
        \cmd_decoder_0/sample_counter[2]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_756_0 ), .Q(
        \cmd_decoder_0/sample_counter[3]_net_1 ));
    NOR3A \address_encoder_0/m2start_pulse_counter_RNICR9F[8]  (.A(
        \address_encoder_0/m2start_pulse_counter[8] ), .B(
        \address_encoder_0/m2start_pulse_counter[6] ), .C(
        \address_encoder_0/m2start_pulse_counter[4] ), .Y(
        \address_encoder_0/m10_4 ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[10]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[10] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[10]_net_1 ));
    DFN1 \cmd_decoder_0/state_iii_0[0]  (.D(
        \cmd_decoder_0/state_iii_srst[0] ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/state_iii_0[0]_net_1 ));
    DFN1E1C0 \trans_m7_0/q7[8]  (.D(\tri_state_ctrl_0_Dout[8] ), .CLK(
        DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), .E(
        \trans_m7_0/q75_net_1 ), .Q(\trans_m7_0/q7[8]_net_1 ));
    OR3 \cmd_decoder_0/rst_counter_RNIEPG[23]  (.A(
        \cmd_decoder_0/rst_counter[23]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[26]_net_1 ), .C(
        \cmd_decoder_0/m33_0_o2_15 ), .Y(\cmd_decoder_0/m33_0_o2_24 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[18]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[18] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[18]_net_1 ));
    MX2 \MUX2_0/MX2_Result[7]  (.A(\edib_ctrl_reg_0_dsp_data_out[7] ), 
        .B(\ADC_TOP_0_dataout[7] ), .S(\MUX2_0/SelAux_0[6] ), .Y(
        \MUX2_0_Result[7] ));
    OR2A \trans_m5m7_0/bit_counter_clear_b0_i_a3  (.A(
        \trans_m5m7_0/N_520 ), .B(\trans_m5m7_0/un1_bit_count_2 ), .Y(
        \trans_m5m7_0/shift ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNO[4]_net_1 ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ));
    NOR3A \cmd_decoder_0/rcv_shftreg_RNISJD4[33]  (.A(
        \cmd_decoder_0/rcv_shftreg[21]_net_1 ), .B(
        \cmd_decoder_0/rcv_shftreg[11]_net_1 ), .C(
        \cmd_decoder_0/rcv_shftreg[33]_net_1 ), .Y(
        \cmd_decoder_0/rst_out_en_2_sqmuxa_0_a3_0_a2_2 ));
    DFN1E1 \address_encoder_0/adc_data_choice_0[0]  (.D(
        \dsp_address_c[0] ), .CLK(DSP_CLK_TEST), .E(
        \address_encoder_0/N_81 ), .Q(
        \address_encoder_0_adc_data_choice_0[0] ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[14]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[14]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_1 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[6] ));
    MX2 \trans_m7_0/m7_t_no_shiftreg_RNO[16]  (.A(\trans_m7_0/N_360 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_no_shiftreg_7[16] ));
    NOR3C \trans_m5m7_0/bit_count_RNI9TNP2[11]  (.A(
        \trans_m5m7_0/un1_bit_count_2_11 ), .B(
        \trans_m5m7_0/un1_bit_count_2_10 ), .C(
        \trans_m5m7_0/un1_bit_count_2_16 ), .Y(
        \trans_m5m7_0/un1_bit_count_2_18 ));
    MX2 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[20]/U0  (.A(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[12] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[11] ), .S(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg7_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[20]/Y ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[22]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[22]_net_1 ));
    OA1C \trans_m2_0/shift_reg_boo_RNO[2]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_boo[1]_net_1 ), .C(\trans_m2_0/N_324 ), 
        .Y(\trans_m2_0/N_7 ));
    DFN1 \edib_mode2_clkgen_0/counter1[3]  (.D(
        \edib_mode2_clkgen_0/counter1_3[3] ), .CLK(CLKA_c), .Q(
        \edib_mode2_clkgen_0/counter1[3]_net_1 ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[2]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[1]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[2] ));
    DFN0C0 \trans_m5m7_0/m5_t_no_shiftreg[24]  (.D(
        \trans_m5m7_0/m5_t_no_shiftreg_7[24] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_no_shiftreg[24]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[28]  (.A(
        \trans_m5m7_0/N_372 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[28] ));
    DFN1E1C0 \trans_m2_0/m2_data[12]  (.D(\tri_state_ctrl_0_Dout[12] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[12]_net_1 ));
    NOR2A \trans_m7_0/m7_t_mc_reg_RNO[18]  (.A(m7_send_en_TEST), .B(
        \trans_m7_0/q7[9]_net_1 ), .Y(\trans_m7_0/m7_t_mc_reg_19[18] ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[11]  (.A(\trans_m7_0/N_355 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[11] ));
    MX2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO_0[22]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[22]_net_1 ), .B(
        \trans_m5m7_0/m5_t_mc_shiftreg[21]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_398 ));
    AO1B \trans_m5m7_0/state_RNI5PAG9[0]  (.A(\trans_m5m7_0/N_528 ), 
        .B(\trans_m5m7_0/un1_bit_count_2 ), .C(\trans_m5m7_0/N_520 ), 
        .Y(\trans_m5m7_0/N_521_0 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[16]  (.D(
        \trans_m5m7_0/bit_count_5[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[16]_net_1 ));
    NOR2 \trans_m2_0/counter_RNISCIP[0]  (.A(
        \trans_m2_0/counter[0]_net_1 ), .B(
        \trans_m2_0/counter[6]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_19 ));
    DFN1C0 \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[21]/U1  (.D(
        \ADC_TOP_0/ads_trans_fsm_0/dout1_reg[21]/Y ), .CLK(
        sam_clk_5M_out_net_1), .CLR(
        \ADC_TOP_0/ads_trans_fsm_0/rst_5M_reg_i_0_i_2 ), .Q(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data1_out[13] ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[10]  (.D(\cmd_decoder_0/N_212 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230_0 ), .Q(
        \cmd_decoder_0/bit_counter[10]_net_1 ));
    NOR2A \address_encoder_0/m2start_pulse_counter_RNO[8]  (.A(
        \address_encoder_0/m2start_pulse_counter[7] ), .B(
        \address_encoder_0/N_10 ), .Y(
        \address_encoder_0/m2start_pulse_counter_6[8] ));
    NOR2A \trans_m5m7_0/m5_t_mc_reg_RNO[4]  (.A(
        address_encoder_0_m5_send_en), .B(\trans_m5m7_0/q5[2]_net_1 ), 
        .Y(\trans_m5m7_0/m5_t_mc_reg_19[4] ));
    DFN1 \edib_m5m7_clkgen_0/counter[2]  (.D(
        \edib_m5m7_clkgen_0/N_12_i ), .CLK(CLKA_c), .Q(
        \edib_m5m7_clkgen_0/counter[2]_net_1 ));
    NOR3B \edib_ctrl_reg_0/databuffer_RNI5DKL1[9]  (.A(DSP_XRW_c_0), 
        .B(\edib_ctrl_reg_0/databuffer[9]_net_1 ), .C(
        \edib_ctrl_reg_0/N_58 ), .Y(\edib_ctrl_reg_0_dsp_data_out[9] ));
    DFN1C0 \address_encoder_0/m2_send_en/U1  (.D(
        \address_encoder_0/m2_send_en/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_0), .Q(\address_encoder_0/m2_send_en ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[15]  (.A(
        \cmd_decoder_0/rst_counter[15]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[14]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_374 ));
    OA1 \trans_m2_0/counter_RNO[28]  (.A(\trans_m2_0/state[0]_net_1 ), 
        .B(\trans_m2_0/state_0[1]_net_1 ), .C(
        \trans_m2_0/counter[27]_net_1 ), .Y(\trans_m2_0/N_295 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[15]  (.D(\trans_m2_0/N_61 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0 ), .Q(
        \trans_m2_0/shift_reg_boo[15]_net_1 ));
    DFN0E1C0 \trans_m5m7_0/m5_t_mc_reg[3]  (.D(
        \trans_m5m7_0/m5_t_mc_reg_19[3] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m5m7_0/un1_m5_t_mc_reg103 ), .Q(
        \trans_m5m7_0/m5_t_mc_reg[3]_net_1 ));
    NOR2A \cmd_decoder_0/state_RNI4F2M[0]  (.A(
        \cmd_decoder_0/state_i_0[6] ), .B(
        \cmd_decoder_0/state[0]_net_1 ), .Y(\cmd_decoder_0/N_553 ));
    DFN1E1C0 \trans_m2_0/m2_data[3]  (.D(\tri_state_ctrl_0_Dout[3] ), 
        .CLK(DSP_CLK_TEST), .CLR(address_encoder_0_edib_interface_rst), 
        .E(\trans_m2_0/m2_data5_net_1 ), .Q(
        \trans_m2_0/m2_data[3]_net_1 ));
    NOR2B \ADC_TOP_0/ads_trans_fsm_0/data_cnt_RNI01AL[4]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/N_13_i ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/data_cnt[4]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_14_i ));
    NOR2A \trans_m7_0/bit_count_RNO[19]  (.A(
        \trans_m7_0/bit_count[18]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[19] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[1]  (.A(
        \cmd_decoder_0/N_259_0 ), .B(
        \cmd_decoder_0/bit_counter[0]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_228 ));
    IOPAD_IN \dsp_address_pad[5]/U0/U0  (.PAD(dsp_address[5]), .Y(
        \dsp_address_pad[5]/U0/NET1 ));
    MX2 \address_encoder_0/m2start_pulse_counter[5]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[5] ), .B(
        \address_encoder_0/m2start_pulse_counter[5] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[5]/Y ));
    MX2 \cmd_decoder_0/rst_counter_RNO_0[17]  (.A(
        \cmd_decoder_0/rst_counter[17]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[16]_net_1 ), .S(
        \cmd_decoder_0/state_iii_0[0]_net_1 ), .Y(
        \cmd_decoder_0/N_376 ));
    DFN0C0 \trans_m5m7_0/m5_t_mc_shiftreg[7]  (.D(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[7] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m5m7_0/m5_t_mc_shiftreg[7]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[23]  (.D(\cmd_decoder_0/N_186 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[23]_net_1 ));
    NOR2 \trans_m7_0/bit_count_RNILNCT[21]  (.A(
        \trans_m7_0/bit_count[21]_net_1 ), .B(
        \trans_m7_0/bit_count[22]_net_1 ), .Y(
        \trans_m7_0/m7_t_mc_reg104_22_0 ));
    IOTRI_OB_EB \adc_fsync_out_pad/U0/U1  (.D(adc_fsync_out_c_c), .E(
        VCC), .DOUT(\adc_fsync_out_pad/U0/NET1 ), .EOUT(
        \adc_fsync_out_pad/U0/NET2 ));
    DFN1E1C0 \cmd_decoder_0/rcv_shftreg[1]  (.D(\cmd_decoder_0/N_422 ), 
        .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_232 ), .Q(
        \cmd_decoder_0/rcv_shftreg[1]_net_1 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO_0[21]  (.A(
        \trans_m5m7_0/m5_t_mc_reg[21]_net_1 ), .B(
        \trans_m5m7_0/m5_t_no_shiftreg[20]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m5_i_1 ), .Y(
        \trans_m5m7_0/N_365 ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[16]  (.A(
        \trans_m5m7_0/N_392 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[16] ));
    IOPAD_TRI \sam_clk_5M_out_pad/U0/U0  (.D(
        \sam_clk_5M_out_pad/U0/NET1 ), .E(\sam_clk_5M_out_pad/U0/NET2 )
        , .PAD(sam_clk_5M_out));
    NOR2 \trans_m2_0/counter_RNI3PSB[33]  (.A(
        \trans_m2_0/counter[33]_net_1 ), .B(
        \trans_m2_0/counter[34]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_11 ));
    DFN1E0C0 \edib_ctrl_reg_0/databuffer[0]  (.D(
        \edib_ctrl_reg_0/N_53 ), .CLK(DSP_CLK_TEST), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \edib_ctrl_reg_0/N_58_0 ), .Q(
        \edib_ctrl_reg_0/databuffer[0]_net_1 ));
    DFN1C0 \cmd_decoder_0/state_ii[0]  (.D(
        \cmd_decoder_0/state_ii_ns[0] ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        cmd_decoder_0_m2rxirqb));
    NOR3C \trans_m2_0/counter_RNIKN963[1]  (.A(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_17 ), .B(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_16 ), .C(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_29 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_34 ));
    NOR2B \trans_m2_0/shift_reg_bzo_RNO[37]  (.A(
        \trans_m2_0/shift_reg_bzo[36]_net_1 ), .B(
        \trans_m2_0/state[0]_net_1 ), .Y(
        \trans_m2_0/shift_reg_bzo_6[37] ));
    NOR3C \cmd_decoder_0/rst_counter_RNO[32]  (.A(
        \cmd_decoder_0/N_656 ), .B(
        \cmd_decoder_0/state_iii_srsts_34_0_a3_0[0] ), .C(
        \cmd_decoder_0/N_391 ), .Y(
        \cmd_decoder_0/rst_counter_RNO[32]_net_1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_boo[3]  (.D(\trans_m2_0/N_9 ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_boo[3]_net_1 ));
    MX2A \trans_m7_0/m7_t_mc_shiftreg_RNO_0[6]  (.A(
        \trans_m7_0/m7_t_mc_reg[6]_net_1 ), .B(
        \trans_m7_0/m7_t_mc_shiftreg[5]_net_1 ), .S(
        \edib_ctrl_reg_0.load_data_shift_m7_i_1 ), .Y(
        \trans_m7_0/N_382 ));
    DFN1E1C0 \cmd_decoder_0/bit_counter[19]  (.D(\cmd_decoder_0/N_194 )
        , .CLK(edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \cmd_decoder_0/N_230 ), .Q(
        \cmd_decoder_0/bit_counter[19]_net_1 ));
    DFN0E0C0 \trans_m5m7_0/bit_count[22]  (.D(
        \trans_m5m7_0/bit_count_5[22] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m5m7_0/N_525 )
        , .Q(\trans_m5m7_0/bit_count[22]_net_1 ));
    NOR2A \trans_m7_0/bit_count_RNO[12]  (.A(
        \trans_m7_0/bit_count[11]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[12] ));
    DFN1C0 \address_encoder_0/m5_send_en_0/U1  (.D(
        \address_encoder_0/m5_send_en_0/Y ), .CLK(DSP_CLK_TEST), .CLR(
        adc_rstn_test_0), .Q(address_encoder_0_m5_send_en_0));
    NOR2A \edib_m2m5m7_clkgen_0/counter_RNI3MST[2]  (.A(
        \edib_m2m5m7_clkgen_0/counter[2]_net_1 ), .B(
        \edib_m2m5m7_clkgen_0/counter[1]_net_1 ), .Y(
        \edib_m2m5m7_clkgen_0/counter13_1 ));
    AO1D \trans_m2_0/counter_RNO[0]  (.A(\trans_m2_0/state_2[1]_net_1 )
        , .B(\trans_m2_0/state[0]_net_1 ), .C(\trans_m2_0/N_704 ), .Y(
        \trans_m2_0/N_36 ));
    MX2 \address_encoder_0/m2start_pulse_counter[4]/U0  (.A(
        \address_encoder_0/m2start_pulse_counter_6[4] ), .B(
        \address_encoder_0/m2start_pulse_counter[4] ), .S(
        \address_encoder_0/m2start_pulse_counter_clr_1_sqmuxa_1 ), .Y(
        \address_encoder_0/m2start_pulse_counter[4]/Y ));
    NOR2A \trans_m5m7_0/m5_t_mc_shiftreg_RNO[3]  (.A(
        \trans_m5m7_0/N_379 ), .B(\trans_m5m7_0/N_521 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[3] ));
    IOBI_IB_OB_EB \Data_pad[7]/U0/U1  (.D(\MUX2_0_Result[7] ), .E(
        \tri_state_ctrl_0.Data_1 ), .YIN(\Data_pad[7]/U0/NET3 ), .DOUT(
        \Data_pad[7]/U0/NET1 ), .EOUT(\Data_pad[7]/U0/NET2 ), .Y(
        \Data_in[7] ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[19]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[18]_net_1 ), .C(
        \cmd_decoder_0/N_352_0 ), .Y(\cmd_decoder_0/N_194 ));
    NOR2A \trans_m7_0/m7_t_no_shiftreg_RNO[19]  (.A(\trans_m7_0/N_363 )
        , .B(\trans_m7_0/N_521 ), .Y(
        \trans_m7_0/m7_t_no_shiftreg_7[19] ));
    MX2 \trans_m7_0/m7_t_mc_shiftreg_RNO[9]  (.A(\trans_m7_0/N_385 ), 
        .B(\trans_m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m7_0/N_521_0 ), .Y(\trans_m7_0/m7_t_mc_shiftreg_7[9] ));
    NOR2A \trans_m7_0/bit_count_RNO[18]  (.A(
        \trans_m7_0/bit_count[17]_net_1 ), .B(\trans_m7_0/shift_2 ), 
        .Y(\trans_m7_0/bit_count_5[18] ));
    DFN0E0C0 \trans_m7_0/bit_count[4]  (.D(\trans_m7_0/bit_count_5[4] )
        , .CLK(edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .E(\trans_m7_0/N_525_0 )
        , .Q(\trans_m7_0/bit_count[4]_net_1 ));
    DFN1E1C0 \cmd_decoder_0/int_counter[1]  (.D(
        \cmd_decoder_0/int_counter[0]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        cmd_decoder_0_m2rxirqb), .Q(
        \cmd_decoder_0/int_counter[1]_net_1 ));
    NOR2A \tri_state_ctrl_0/Dout_1_6  (.A(\Data_in[8] ), .B(DSP_XRW_c), 
        .Y(\tri_state_ctrl_0_Dout[8] ));
    DFN1 \cmd_decoder_0/rst_counter[12]  (.D(
        \cmd_decoder_0/rst_counter_RNO[12]_net_1 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .Q(
        \cmd_decoder_0/rst_counter[12]_net_1 ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[9]  
        (.A(\address_encoder_0_adc_data_choice_0[0] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data2_out[9] ), .C(
        \address_encoder_0_adc_data_choice_0[1] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data2_out_m[9]_net_1 )
        );
    IOPAD_IN \dsp_address_pad[14]/U0/U0  (.PAD(dsp_address[14]), .Y(
        \dsp_address_pad[14]/U0/NET1 ));
    DFN1E0C0 \trans_m2_0/shift_reg_bzo[1]  (.D(\trans_m2_0/N_62 ), 
        .CLK(edib_mode2_clkgen_0_clk_send), .CLR(
        address_encoder_0_edib_interface_rst), .E(
        \trans_m2_0/shift_reg_boo_2_sqmuxa ), .Q(
        \trans_m2_0/shift_reg_bzo[1]_net_1 ));
    NOR2 \trans_m2_0/counter_RNIBVQB[28]  (.A(
        \trans_m2_0/counter[28]_net_1 ), .B(
        \trans_m2_0/counter[29]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_7 ));
    OA1C \edib_ctrl_reg_0/databuffer_RNO[1]  (.A(
        \edib_ctrl_reg_0/N_79 ), .B(\edib_ctrl_reg_0/rcv_reg[1]_net_1 )
        , .C(\edib_ctrl_reg_0/N_56 ), .Y(\edib_ctrl_reg_0/N_51 ));
    DFN1C0 \cmd_decoder_0/state[1]  (.D(\cmd_decoder_0/N_157 ), .CLK(
        edib_m2m5m7_clkgen_0_clk_m2_rcv), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \cmd_decoder_0/state[1]_net_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[1]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[1]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_0), .Q(
        \address_encoder_0/m2start_pulse_counter[1] ));
    IOPAD_TRI \m5_boo_pad/U0/U0  (.D(\m5_boo_pad/U0/NET1 ), .E(
        \m5_boo_pad/U0/NET2 ), .PAD(m5_boo));
    OA1C \trans_m2_0/shift_reg_bzo_RNO[20]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/shift_reg_bzo[19]_net_1 ), .C(\trans_m2_0/N_343 ), 
        .Y(\trans_m2_0/N_112 ));
    MX2 \trans_m5m7_0/m5_t_no_shiftreg_RNO[22]  (.A(
        \trans_m5m7_0/N_366 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_no_shiftreg_7[22] ));
    OR2 \cmd_decoder_0/rst_counter_RNI6E21[10]  (.A(
        \cmd_decoder_0/rst_counter[9]_net_1 ), .B(
        \cmd_decoder_0/rst_counter[10]_net_1 ), .Y(
        \cmd_decoder_0/m33_0_o2_5 ));
    NOR2 \trans_m2_0/counter_RNI3NQB[23]  (.A(
        \trans_m2_0/counter[26]_net_1 ), .B(
        \trans_m2_0/counter[23]_net_1 ), .Y(
        \trans_m2_0/shift_reg_boo_2_sqmuxa_0_0_a2_1 ));
    DFN1C0 \address_encoder_0/m2start_pulse_counter[7]/U1  (.D(
        \address_encoder_0/m2start_pulse_counter[7]/Y ), .CLK(
        edib_mode2_clkgen_0_clk_send), .CLR(adc_rstn_test_1), .Q(
        \address_encoder_0/m2start_pulse_counter[7] ));
    NOR2A \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1[1]_net_1 ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/cnt_step1_RNO[1]_net_1 ));
    IOTRI_OB_EB \m7_boo_pad/U0/U1  (.D(m7_boo_c), .E(VCC), .DOUT(
        \m7_boo_pad/U0/NET1 ), .EOUT(\m7_boo_pad/U0/NET2 ));
    DFN0C0 \trans_m7_0/m7_t_no_shiftreg[16]  (.D(
        \trans_m7_0/m7_t_no_shiftreg_7[16] ), .CLK(
        edib_m5m7_clkgen_0_clk_m5m7), .CLR(
        address_encoder_0_edib_interface_rst), .Q(
        \trans_m7_0/m7_t_no_shiftreg[16]_net_1 ));
    NOR3B \cmd_decoder_0/bit_counter_RNO[27]  (.A(
        \cmd_decoder_0/N_259_1 ), .B(
        \cmd_decoder_0/bit_counter[26]_net_1 ), .C(
        \cmd_decoder_0/N_352 ), .Y(\cmd_decoder_0/N_178 ));
    IOIN_IB \dsp_address_pad[2]/U0/U1  (.YIN(
        \dsp_address_pad[2]/U0/NET1 ), .Y(\dsp_address_c[2] ));
    NOR3B 
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[4]  
        (.A(\address_encoder_0_adc_data_choice[1] ), .B(
        \ADC_TOP_0/ads_trans_fsm_0_adc_data3_out[4] ), .C(
        \address_encoder_0_adc_data_choice[0] ), .Y(
        \ADC_TOP_0/rdata_choice_0/ads_trans_fsm_0_adc_data3_out_m[4]_net_1 )
        );
    XOR2 \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt_RNO[1]  (.A(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[0]_net_1 ), .B(
        \ADC_TOP_0/ads_trans_fsm_0/adc_en_cnt[1] ), .Y(
        \ADC_TOP_0/ads_trans_fsm_0/N_345 ));
    AO1A \trans_m2_0/m2_data_RNIUTLH_0[10]  (.A(
        \trans_m2_0/state[0]_net_1 ), .B(
        \trans_m2_0/m2_data[10]_net_1 ), .C(
        \trans_m2_0/state_2[1]_net_1 ), .Y(\trans_m2_0/N_345 ));
    MX2 \trans_m5m7_0/m5_t_mc_shiftreg_RNO[11]  (.A(
        \trans_m5m7_0/N_387 ), .B(
        \trans_m5m7_0/load_head_shiftreg_0_sqmuxa_0 ), .S(
        \trans_m5m7_0/N_521_0 ), .Y(
        \trans_m5m7_0/m5_t_mc_shiftreg_7[11] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
