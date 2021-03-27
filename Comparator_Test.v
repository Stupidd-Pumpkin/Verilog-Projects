`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:24 02/04/2018
// Design Name:   Comparator
// Module Name:   /home/ise/VLSI/Comparator_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comparator_Test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [1:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Comparator uut (
		.A(A), 
		.B(B), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		B = 5;

		// Wait 100 ns for global reset to finish
		#100;
      A = 9;
		B = 9;

		// Wait 100 ns for global reset to finish
		#100;
      A = 10;
		B = 8;

		// Wait 100 ns for global reset to finish
		#100;
		A = 4;
		B = 8;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

