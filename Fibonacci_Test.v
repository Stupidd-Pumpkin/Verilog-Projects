`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur
// Engineer: Shaik Mohammed Sameer
//
// Create Date:   12:56:37 02/03/2018
// Design Name:   Fibonacci
// Module Name:   /home/ise/VLSI_01/Fibonacci_Test.v
// Project Name:  VLSI_01
// Target Device:  Digilent Nexys Video 3
// Tool versions:  
// Description: DFTBA!
//
// Verilog Test Fixture created by ISE for module: Fibonacci
//
// Dependencies:
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: London Baby!
// 
////////////////////////////////////////////////////////////////////////////////

module Fibonacci_Test;

	// Inputs
	reg [3:0] n;
	reg clk;

	// Outputs
	wire [11:0] F;

	// Instantiate the Unit Under Test (UUT)
	Fibonacci uut (
		.n(n), 
		.clk(clk),
		.F(F)
	);

	initial begin
		// Initialize Inputs
		n = 10;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		

		// Wait 100 ns for global reset to finish  
		// Add stimulus here

	end
      
endmodule
