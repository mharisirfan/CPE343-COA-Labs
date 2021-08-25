`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:22 11/24/2020
// Design Name:   register
// Module Name:   C:/Users/Abdul Ahad/Desktop/5th semester/lab 7/shiftreg_2/test.v
// Project Name:  shiftreg_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg in1;
	reg in2;
	reg in3;
	reg in4;
	reg clk;
	reg s;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.clk(clk), 
		.q(q), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		in1 = 1;
		in2 = 1;
		in3 = 1;
		in4 = 0;
		s = 1;
		clk= 0;
		
		#200;
		s=0;
		
		in1 = 0;
		in2 = 0;
		in3 = 0;
		in4 = 0;
		#100;
		
		#1000;
		$finish;
		end
		always #100 clk = ~clk;
        
		
      
endmodule

