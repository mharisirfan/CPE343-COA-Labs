`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    mux_41
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
module mux_41(in0, in1, in2,in3,mux_out, select); 

		
output reg  mux_out; 
		input in3, in2, in1 , in0; 
		input [1 : 0]  select; 
		
			

		always @ (in3 or in2 or in1 or in0 or select ) 
			begin	
				
                 case (select) 
						2'b00:  mux_out = in0;    //if select=00
						2'b01:  mux_out = in1;   //if select=01
						2'b10:  mux_out = in2;  //if select=10
						2'b11:  mux_out = in3; //if select=11
					default:  mux_out = 1'bx;//Any other value
										         // e.g. xx or zz
					endcase 
			end
		endmodule



