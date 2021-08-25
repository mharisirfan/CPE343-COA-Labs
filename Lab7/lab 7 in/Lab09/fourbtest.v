`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:44 12/08/2020
// Design Name:   fourbitM
// Module Name:   D:/Desktop/Semester 5/Computer Organization and Architecture/Labs/Lab7/lab 7 in/Lab09/fourbtest.v
// Project Name:  Lab09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbtest;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire init;
	wire SR;

	// Instantiate the Unit Under Test (UUT)
	fourbitM uut (
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

