`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:28 12/08/2020 
// Design Name: 
// Module Name:    FourbitnOtController 
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
module FourbitnOtController(

input clock, reset, init ,SR;
input [3:0] multiplicand, multiplier;
output reg [3:0] HI_FF , LO_FF;   
 );

wire count;
wire [3:0] sum;
reg  multiplicand_FF; 
assign [count,sum] = HI_FF + multiplicand_FF;

always @(posedge clock)
begin
 if init=0; begin HI_FF <= 4b'0, LO_FF <=multiplier ,multiplicand_FF<=multiplicand; end
else if (SR) begin if (LO_FF[0]) (HI_FF,LO_FF)== >> 1 end
 

endmodule
