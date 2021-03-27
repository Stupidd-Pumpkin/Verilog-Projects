`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:03 01/16/2018 
// Design Name: 
// Module Name:    T_FF 
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
module T_FF(
    input t,clk, resetb, preset,
    output q,qb
    );
reg x;
initial x=0;
assign q=x, qb=~q;



always @(negedge clk, resetb, preset)
begin
	if (resetb==0)
	x=0;
	else 
	if (preset==1)
	x=1;
end

always @(negedge clk)
if (t && resetb && (~preset))
x=~x;

endmodule
