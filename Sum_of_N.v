`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:04 01/30/2018 
// Design Name: 
// Module Name:    Sum_of_N 
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
module Sum_of_N(input [3:0] N,input clk,output [7:0] S);

wire [7:0] T,Sum;
reg [7:0] Acc;
wire [3:0] i;
wire C1,C2;
initial 
begin
Acc=0;
end
assign T=Acc;
Up_Down_Counter_T UDC1( .N(N), .clk(clk), .up(0), .resetb((~i[0])|i[1]|i[2]|i[3]), .count(i));

RCA A1( .A(T[3:0]), .B(i), .Cin(0), .S(Sum[3:0]), .Cout(C1));
RCA A2( .A(T[7:4]), .B(0), .Cin(C1), .S(Sum[7:4]), .Cout(C2));

assign S=Sum+1;
always @(negedge clk)
Acc=Sum;
endmodule
