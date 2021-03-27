`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:42 01/15/2018
// Design Name:   JK_FF
// Module Name:   /home/ise/VLSI_01/JK_FF_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FF_Test;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		clk=1;
		#100;
		j = 0;
		k = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;
      #100;  
		j = 1;
		k = 0;
		clk=1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;
      #100; 
		
		j = 1;
		k = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;
      #100; 
		j = 0;
		k = 1;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;
      #100; 
		j = 1;
		k = 1;
		clk=1;
       
		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;
      #100; 
		// Add stimulus here

	end
      
endmodule

