`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:24 02/04/2018 
// Design Name: 
// Module Name:    BCD_Adder 
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
module BCD_Adder(
    input [3:0] A,B,
	 input Cin,
    output [3:0] S,
    output Cout
    );
wire [3:0] sum1,sum2;
wire Cout1,Cout2;
wire x;
RCA A1(.A(A), 	  .B(B), 	 	.Cin(Cin), .S(sum1), .Cout(Cout1));
RCA A2(.A(sum1), .B(4'b0110), .Cin(0), .S(sum2), .Cout(Cout2));
 
assign x=Cout1|(sum1[3]&(sum1[2]|sum1[1]));

assign S[3]=(sum1[3]&(~x))|(sum2[3]&x);
assign S[2]=(sum1[2]&(~x))|(sum2[2]&x);
assign S[1]=(sum1[1]&(~x))|(sum2[1]&x);
assign S[0]=(sum1[0]&(~x))|(sum2[0]&x);
assign Cout=x;

endmodule
