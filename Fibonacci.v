`timescale 1ns / 1ps
module Fibonacci( input clk, [3:0] n, output [11:0] F);
reg [11:0] F1, F2;
wire [3:0] C;
integer i;

initial
begin
i=0;
F1=0;
F2=1;
end

RCA A1(.A(F1[3:0]),  .B(F2[3:0]),  .Cin(0),    .S(F[3:0]),  .Cout(C[0]));
RCA A2(.A(F1[7:4]),  .B(F2[7:4]),  .Cin(C[0]), .S(F[7:4]),  .Cout(C[1]));
RCA A3(.A(F1[11:8]), .B(F2[11:8]), .Cin(C[1]), .S(F[11:8]), .Cout(C[2]));

always @(posedge clk)
begin
if (i<n-2)
	begin
	i=i+1;
	F1 =F2;
	F2 =F;
	end
end
endmodule
