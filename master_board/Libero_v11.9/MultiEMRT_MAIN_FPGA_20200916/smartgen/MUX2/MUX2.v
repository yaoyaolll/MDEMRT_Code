`timescale 1 ns/100 ps
// Version: v11.8 SP3 11.8.3.6


module MUX2(
       Data0_port,
       Data1_port,
       Sel0,
       Result
    );
input  [15:0] Data0_port;
input  [15:0] Data1_port;
input  Sel0;
output [15:0] Result;

    wire \SelAux_0[0] , \SelAux_0[6] , \SelAux_0[11] ;
    
    BUFF \BUFF_SelAux_0[6]  (.A(Sel0), .Y(\SelAux_0[6] ));
    MX2 \MX2_Result[13]  (.A(Data0_port[13]), .B(Data1_port[13]), .S(
        \SelAux_0[11] ), .Y(Result[13]));
    MX2 \MX2_Result[4]  (.A(Data0_port[4]), .B(Data1_port[4]), .S(
        \SelAux_0[0] ), .Y(Result[4]));
    MX2 \MX2_Result[3]  (.A(Data0_port[3]), .B(Data1_port[3]), .S(
        \SelAux_0[0] ), .Y(Result[3]));
    MX2 \MX2_Result[6]  (.A(Data0_port[6]), .B(Data1_port[6]), .S(
        \SelAux_0[6] ), .Y(Result[6]));
    MX2 \MX2_Result[9]  (.A(Data0_port[9]), .B(Data1_port[9]), .S(
        \SelAux_0[6] ), .Y(Result[9]));
    MX2 \MX2_Result[15]  (.A(Data0_port[15]), .B(Data1_port[15]), .S(
        \SelAux_0[11] ), .Y(Result[15]));
    MX2 \MX2_Result[11]  (.A(Data0_port[11]), .B(Data1_port[11]), .S(
        \SelAux_0[11] ), .Y(Result[11]));
    MX2 \MX2_Result[8]  (.A(Data0_port[8]), .B(Data1_port[8]), .S(
        \SelAux_0[6] ), .Y(Result[8]));
    BUFF \BUFF_SelAux_0[11]  (.A(Sel0), .Y(\SelAux_0[11] ));
    BUFF \BUFF_SelAux_0[0]  (.A(Sel0), .Y(\SelAux_0[0] ));
    MX2 \MX2_Result[0]  (.A(Data0_port[0]), .B(Data1_port[0]), .S(
        \SelAux_0[0] ), .Y(Result[0]));
    MX2 \MX2_Result[2]  (.A(Data0_port[2]), .B(Data1_port[2]), .S(
        \SelAux_0[0] ), .Y(Result[2]));
    MX2 \MX2_Result[5]  (.A(Data0_port[5]), .B(Data1_port[5]), .S(
        \SelAux_0[0] ), .Y(Result[5]));
    MX2 \MX2_Result[10]  (.A(Data0_port[10]), .B(Data1_port[10]), .S(
        \SelAux_0[6] ), .Y(Result[10]));
    MX2 \MX2_Result[14]  (.A(Data0_port[14]), .B(Data1_port[14]), .S(
        \SelAux_0[11] ), .Y(Result[14]));
    MX2 \MX2_Result[1]  (.A(Data0_port[1]), .B(Data1_port[1]), .S(
        \SelAux_0[0] ), .Y(Result[1]));
    MX2 \MX2_Result[7]  (.A(Data0_port[7]), .B(Data1_port[7]), .S(
        \SelAux_0[6] ), .Y(Result[7]));
    MX2 \MX2_Result[12]  (.A(Data0_port[12]), .B(Data1_port[12]), .S(
        \SelAux_0[11] ), .Y(Result[12]));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.8.3.6
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_MUX
// LPM_HINT:None
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:E:/GaoWenXM/HT_MAIN_ADS1278_FSYNC_03/smartgen\MUX2
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS8X8M2
// SMARTGEN_PACKAGE:fg256
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:16
// SIZE:2
// SEL0_FANIN:AUTO
// SEL0_VAL:6
// SEL0_POLARITY:1
// SEL1_FANIN:AUTO
// SEL1_VAL:6
// SEL1_POLARITY:2
// SEL2_FANIN:AUTO
// SEL2_VAL:6
// SEL2_POLARITY:2
// SEL3_FANIN:AUTO
// SEL3_VAL:6
// SEL3_POLARITY:2
// SEL4_FANIN:AUTO
// SEL4_VAL:6
// SEL4_POLARITY:2

// _End_Comments_

