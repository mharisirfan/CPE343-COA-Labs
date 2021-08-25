`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:20:15 11/10/2020
// Design Name:   SRLATCHcontinuous
// Module Name:   D:/Documents/CodeBlocks/Verilog/Lab06.1/SrTest.v
// Project Name:  Lab06.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRLATCHcontinuous
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SrTest;

	// Inputs
	reg [1:0] x_in;

	// Outputs
	wire [1:0] Q_out;

	// Instantiate the Unit Under Test (UUT)
	SRLATCHcontinuous uut (
		.Q_out(Q_out), 
		.x_in(x_in)
	);

	initial begin
		// Initialize Inputs
		x_in[0] = 1;
		x_in[1]=  0;

		// Wait 100 ns for global reset to finish
		#100;

		x_in[0] = 1;
		x_in[1]=  1;

		// Wait 100 ns for global reset to finish
		#100;

		x_in[0] = 0;
		x_in[1]=  1;

		// Wait 100 ns for global reset to finish
		#100;

		x_in[0] = 1;
		x_in[1]=  1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

