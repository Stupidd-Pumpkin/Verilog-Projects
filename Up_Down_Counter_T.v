`timescale 1ns / 1ps
module Up_Down_Counter_T( input [3:0] N, input clk, up, resetb, output [3:0] count);
wire down=~up;
wire [3:0] countb, load;
reg [3:0] n;
wire check;
always @(N)
n=N;
always @(clk)
n=0;
assign load=n; 
assign check=~(load[0]|load[1]|load[2]|load[3]);

T_FF FF1( .t(1'b1), .clk(clk), 									   .resetb(resetb&(load[0]+check)), .preset(load[0]), .q(count[0]), .qb(countb[0]));
T_FF FF2( .t(1'b1), .clk((up&count[0])|(down&(countb[0]))), .resetb(resetb&(load[1]+check)), .preset(load[1]), .q(count[1]), .qb(countb[1]));
T_FF FF3( .t(1'b1), .clk((up&count[1])|(down&(countb[1]))), .resetb(resetb&(load[2]+check)), .preset(load[2]), .q(count[2]), .qb(countb[2]));
T_FF FF4( .t(1'b1), .clk((up&count[2])|(down&(countb[2]))), .resetb(resetb&(load[3]+check)), .preset(load[3]), .q(count[3]), .qb(countb[3]));

endmodule
