`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:33 01/15/2018 
// Design Name: 
// Module Name:    RCA 
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
module RCA( A,B,Cin,S,Cout);
    input [3:0] A,B;
    output [3:0] S;
    input Cin;
    output Cout;
wire [2:0] C;

FA FA1(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(C[0]));
FA FA2(.A(A[1]),.B(B[1]),.Cin(C[0]),.S(S[1]),.Cout(C[1]));
FA FA3(.A(A[2]),.B(B[2]),.Cin(C[1]),.S(S[2]),.Cout(C[2]));
FA FA4(.A(A[3]),.B(B[3]),.Cin(C[2]),.S(S[3]),.Cout(Cout));

endmodule
