`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    multiplier_datapath 
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
module multiplier_datapath(
   
input clock,reset,init,SR,
input [3:0] multiplicand, multiplier,
output reg [3:0] HI_FF, LO_FF
	);
wire cout,cout2;
wire [3:0]sum,diff ;
reg [3:0] multiplicand_FF;
assign {cout,sum} = HI_FF + multiplicand_FF;
assign {cout2,diff} = HI_FF - multiplicand_FF;

always @ (posedge clock )
begin 
 if(init & ~SR) begin HI_FF <= 4'b0 ; LO_FF <= multiplier ; multiplicand_FF <= multiplicand ; end
else if(SR & ~init) 
begin
    if(LO_FF[0])
     begin  if(cout) {HI_FF,LO_FF} <= {{cout,sum}, LO_FF[3:1]}; // if overflow then sign = cout
		 else     {HI_FF,LO_FF} <= {{sum[3],sum}, LO_FF[3:1]}; end // if no overflow then sign = extend
	
	else 
		  {HI_FF,LO_FF} <= { HI_FF[3], HI_FF, LO_FF[3:1]}; // Simple Shift right when LO[0] is false;
end

else if(init & SR)
begin
    if(LO_FF[0])
        {HI_FF,LO_FF} <= {{(multiplicand[3] ^ multiplier[3]) ,diff}, LO_FF[3:1]}; // write it yourselves
    else
        {HI_FF,LO_FF} <= {sum[3], HI_FF, LO_FF[3:1]}; // Simple Shift right when LO[0] is false;
end
end
endmodule
