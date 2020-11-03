// rdata_choice.v

module rdata_choice
(
	data1,
	data2,
	data3,
//	data4,
	choice,
	dataout
 );

input	[15:0]	data1;
input	[15:0]	data2;
input	[15:0]	data3;
//input	[15:0]	data4;
input	[1:0]	choice;

output	[15:0]	dataout;

assign dataout  = (choice==2'b00)? data1[15:0]:16'hzzzz;
assign dataout  = (choice==2'b01)? data2[15:0]:16'hzzzz;
assign dataout  = (choice==2'b10)? data3[15:0]:16'hzzzz;
//assign dataout  = (choice==2'b11)? data4[15:0]:16'hzzzz;

endmodule