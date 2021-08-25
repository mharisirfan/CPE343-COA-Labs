`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:29 10/30/2020 
// Design Name: 
// Module Name:    D_latch 
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
module D_latch(
    input D,
    input En,
    output Q,
    output Qdash
    );
assign Q = ~((~(D & En)) & Qdash);
assign Qdash = ~((~(~D & En)) & Q);


endmodule
