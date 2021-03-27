`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:42 01/16/2018 
// Design Name: 
// Module Name:    Shift_Reg_4 
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
module Shift_Reg_4(input left,in,clk, output [3:0] q
    );
wire right;
assign right=~left;
wire [3:0] qb;

D_FF D0( .d((in&left)|(q[1]&(right))),   .clk(clk), .q(q[0]), .qb(qb[0]));
D_FF D1( .d((q[0]&left)|(q[2]&(right))), .clk(clk), .q(q[1]), .qb(qb[1]));
D_FF D2( .d((q[1]&left)|(q[3]&(right))), .clk(clk), .q(q[2]), .qb(qb[2]));
D_FF D3( .d((q[2]&left)|(in&(right))),   .clk(clk), .q(q[3]), .qb(qb[3]));

endmodule
