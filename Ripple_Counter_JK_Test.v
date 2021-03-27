`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:21:02 01/15/2018
// Design Name:   Ripple_Counter_JK
// Module Name:   /home/ise/VLSI_01/Ripple_Counter_JK_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_Counter_JK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_Counter_JK_Test;

	// Inputs
	reg clk;
	reg [4:0] i;
	// Outputs
	wire [0:3] count;

	// Instantiate the Unit Under Test (UUT)
	Ripple_Counter_JK uut (
		.clk(clk), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		for (i=0;i<=16;i=i+1)
		begin
		clk = 0;
		#10;
      clk=1;
		#10;
		end
		// Add stimulus here

	end
      
endmodule

