`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:59 01/15/2018
// Design Name:   RCA
// Module Name:   /home/ise/VLSI_01/RCA_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_Test;

	// Inputs
	reg [0:3] A;
	reg [0:3] B;
	reg Cin;

	// Outputs
	wire [0:3] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Cin(Cin), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2;
		B = 3;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 3;
		B = 4;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 10;
		B = 6;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

