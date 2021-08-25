`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    mux_21
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
module mux_21(y,select, in1 , in2  );

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
