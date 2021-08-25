`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:56 12/08/2020 
// Design Name: 
// Module Name:    multiplier_datapath 
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
module multiplier_datapath(
   
input clock,reset,init,SR,
input [3:0] multiplicand, multiplier,
output reg [3:0] HI_FF, LO_FF
	);
wire cout;
wire [3:0]sum ;
reg [3:0] multiplicand_FF;
assign {cout,sum} = HI_FF + multiplicand_FF;

always @ (posedge clock )
begin 
 if(init) begin HI_FF <= 4'b0 ; LO_FF <= multiplier ; multiplicand_FF <= multiplicand ; end
else if(SR) // SR is true for states S1, S2, S3, S4
begin
    if(LO_FF[0])
        {HI_FF,LO_FF} <= {{cout,sum}, LO_FF[3:1]}; // write it yourselves
    else
        {HI_FF,LO_FF} <= {1'b0, HI_FF, LO_FF[3:1]}; // Simple Shift right when LO[0] is false;
end
end
endmodule
