`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Title:  In Lab									Filename: DLatch.v
// Author: Muhammad Haris Irfan         Reg No:   FA18-BCE-090
// Description: This code simulates the behaviour of D Latch using SR Latch module
//////////////////////////////////////////////////////////////////////////////////
module DLatch(D,En,Q,QP);
	input D,En;
	output Q,QP;
	wire y1,y2;
	
	assign y1 = ~(D & En);
	assign y2 = ~(~D & En);
	
	assign Q = ~(y1 & QP);
	assign QP = ~(y2 & Q);

endmodule
