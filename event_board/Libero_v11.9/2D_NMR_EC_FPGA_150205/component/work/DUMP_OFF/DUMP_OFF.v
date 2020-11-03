`timescale 1 ns/100 ps
// Version: 9.0 9.0.0.15


module DUMP_OFF(
       rst_n,
       state_start,
       clk_sys,
       dump_off
    );
input  rst_n;
input  state_start;
input  clk_sys;
output dump_off;

    wire \off_on_coder_0_i_[1] , \off_on_coder_0_i_[0] , 
        off_on_state_0_state_over, \off_on_timer_0_count_[4] , 
        \off_on_timer_0_count_[3] , \off_on_timer_0_count_[2] , 
        \off_on_timer_0_count_[1] , \off_on_timer_0_count_[0] , 
        GND_net, VCC_net;
    
    off_on_state off_on_state_0 (.clk_sys(clk_sys), .rst_n(rst_n), 
        .off_on(dump_off), .state_over(off_on_state_0_state_over), .i({
        \off_on_coder_0_i_[1] , \off_on_coder_0_i_[0] }));
    VCC VCC (.Y(VCC_net));
    off_on_coder off_on_coder_0 (.clk_sys(clk_sys), .rst_n(rst_n), 
        .state_start(state_start), .count({\off_on_timer_0_count_[4] , 
        \off_on_timer_0_count_[3] , \off_on_timer_0_count_[2] , 
        \off_on_timer_0_count_[1] , \off_on_timer_0_count_[0] }), .i({
        \off_on_coder_0_i_[1] , \off_on_coder_0_i_[0] }));
    GND GND (.Y(GND_net));
    off_on_timer off_on_timer_0 (.clk_sys(clk_sys), .rst_n(rst_n), 
        .state_start(state_start), .state_over(
        off_on_state_0_state_over), .count({\off_on_timer_0_count_[4] , 
        \off_on_timer_0_count_[3] , \off_on_timer_0_count_[2] , 
        \off_on_timer_0_count_[1] , \off_on_timer_0_count_[0] }));
    
endmodule
