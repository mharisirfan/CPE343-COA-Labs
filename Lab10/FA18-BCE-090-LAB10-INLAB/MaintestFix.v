`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:50 12/15/2020
// Design Name:   Get_instruction
// Module Name:   D:/Documents/CodeBlocks/Verilog/Lab10/MaintestFix.v
// Project Name:  Lab10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Get_instruction
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MaintestFix;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [31:0] inst;

	// Instantiate the Unit Under Test (UUT)
	Get_instruction uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.inst(inst)
	);

	initial begin
		clk = 1;
		reset = 1;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#20;
		
		clk=0;
		reset=0;
		enable=1;
        #20;
		// Add stimulus here
         #320;
			$finish;
	end
      always #10 clk=~clk;
      
endmodule

