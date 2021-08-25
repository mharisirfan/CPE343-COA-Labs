`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:32 12/15/2020 
// Design Name: 
// Module Name:    InstructionMemory
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
module InstructionMemory(

  input[31:0] address,
  output reg [31:0]Instruction 
);

reg [31:0] register [7:0];

initial begin
        register[0] <= 32'h8c0c0000;
        register[1] <= 32'h8c0c0001;
        register[2] <= 32'h8c0c0002;
        register[3] <= 32'h8c0c0003;
        register[4] <= 32'h018d4820;
        register[5] <= 32'h01cf5020;
        register[6] <= 32'h01494022;
        register[7] <= 32'hac080004;
    end


always @ (address)
begin
Instruction<=register[address];			//checking which instruction to forward

end
endmodule

