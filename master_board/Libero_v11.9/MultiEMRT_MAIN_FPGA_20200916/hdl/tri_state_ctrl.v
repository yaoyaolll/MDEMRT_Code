// tri_state_ctrl.v
module tri_state_ctrl
(
  Data,Din,rdh_wrl,Dout,xcsz
);
inout [15:0] Data;
input [15:0] Din;
input xcsz;
input rdh_wrl;
output [15:0]Dout;

assign Dout=(!rdh_wrl)?Data:16'hzzzz;
assign Data=((rdh_wrl==1)&&(xcsz==0))?Din:16'hzzzz;


endmodule