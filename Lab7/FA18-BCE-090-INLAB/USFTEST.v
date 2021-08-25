`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   
// Module Name:   
// Project Name:  USFTEST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerpios
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module USFTEST;

	// Inputs
	reg clk;
	reg ssr;
	reg ssl;
	reg [1:0] select;
	reg [3:0] i;

	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	registerpios uut (
		.clk(clk), 
		.ssr(ssr), 
		.ssl(ssl), 
		.select(select), 
		.i(i), 
		.a(a)
	);

initial begin
		// Initialize Inputs
		
		i[3:0] = 4'b1111;
		select[1:0]= 2'b11;
		clk = 0;
		ssr = 0;
		ssl = 0;
		#200;
		select[1:0]= 2'b10;
		i[3:0] = 4'b0000;
		#100;
		#1000;
		$finish;
		end
		always #100 clk = ~clk;
		
endmodule

