`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:20 12/22/2020 
// Design Name: 
// Module Name:    get_operands 
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
module get_operands(
output [31:0] operand1,operand2,
input [31:0] instruction,write_data,
input RegDst, clk,reset,extendopt, regwrite,ALUsrc
);
reg [4:0] mux1;
wire [31:0] ALUsrc0;
wire [31:0] extend_out;
registerfile r1(clock,reset,regwrite,instruction[25:21],instruction[20:16],mux1,write_data,operanad1,ALUsrc0);

always@(*)
begin
	if(extendopt)
		extendout = {16{instructions[15]},instruction[15:0]};
	else
		extendout = {16'd0,instruction[15:0]};
		
	if(~RegDst)
		mux1 = instruction[20:16];
	else
		mux1 = instruction[15:11];

	if(~ALUrsc)
		operand2 = ALUsrc0;
	else 
		operand2 = extend_out;
		
end	
	 
	 

endmodule
