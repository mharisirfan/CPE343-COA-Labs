`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:46 12/08/2020 
// Design Name: 
// Module Name:    fourbitM 
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
module fourbitM( input clock, reset,
output reg init, SR
    );


reg [2:0] currentstate, next_state;
parameter INIT=3'b000, S1=3'b001, S2= 3'b010, S3=3'b011, S4=3'b100, DONE=3'b101;

always @(currentstate)
begin

next_state=INIT;

case(currentstate)

INIT:  next_state=S1; 
S1:  next_state=S2; 
S2:  next_state=S3; 
S3:  next_state=S4; 
S4:  next_state=DONE; 
DONE:  next_state=DONE; 
endcase
end

always @(posedge clock, negedge reset)
if (~reset) currentstate<= INIT;
else currentstate <= next_state;

always @(currentstate)
begin init=0;SR=0; 


case(currentstate)
INIT: begin init =1;end
S1,S2,S3,S4: begin  SR=1; end
 
endcase
end
endmodule
