`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:09:47 02/04/2018
// Design Name:   Bin_to_BCD
// Module Name:   /home/ise/VLSI/Bin_to_BCD_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bin_to_BCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bin_to_BCD_Test;

	// Inputs
	reg [3:0] A;

	// Outputs
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	Bin_to_BCD uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A =3;

		// Wait 100 ns for global reset to finish
		#100;
		A =10;
		#100;
		A=15;
		#100;
		A=0;
		#100;
		A =8;
		#100;
		A=12;
		#100;
		A=13;
		#100;

        
		// Add stimulus here

	end
      
endmodule

