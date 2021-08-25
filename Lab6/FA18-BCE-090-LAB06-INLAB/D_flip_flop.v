`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  FA18-BCE-065
// Engineer: Waleed Ahmed
// 
// Create Date:    20:28:49 10/30/2020 
// Design Name: 
// Module Name:    D_flip_flop 
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
module D_flip_flop(
    input DD,
    input Clk,
    output QQ,
	 output QQ_dash
    );
wire Y,Ydash;

D_latch DL1(DD,Clk,Y,Ydash);
D_latch DL2(Y,~Clk,QQ,QQ_dash);

endmodule
