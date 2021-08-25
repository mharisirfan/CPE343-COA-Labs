`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:   Shiftregister
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
module Shiftregister(in1,in2,in3,in4,clk,q,s);
input in1,in2,in3,in4,clk,s;
output q;
wire a,b,c,d, o1,o3,o5;

mux_2 m1(a,s,1,in1);
dff dff1(a,clk,o1);

mux_2 m2(b,s,o1,in2);
dff dff2(b,clk,o3);

mux_2 m3(c,s,o3,in3);
dff dff3(c,clk,o5);

mux_2 m4(d,s,o5,in4);
dff dff4(d,clk,q);
endmodule