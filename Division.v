`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:00 02/04/2018 
// Design Name: 
// Module Name:    Division 
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
module Division(
    input [7:0] A,B,
	 input clk,
    output [7:0] Q,
    output [7:0] R
    );
reg [7:0] i,l;
wire [7:0] j;
wire [1:0] x1,x2,x3;
always @(A,B)
begin
i=A;
l=1;
end
RCA A1(.A(B[3:0]^4'b1111), .B(0), .Cin(1'b1),  .S(j[3:0]), .Cout(x1[0]));
RCA A2(.A(B[7:4]^4'b1111), .B(0), .Cin(x1[0]), .S(j[7:4]), .Cout(x1[1]));

RCA A3(.A(i[3:0]), .B(j[3:0]), .Cin(1'b0),  .S(R[3:0]), .Cout(x2[0]));
RCA A4(.A(i[7:4]), .B(j[7:4]), .Cin(x2[0]), .S(R[7:4]), .Cout(x2[1]));

Comparator C1(.A(R), .B(B), .Out(x3));
always @(negedge clk)
begin 
if (x3[1]+x3[0])
	begin
	i=R;
	l=l+1;
	end
end

assign Q=l;

endmodule
