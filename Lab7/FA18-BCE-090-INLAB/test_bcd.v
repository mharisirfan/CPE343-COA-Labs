`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:19 11/24/2020
// Design Name:   bcd
// Module Name:   C:/Users/Abdul Ahad/Desktop/5th semester/lab 6 in/bcd_7/test_bcd.v
// Project Name:  bcd_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bcd;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;

	// Instantiate the Unit Under Test (UUT)
	bcd uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0011;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
        in = 4'b0101;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0111;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		in = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
     in = 4'b1001;

		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

