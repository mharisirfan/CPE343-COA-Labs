`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:29 12/22/2020 
// Design Name: 
// Module Name:    registerfile
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
module registerfile(
 input clock, reset, regwrite,
 
input [4:0] RA, RB , RW,
input [31:0] busw,
output reg [31:0] busa,busb);

reg [31:0] Registers [0:31];

always@ (*)
begin
Registers[0] = 32'd0;
busa= Registers[RA];
busb= Registers[RB];
end

integer i;

always @ (posedge clock)
begin
if (reset)
   for ( i=1 ; i <= 31 ; i=i+1)
        Registers[i]<= 32'd0;

else
if(regwrite)
Registers[RW] <= busw;

end

endmodule
