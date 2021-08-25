`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:56 10/13/2020
// Design Name:   DLatch
// Module Name:   E:/Documents/CodeBlocks/Verilog/Verilg-Lab1Task2/DLatchTestfix.v
// Project Name:  Verilg-Lab1Task2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DLatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DLatchTestfix;

	// Inputs
	reg D;
	reg En;

	// Outputs
	wire Q;
	wire Qdash;

	// Instantiate the Unit Under Test (UUT)
	DLatch uut (
		.D(D), 
		.En(En), 
		.Q(Q), 
		.Qdash(Qdash)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		D = 0;
		En = 1;

		// Wait 100 ns for global reset to finish
		#100;

      D = 1;
		En = 1;

		// Wait 100 ns for global reset to finish
		#100;		
		  
		// Add stimulus here

	end
      
endmodule

