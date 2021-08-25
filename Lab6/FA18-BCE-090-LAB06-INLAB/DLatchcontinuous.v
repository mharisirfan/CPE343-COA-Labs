`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:20 11/10/2020 
// Design Name: 
// Module Name:    DLatchcontinuous 
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
module DLatchcontinuous(Q , Qdash, D, en);
input D,en;

output Q,Qdash;

wire nand1 = ~ (D & en);

wire nand2 = ~ (en & ~(D));

assign Q= ~ (nand1 & Qdash);
assign Qdash= ~ (Q & nand2);
 

endmodule
