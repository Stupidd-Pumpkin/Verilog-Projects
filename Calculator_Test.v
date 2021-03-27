`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:56:10 02/03/2018
// Design Name:   Calculator
// Module Name:   /home/ise/Calculator/Calculator_Test.v
// Project Name:  Calculator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Calculator_Test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Op;

	// Outputs
	wire [3:0] Out;
	wire cy;

	// Instantiate the Unit Under Test (UUT)
	Calculator uut (
		.A(A), 
		.B(B), 
		.Op(Op), 
		.Out(Out),
		.cy(cy)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		B = 3;
		Op = 1;

		// Wait 100 ns for global reset to finish
		#100;
       // Initialize Inputs
		A = 8;
		B = 2;
		Op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

