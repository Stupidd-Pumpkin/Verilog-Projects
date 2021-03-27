`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:49 01/18/2018
// Design Name:   Shift_Reg_4
// Module Name:   /home/ise/VLSI_01/Shift_Reg_4_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift_Reg_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shift_Reg_4_Test;

	// Inputs
	reg left;
	reg in;
	reg clk;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Shift_Reg_4 uut (
		.left(left), 
		.in(in), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		left = 1;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		
		
		left = 0;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 0;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;
		in = 1;
		clk = 1;
		#10;
		clk=0;
		#10;








		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

