`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:26 02/03/2018 
// Design Name: 
// Module Name:    Calculator 
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
module Calculator(
    input [3:0] A,
    input [3:0] B,
    input Op,
    output [3:0] Out,
	 output cy
    );
//0 :Add
//1 :Sub
wire b;
assign b=B^Op;


RCA A1(.A(A), .B(b), .Cin(1'b0), .S(Out), .Cout(cy));

endmodule
