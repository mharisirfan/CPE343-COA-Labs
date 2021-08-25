`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:22 11/17/2020 
// Design Name: 
// Module Name:    Mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux(input0, input1, input2, input3,muxout,select);
input input0, input1, input2, input3;
output muxout;
input [1:0] select;

assign muxout = (select == 2'b00)  ? input0:
  			( (select == 2'b01) ? input1 :
  			( (select == 2'b10) ? input2 :
  			( (select == 2'b11) ? input3 :	1'bz	 )));


endmodule
