`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:18 11/10/2020 
// Design Name: 
// Module Name:    SRLATCHcontinuous 
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
module SRLATCHcontinuous( Q_out, x_in );

input [1:0] x_in;
output[1:0] Q_out;

assign Q_out[0] = ~(Q_out[1] & x_in[0]);
assign Q_out[1] = ~(Q_out[0] & x_in[1]);

endmodule
