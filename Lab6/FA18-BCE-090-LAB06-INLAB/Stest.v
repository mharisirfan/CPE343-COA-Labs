`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:48:57 11/10/2020
// Design Name:   ShiftRegister
// Module Name:   D:/Documents/CodeBlocks/Verilog/DFF/ShiftRegister/Stest.v
// Project Name:  ShiftRegister
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stest;

	// Inputs
	reg pA;
	reg pB;
	reg pC;
	reg pD;
	reg s;
	reg clk;

	// Outputs
	wire Q;
	wire q2;
	wire q3;
	wire q4;
	wire q5;

	// Instantiate the Unit Under Test (UUT)
	ShiftRegister uut (
		.pA(pA), 
		.pB(pB), 
		.pC(pC), 
		.pD(pD), 
		.s(s), 
		.clk(clk), 
		.Q(Q), 
		.q2(q2), 
		.q3(q3), 
		.q4(q4), 
		.q5(q5)
	);

	initial begin
		// Initialize Inputs
		pA = 0;
		pB = 0;
		pC = 1;
		pD = 0;
		s = 1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

