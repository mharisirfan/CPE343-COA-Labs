`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   
// Module Name:   
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: 
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module USFtest;

	// Inputs
	reg [3:0]I ;
	reg [1:0]select ;
	reg Clk;
	reg SR;
	reg SL;

	// Outputs
	wire [3:0] A;

	// Instantiate the Unit Under Test (UUT)
	UniversalSR uut (
		.I(I), 
		.select(select), 
		.A(A), 
		.Clk(Clk), 
		.SR(SR), 
		.SL(SL)
	);

	initial begin
		// Initialize Inputs
		I[3:0] = 4'b0100;
		select[1:0] = 2'b11;
		Clk = 0;
		SR = 0;
		SL = 0;
		#200;
		
		select[1] = 0;
		select[0] = 1;
		I[0] = 0;
		I[1] = 0;
		I[2] = 0;
		I[3] = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#1000;
		$finish;
	end
      always #100 Clk = ~Clk;
endmodule

