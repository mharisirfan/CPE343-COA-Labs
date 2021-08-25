`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Title:  In Lab			 						Filename: DFF.v
// Author: Muhammad Haris Irfan         Reg No:   FA18-BCE-090
// Description: This code simulates the behaviour of DFF using DLatch module
//////////////////////////////////////////////////////////////////////////////////
module DFF(D,Clk,Q,QP);
	input D,Clk;
	output Q,QP;
	wire y,yp;
	
	DLatch d1(D,Clk,y,yp);  //Master
	DLatch d2(y,~Clk,Q,QP); //Slave
endmodule
