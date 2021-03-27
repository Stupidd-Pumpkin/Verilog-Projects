`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:53:31 02/04/2018
// Design Name:   Division
// Module Name:   /home/ise/VLSI/Division_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Division_Test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;

	// Outputs
	wire [7:0] Q;
	wire [7:0] R;

	// Instantiate the Unit Under Test (UUT)
	Division uut (
		.A(A), 
		.B(B), 
		.clk(clk),
		.Q(Q), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 14;
		B = 3;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		

		// Wait 100 ns for global reset to finish
		#100;
		A = 24;
		B = 3;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 100;
		B = 12;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 8;
		B = 4;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

