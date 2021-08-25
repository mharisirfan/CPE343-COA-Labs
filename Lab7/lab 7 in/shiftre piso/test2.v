`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:30:29 11/24/2020
// Design Name:   register
// Module Name:   C:/Users/Abdul Ahad/Desktop/5th semester/lab 7/shiftreg_2/test2.v
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

module test2;

	// Inputs
	reg in;
	reg clk;
	reg s;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.in(in), 
		.clk(clk), 
		.q(q), 
		.s(s)
	);

	initial begin
		in[1] = 1;
		in[2] = 1;
		in[3] = 1;
		in[4] = 0;
		s = 1;
		clk= 0;
		
		#200;
		s=0;
		
		in[1] = 0;
		in[2] = 0;
		in[3] = 0;
		in[4] = 0;
		#100;
		
		#1000;
		$finish;
		end
		always #100 clk = ~clk;
		// Add stimulus here

      
endmodule

