`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:     
// Design Name: 
// Module Name:    multiplier_controller 
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
module multiplier_controller(
   
input clock,reset,
output reg init,SR
 );

reg[2:0] state,next_state;
parameter INIT = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,S4 = 3'b100,DONE = 3'b101;

always @(state)
begin
next_state = INIT;
case(state)
	INIT:  next_state = S1;
	S1:  next_state = S2; 
	S2:  next_state = S3; 
	S3:  next_state = S4;
	S4:  next_state = DONE;
	DONE: next_state = DONE;
	endcase
end

always @ (posedge clock, negedge reset)
	if(~reset) state<=INIT;
	else state <= next_state;

always @ (state)
begin init =0 ; SR = 0 ; 
	case (state)
	INIT:  init = 1 ;  
	S1,S2,S3:  SR = 1; 
	S4: begin init = 1; SR = 1; end
	endcase
	end
endmodule

