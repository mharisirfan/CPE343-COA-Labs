`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:29 12/15/2020 
// Design Name: 
// Module Name:    Get_instruction
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Get_instruction(
 input clk, reset, enable, 

output [31:0]inst);

wire [31:0] pc;

ProgramCounter p(clk,reset,enable,pc);

adder m(pc,inst);

endmodule

