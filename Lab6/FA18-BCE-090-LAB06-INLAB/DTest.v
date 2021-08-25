`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:12:34 11/10/2020
// Design Name:   DLatchcontinuous
// Module Name:   D:/Documents/CodeBlocks/Verilog/Lab06.2/DTest.v
// Project Name:  Lab06.2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DLatchcontinuous
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DTest;

	// Inputs
	reg D;
	reg en;

	// Outputs
	wire Q;
	wire Qdash;

	// Instantiate the Unit Under Test (UUT)
	DLatchcontinuous uut (
		.Q(Q), 
		.Qdash(Qdash), 
		.D(D), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		D = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;



		D = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;


		D = 1;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;

        
		// Add stimulus here

	end
      
endmodule

