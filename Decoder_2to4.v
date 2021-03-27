`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:22 01/16/2018 
// Design Name: 
// Module Name:    Decoder_2to4 
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
module Decoder_2to4(
    input x1,x0,reset,
    output m0,m1,m2,m3
    );
assign m0=(~x1&~x0)&(~reset);
assign m1=(~x1&x0)&(~reset);
assign m2=(x1&~x0)&(~reset);
assign m3=(x1&x0)&(~reset);


endmodule
