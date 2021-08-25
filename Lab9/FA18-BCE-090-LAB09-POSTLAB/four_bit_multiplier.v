`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:15 12/09/2020 
// Design Name: 
// Module Name:    Signed_fourbit
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
module Signed_fourbit(
    
input clk,reset,
input [3:0] multiplicand,multiplier,
output [3:0] HI_FF , LO_FF
);
wire init,SR;

multiplier_controller MC(clk,reset,init,SR);
multiplier_datapath MDP(clk,reset,init,SR,multiplicand,multiplier,HI_FF,LO_FF);

endmodule
