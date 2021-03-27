`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:28 01/15/2018 
// Design Name: 
// Module Name:    JK_FF 
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
module JK_FF(
    input j,k,clk,
    output q,qb
    );
reg x;
assign q=x;
assign qb=~q;
always @(negedge clk)
begin
 if (~x)
 x=j;
 else
 x=~k;
end

endmodule
