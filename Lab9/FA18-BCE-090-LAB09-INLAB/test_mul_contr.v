`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:29 12/08/2020
// Design Name:   multiplier_controller
// Module Name:   D:/xilinxprojects/lab9/test_mul_contr.v
// Project Name:  lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mul_contr;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire init;
	wire SR;

	// Instantiate the Unit Under Test (UUT)
	multiplier_controller uut (
		.clock(clock), 
		.reset(reset), 
		.init(init), 
		.SR(SR)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

