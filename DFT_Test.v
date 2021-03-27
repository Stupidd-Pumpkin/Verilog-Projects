`timescale 1ns / 1ps

module DFT_Test;

	// Inputs
	reg [5:0] x0;
	reg [5:0] x1;
	reg [5:0] x2;
	reg [5:0] x3;
	reg [5:0] x4;
	reg [5:0] x5;
	reg [5:0] x6;
	reg [5:0] x7;
	reg [5:0] x8;
	reg [5:0] x9;
	reg [5:0] x10;
	reg [5:0] x11;
	reg [5:0] x12;
	reg [5:0] x13;
	reg [5:0] x14;
	reg [5:0] x15;
	reg clk;

	// Outputs
	wire [255:0] X;
	wire [255:0] Y;
	wire [15:0] Q;

	// Instantiate the Unit Under Test (UUT)
	DFT uut (
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.x8(x8), 
		.x9(x9), 
		.x10(x10), 
		.x11(x11), 
		.x12(x12), 
		.x13(x13), 
		.x14(x14), 
		.x15(x15), 
		.clk(clk), 
		.X(X), 
		.Y(Y), 
		.Q(Q)
	);
reg [15:0] p;
	initial begin
		clk=0;
		#0.1;

		x0 = 4;
		x1 = 4;
		x2 = 4;
		x3 = 4;
		x4 = 4;
		x5 = 4;
		x6 = 4;
		x7 = 4;
		x8 = 4;
		x9 = 4;
		x10 = 4;
		x11 = 4;
		x12 = 4;
		x13 = 4;
		x14 = 4;
		x15 = 4;

		for (p=0;p<2560;p=p+1)
		begin
		clk=1;
		#0.1;
		clk=0;
		#0.1;
		end
	end
      
endmodule

