`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:42 10/13/2020 
// Design Name: 
// Module Name:    NAND-SRLATCH 
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
module NANDSRLATCH(
    output Q,
    output Q_dash,
    input S,
    input R
    );

nand A1 (Q, S,Q_dash);
nand A2 (Q_dash, R,Q);

endmodule
