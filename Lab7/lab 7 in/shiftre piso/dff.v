`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:49 11/24/2020 
// Design Name: 
// Module Name:    dff 
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

module dff( 
    input D,
    input Clk,
    output reg Q
	 
    );



wire x1 = ~(D & Clk);
wire x2 = ~((~D)&Clk);
wire y1 = ~(x2 & y);
wire y = ~(x1 & y1);

wire x3 = ~(y & ~Clk);
wire x4 = ~((~y)& ~Clk);
wire q1 = ~(x4 & y);

always @(D or Clk)
begin
Q <= ~(q1 & x3);
end
endmodule
