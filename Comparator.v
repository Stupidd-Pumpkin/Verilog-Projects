`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:10 02/04/2018 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
    input [7:0] A,B,
    output [1:0] Out
    );
	 //Out[1]:A=B ;Out[0]:A>B
wire [1:0] x7,x6,x5,x4,x3,x2,x1;

Comparator_1bit C1(.A(A[7]), .B(B[7]),	.Eq(1), 		.Out(x7));
Comparator_1bit C2(.A(A[6]), .B(B[6]), .Eq(x7[1]),	.Out(x6));
Comparator_1bit C3(.A(A[5]), .B(B[5]), .Eq(x6[1]),	.Out(x5));
Comparator_1bit C4(.A(A[4]), .B(B[4]), .Eq(x5[1]),	.Out(x4));
Comparator_1bit C5(.A(A[3]), .B(B[3]), .Eq(x4[1]),	.Out(x3));
Comparator_1bit C6(.A(A[2]), .B(B[2]), .Eq(x3[1]),	.Out(x2));
Comparator_1bit C7(.A(A[1]), .B(B[1]), .Eq(x2[1]),	.Out(x1));
Comparator_1bit C8(.A(A[0]), .B(B[0]), .Eq(x1[1]),	.Out(Out));



endmodule


//reg [1:0] y;
//reg [7:0] a, b;
//initial
//begin 
//a=A;
//b=B;
//end
//assign Out=y;
//always @(*)
//begin
//if (x[1]==0)
//	begin 
//	y[1]=0;
//	y[0]=x[0];
//	end
//else 
//	begin
//	a=a<<2;
//	b=b<<2;
//	end
//end
