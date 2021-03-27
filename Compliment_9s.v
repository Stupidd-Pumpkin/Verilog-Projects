`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:54 02/04/2018 
// Design Name: 
// Module Name:    Compliment_9s 
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
module Compliment_9s(
    input [3:0] A,
	 input Cin,
    output [3:0] B,
	 output Cout
    );
wire [3:0] Ab;

RCA A1(.A(A^4'b1111), .B(0),  .Cin(1),   .S(Ab), .Cout());
RCA A2(.A(4'b1001),   .B(Ab), .Cin(Cin), .S(B),  .Cout(Cout));

endmodule
