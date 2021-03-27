`timescale 1ns / 1ps


module SS_Counter_JK(clk,count);
input clk;
output [3:0] count;
wire q0,q1,q2,q3,q0b,q1b,q2b,q3b;
assign count[3]=q0, q0b=~q0;
assign count[2]=q0&q1, q1b=~q1;
assign count[1]=q0&q1&q2, q2b=~q2;
assign count[0]=q0&q1&q2&q3, a3b=~q3;

JK_FF jk0(.j(1), .k(1), .clk(clk), .q(q0), .qb(q0b));
JK_FF jk1(.j(count[3]), .k(count[3]), .clk(clk), .q(q1), .qb(q1b));
JK_FF jk2(.j(count[2]), .k(count[2]), .clk(clk), .q(q2), .qb(q2b));
JK_FF jk3(.j(count[1]), .k(count[1]), .clk(clk), .q(q3), .qb(q3b));

endmodule
