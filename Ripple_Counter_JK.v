`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:44 01/15/2018 
// Design Name: 
// Module Name:    Ripple_Counter_JK 
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
module Ripple_Counter_JK(clk,count);
input clk;
output [0:3] count;
wire [3:0] countb;
genvar i;
for (i=0;i<4;i=i+1)
	assign countb[i]=~count[i];
JK_FF jk1(.j(1), .k(1), .clk(clk), .q(count[3]), .qb(countb[3]));
JK_FF jk2(.j(1), .k(1), .clk(count[3]), .q(count[2]), .qb(countb[2]));
JK_FF jk3(.j(1), .k(1), .clk(count[2]), .q(count[1]), .qb(countb[1]));
JK_FF jk4(.j(1), .k(1), .clk(count[1]), .q(count[0]), .qb(countb[0]));

endmodule
