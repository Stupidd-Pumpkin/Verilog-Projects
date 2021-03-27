`timescale 1ns / 1ps


module FA(
    input A,B,Cin,
    output S,Cout
    );

assign S=A^B^Cin;
assign Cout=(A&B)|(B&Cin)|(Cin&A);
endmodule
