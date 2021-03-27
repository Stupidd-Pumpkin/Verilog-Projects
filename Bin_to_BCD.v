`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:01:39 02/04/2018 
// Design Name: 
// Module Name:    Bin_to_BCD 
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
module Bin_to_BCD(
    input [7:0] A,
    output [11:0] B
    );
reg [3:0] x;



Comparator C1(.A(A), .B(8'b01100011), .Out(i));
Comparator C2(.A(A), .B(8'b11000111), .Out(j));

always @(*)
begin
if ((A[3]==1)&(A[2]|A[1]==1))
x=4'b0110;
else 
x=4'b0000;
end

RCA A1(.A(A), .B(x), .Cin(0), .S(B[3:0]), .Cout(B[4]));

endmodule

