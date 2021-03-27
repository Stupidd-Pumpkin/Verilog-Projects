`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:40 02/04/2018 
// Design Name: 
// Module Name:    Comparator_1bit 
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
module Comparator_1bit(
    input A,B,Eq_In,Gr_In,
    output Eq_Out,Gr_Out
    );
//Eq_Out =1 => A=B ; Gr_Out=1 => A>B ; Gr_Out=0 => A<=B ; 
assign Eq_Out=Eq_In&(A~^B);
assign Gr_Out=Gr_In|(Eq_In&(A&(~B)));

endmodule
