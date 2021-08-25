`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:27 10/13/2020 
// Design Name: 
// Module Name:    DLatch 
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
module DLatch(
    input D,
    input En,
    output Q,
    output Qdash
    );

wire ot_not, ot_nand1,ot_nand2;

not x1 (ot_not,D);

nand a1(ot_nand1,D,En);
nand a2(ot_nand2,ot_not,En);

nand a3(Q, ot_nand1,Qdash);
nand a4(Qdash, ot_nand2, Q);


endmodule
