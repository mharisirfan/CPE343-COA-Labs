`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name:   
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
module UniversalSR(I[3:0], select[1:0], A[3:0], Clk, SR, SL);
	input [3:0]I;
	input Clk;
	input [1:0]select;
	input SR, SL;
	output [3:0]A;
	wire m1,m2,m3,m4;
	wire qp1,qp2,qp3,qp4;
	
	Mux mux1(A[0], A[1], SR, I[0], m1, select);
	DFF d1(m1, Clk, A[0], qp1);
	
	Mux mux2(A[1], A[2], A[0], I[1], m2, select);
	DFF d2(m2, Clk, A[1], qp2);
	
	Mux mux3(A[2], A[3], A[1], I[2], m3, select);
	DFF d3(m3, Clk, A[2], qp3);
	
	Mux mux4(A[3] , SL, A[2], I[3], m4, select);
	DFF d4(m4, Clk, A[3], qp4);
	
endmodule
