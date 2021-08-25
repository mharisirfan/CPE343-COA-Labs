`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:25 11/24/2020 
// Design Name: 
// Module Name:    mux_2 
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
module mux_2(y,select, in1 , in2  );

input select,in1,in2;
output reg y;

always @ (in2 or in1 or select) 
begin
          
case (select) 

	1'b0:  y = in1;   //if select=01
	1'b1:  y = in2;   //if select=10

endcase 
end
		



endmodule
