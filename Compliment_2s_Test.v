`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:13:00 02/04/2018
// Design Name:   Compliment_2s
// Module Name:   /home/ise/VLSI/Compliment_2s_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Compliment_2s
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Compliment_2s_Test;

	// Inputs
	reg [3:0] A;
	reg Cin;

	// Outputs
	wire [3:0] B;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Compliment_2s uut (
		.A(A), 
		.Cin(Cin),
		.B(B),
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		Cin=1;

		// Wait 100 ns for global reset to finish
		#100;
		A=7;
        
		// Add stimulus here

	end
      
endmodule

