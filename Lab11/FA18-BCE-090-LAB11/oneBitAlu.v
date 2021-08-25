`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:41 12/22/2020 
// Design Name: 
// Module Name:    oneBitAlu 
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
module oneBitAlu(input a,b,cin,less, binv,
input [1:0] Operation,
output reg result, cout, overflow,slt);
reg _b;
reg sum;
 
always@(a or b or cin or binv or Operation or less)
begin
    if(binv)
        _b = ~b;
    else 
        _b = b;

    {cout,sum} = a+_b+cin;

    case(Operation)
    2'b00: result = a & _b;
    2'b01: result = a | _b;
    2'b10: result = sum;
	 2'b11: result =less;
    default: result = 1'bx;
    endcase
	  overflow = cin ^ cout;
     slt = overflow ^ sum;
end
endmodule
