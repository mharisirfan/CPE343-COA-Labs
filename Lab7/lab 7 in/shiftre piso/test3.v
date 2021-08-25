`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:28 11/24/2020
// Design Name:   register
// Module Name:   C:/Users/Abdul Ahad/Desktop/5th semester/lab 7/shiftreg_2/test3.v
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

module test3;

	// Inputs
	reg [3:0] in;
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
		//faltoo = 1;
	in [3:0] = 4'b0011;
		clk = 0;
		s = 1;
		#200;
      s = 0;
		 in[0]= 0;
		 in[1]= 0;
		 in[2]= 0;
		 in[3]= 0;
		 #100;
	
		// Add stimulus here
#1000;
$finish;
	end
	always #100 clk = ~clk;
      
endmodule

