`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:02:49 10/13/2020
// Design Name:   NANDSRLATCH
// Module Name:   E:/Documents/CodeBlocks/Verilog/Verilog-Lab1/NANDTESTBENCH.v
// Project Name:  Verilog-Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NANDSRLATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NANDTESTBENCH;

	// Inputs
	reg S;
	reg R;

	// Outputs
	wire Q;
	wire Q_dash;

	// Instantiate the Unit Under Test (UUT)
	NANDSRLATCH uut (
		.Q(Q), 
		.Q_dash(Q_dash), 
		.S(S), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;

		// Wait 100 ns for global reset to finish
		#100;
      

      S = 0;
		R = 1;

		// Wait 100 ns for global reset to finish
		#100;
        



      S = 1;
		R = 0;

		// Wait 100 ns for global reset to finish
		#100;
        



      S = 1;
		R = 1;

		// Wait 100 ns for global reset to finish
		#100;
        		  
		// Add stimulus here

	end
      
endmodule

