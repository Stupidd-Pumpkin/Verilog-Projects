`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:01:37 02/04/2018
// Design Name:   BCD_Adder
// Module Name:   /home/ise/VLSI/BCD_Adder_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_Adder_Test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	BCD_Adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin),
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		B = 6;
		Cin=0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 9;
		B = 9;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 4;

		// Wait 100 ns for global reset to finish
		#100;
A = 5;
		B = 8;

		// Wait 100 ns for global reset to finish
		#100;		
		// Add stimulus here

	end
      
endmodule

