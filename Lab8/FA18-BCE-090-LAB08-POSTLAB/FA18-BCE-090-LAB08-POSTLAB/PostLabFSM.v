`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    PostLabFSM
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
module PostLabFSM( output reg y_out,
input x_in, clock, reset
    );
reg [1:0] currentstate, next_state;
parameter S0=2'b00, S1=2'b01, S2= 2'b11, S3=2'b10;

always @(currentstate, x_in)
begin

next_state=S0;

case(currentstate)
S0: if(x_in) next_state=S1; 
S1: if(x_in) next_state=S2; 
S2: if(~x_in) next_state=S3; 
S2: if(x_in) next_state=S2; 
S3: if(x_in) next_state=S1; 
S3: if(x_in) next_state=S1; 
endcase
end

always @(posedge clock, negedge reset)
if (~reset) currentstate<= S0;
else currentstate <= next_state;

always @(currentstate, x_in)
case(currentstate)
S0,S1,S3: y_out=0;
S2: y_out=~ x_in;
endcase


endmodule
