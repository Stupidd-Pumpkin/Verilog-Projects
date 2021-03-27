`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:37 01/16/2018
// Design Name:   T_FF
// Module Name:   /home/ise/VLSI_01/T_FF_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_FF_Test;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.t(t), 
		.clk(clk), 
		.reset(reset),
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		t = 0;
		clk = 0;
		reset=0;

		#10;
      t = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		clk = 1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		t = 0;
		#10;
		clk = 0;
		
		reset =1;
		#10;
		clk = 1;
		#10;
		clk=0;
		#10;
		t=1;
		clk = 1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		t = 0;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

