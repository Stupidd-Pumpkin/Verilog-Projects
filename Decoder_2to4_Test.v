`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:55:19 01/16/2018
// Design Name:   Decoder_2to4
// Module Name:   /home/ise/VLSI_01/Decoder_2to4_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_2to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_2to4_Test;

	// Inputs
	reg x1;
	reg x0;
	reg reset;

	// Outputs
	wire m0;
	wire m1;
	wire m2;
	wire m3;

	// Instantiate the Unit Under Test (UUT)
	Decoder_2to4 uut (
		.x1(x1), 
		.x0(x0), 
		.reset(reset), 
		.m0(m0), 
		.m1(m1), 
		.m2(m2), 
		.m3(m3)
	);

	initial begin
		// Initialize Inputs
		x1 = 0;
		x0 = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x1 = 0;
		x0 = 1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x1 = 1;
		x0 = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x1 = 1;
		x0 = 1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x1 = 1;
		x0 = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

