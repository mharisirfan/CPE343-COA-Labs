`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:25 12/13/2020
// Design Name:   Signed_fourbit
// Module Name:   
// Project Name:  Postlab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_multiplier
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
	reg clk;
	reg reset;
	reg [3:0] multiplicand;
	reg [3:0] multiplier;

	// Outputs
	wire [3:0] HI_FF;
	wire [3:0] LO_FF;

	// Instantiate the Unit Under Test (UUT)
	Signed_fourbit uut (
		.clk(clk), 
		.reset(reset), 
		.multiplicand(multiplicand), 
		.multiplier(multiplier), 
		.HI_FF(HI_FF), 
		.LO_FF(LO_FF)
	);

initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		#40
		reset = 1;
		multiplicand = 4'b1111;
		multiplier = 4'b1001;

		#200;
        
		 

	end
      always #100 clk = ~clk;
endmodule

