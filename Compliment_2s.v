`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:04:35 02/04/2018 
// Design Name: 
// Module Name:    Compliment_2s 
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
module Compliment_2s(
    input [3:0] A,
	 input Cin,
    output [3:0] B,
	 output Cout
    ); 
RCA A1(.A(A^4'b1111), .B(0), .Cin(Cin), .S(B), .Cout(Cout));

endmodule
