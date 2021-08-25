`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:52 11/24/2020 
// Design Name: 
// Module Name:    UniversalReg
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
module UniversalReg(
  	 input clk,ssr,ssl,
	 input [1:0] select,
	 input [3:0] i,
	 output [3:0]a,
	 wire   d,d2,d3,d4);
	 
mux_4 mu1(a[0],a[1],ssl,i[0],d,select);
dff df1(d,clk,a[0]);

mux_4 mu2(a[1],a[2],a[0],i[1],d2,select);
dff df2(d2,clk,a[1]);

mux_4 mu3(a[2],a[3],a[1],i[2],d3,select);
dff df3(d3,clk,a[2]);

mux_4 mu4(a[3],ssr,a[2],i[3],d4,select);
dff df4(d4,clk,a[3]);

endmodule