`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:20:41 01/29/2018
// Design Name:   Braun_Multiplier
// Module Name:   /home/ise/VLSI_01/Braun_Multiplier_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Braun_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Braun_Multiplier_Test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	Braun_Multiplier uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 5;

		// Wait 100 ns for global reset to finish
		#10;
      a = 3;
		b = 5;

		// Wait 100 ns for global reset to finish
		#10; 
		a = 15;
		b = 15;

		// Wait 100 ns for global reset to finish
		#10;
		a = 5;
		b = 2;

		// Wait 100 ns for global reset to finish
		#10;
		a = 10;
		b = 8;

		// Wait 100 ns for global reset to finish
		#10;
		// Add stimulus here

	end
      
endmodule

