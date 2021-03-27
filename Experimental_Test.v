`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:18 02/03/2018
// Design Name:   Experimental
// Module Name:   /home/ise/VLSI_01/Experimental_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Experimental
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Experimental_Test;

	// Outputs
	wire [3:0] x;

	// Instantiate the Unit Under Test (UUT)
	Experimental uut (
		.x(x)
	);
	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

