`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:25 03/19/2018 
// Design Name: 
// Module Name:    FP_Calculator 
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
module FP_Calculator(
    input [31:0] A,B,
    input Cin,Sum,
    output [31:0] S,
    output Cout
    );
wire [22:0] A_F,	B_F,	S_F;
wire [7:0] A_E,	B_E,	S_E;
wire A_S,	B_S,	S_S;
assign A_F=A[22:0];
assign B_F=B[22:0];
assign S[22:0]=S_F;
assign A_E=A[30:23];
assign B_E=B[30:23];
assign S[30:23]=S_E;
assign A_S=A[31];
assign B_S=B[31];
assign S[31]=S_S;

wire [1:0] x;

Comparator C1(.A(A_E),	.B(B_E), .Out(x));

endmodule
