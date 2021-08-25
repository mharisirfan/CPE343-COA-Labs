`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:     
// Design Name: 
// Module Name:    
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
module COUNTERfourBit(
   input clk,      
   input rst,              
   output reg[3:0] out);      
 
  
 always @ (posedge clk) begin  
    if (! rst)  
      out <= 0;  
    else  
      out <= out + 1;  
  end  
endmodule 