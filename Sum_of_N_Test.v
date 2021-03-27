`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:28 02/03/2018
// Design Name:   Sum_of_N
// Module Name:   /home/ise/VLSI_01/Sum_of_N_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sum_of_N
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sum_of_N_Test;

	// Inputs
	reg [3:0] N;
	reg clk;

	// Outputs
	wire [7:0] S;

	// Instantiate the Unit Under Test (UUT)
	Sum_of_N uut (
		.N(N), 
		.S(S),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		N=0;
		clk=0;
		// Wait 100 ns for global reset to finish
		#1;
		N=9;
		#10;
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
		#10;
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
		clk=1;
		
        
		// Add stimulus here

	end
      
endmodule

