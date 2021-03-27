`timescale 1ns / 1ps

module BW_Multiplier(
    input [3:0] a,b,
    output [7:0] p
    );
// Multiplication of two 4 bit 2's compliment numbers a,b using Baugh Wooley Multiplier.
wire [2:0] pp1,pp2,pp3,pp4,c1,c2,c3,c4,c5;
assign p[0]=a[0]&b[0];


HA A11(.A(b[0]&a[1]), 	 .B(b[1]&a[0]), .S(p[1]), 	  .C(c1[0]));
FA A12(.A(b[0]&a[2]),    .B(b[1]&a[1]), .Cin(c1[0]), .S(pp1[1]), .Cout(c1[1]));
FA A13(.A(~(b[0]&a[3])), .B(b[1]&a[2]), .Cin(c1[1]), .S(pp1[2]), .Cout(c1[2]));
HA A21(.A(b[2]&a[0]), 	 .B(pp1[1]),	 .S(p[2]), 	  .C(c2[0]));
FA A22(.A(b[2]&a[1]),	 .B(pp1[2]),	 .Cin(c2[0]), .S(pp2[1]), .Cout(c2[1]));
FA A23(.A(~(b[1]&a[3])), .B(c1[2]),	  	 .Cin(c2[1]), .S(pp2[2]), .Cout(c2[2]));
HA A31(.A(~(b[3]&a[0])), .B(pp2[1]),	 .S(p[3]),	  .C(c3[0]));
FA A32(.A(b[2]&a[2]),    .B(pp2[2]), 	 .Cin(c3[0]), .S(pp3[1]), .Cout(c3[1]));
FA A33(.A(~(b[2]&a[3])), .B(c2[2]), 	 .Cin(c3[1]), .S(pp3[2]), .Cout(c3[2]));
FA A41(.A(~(b[3]&a[1])), .B(pp3[1]), 	 .Cin(1),	  .S(p[4]),   .Cout(c4[0]));
FA A42(.A(~(b[3]&a[2])), .B(pp3[2]), 	 .Cin(c4[0]), .S(p[5]),   .Cout(c4[1]));
FA A43(.A(b[3]&a[3]),	 .B(c3[2]), 	 .Cin(c4[1]), .S(p[6]),   .Cout(c5[0]));

assign p[7]=~c5[0];

endmodule
