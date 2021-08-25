`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:29 12/05/2020
// Design Name:   PostLabFSM
// Module Name:   
// Project Name:  lab08-postlab
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MealyMachine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PLTEST;

	// Inputs
	reg x_in;
	reg clock;
	reg reset;

	// Outputs
	wire y_out;

	// Instantiate the Unit Under Test (UUT)
	PostLabFSMuut (
		.y_out(y_out), 
		.x_in(x_in), 
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#2;
		
		x_in = 1;
		reset=1;
	
		#2;
       
      x_in=1;
    		
		#2;
       
      x_in=0;
		#2;
       
		x_in=0;
		#2;
		
		
		x_in=1;
		#2;
		
		
		x_in=0;
		#2;
		
     #2;
		$finish;
      
		// Add stimulus here

	end
      always #1 clock=~clock;
		
endmodule

