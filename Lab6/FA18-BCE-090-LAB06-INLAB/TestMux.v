`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:41 11/10/2020
// Design Name:   Mux
// Module Name:   D:/Documents/CodeBlocks/Verilog/Lab06.3/TestMux.v
// Project Name:  Lab06.3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestMux;

	// Inputs
	reg s;
	reg x1;
	reg x2;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Mux uut (
		.y(y), 
		.s(s), 
		.x1(x1), 
		.x2(x2)
	);

	initial begin
		// Initialize Inputs
		s  = 0;
		x1 = 0;
		x2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		s  = 0;
		x1 = 0;
		x2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		s  = 0;
		x1 = 1;
		x2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		s  = 0;
		x1 = 1;
		x2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		s  = 1;
		x1 = 0;
		x2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		s  = 1;
		x1 = 0;
		x2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		s  = 1;
		x1 = 1;
		x2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		s  = 1;
		x1 = 1;
		x2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

