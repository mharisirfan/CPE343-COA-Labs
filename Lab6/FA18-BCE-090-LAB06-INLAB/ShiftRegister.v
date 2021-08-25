`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:06 11/10/2020 
// Design Name: 
// Module Name:    ShiftRegister 
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
module ShiftRegister(pA,pB,pC,pD,s,clk,Q,q2,q3,q4,q5

  );
input pA,pB,pC,pD,s,clk;
output Q,q2,q3,q4,q5;
wire a,b,c,d,a1,a2,a3;

wire z=1;
Mux u1(z,pD,s,a);
D_flip_flop u2(a,clk,a1,q2);

Mux u3(a1,pC, s,b);
D_flip_flop u4 (b, clk,a2,q3);

Mux u5(a2,pB,s,c);
D_flip_flop u6 (c,clk, a3,q4);

Mux u7(a3,pA,s,d);
D_flip_flop u8(d,clk,Q,q5);




endmodule
