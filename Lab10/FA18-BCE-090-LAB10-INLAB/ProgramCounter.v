`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:42 12/15/2020 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter(
 
 input clk,reset,enable,

 output reg [31:0]pc

);

wire [31:0] pc_next;
always @(posedge clk)

begin


 if (reset)
  pc <=32'b0;


else if(enable)

pc <=pc_next;
end
assign pc_next = pc+1;


 endmodule
