`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:25 02/09/2018
// Design Name:   BW_Multiplier
// Module Name:   /home/ise/VLSI/BW_Multiplier_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BW_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BW_Multiplier_Test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	BW_Multiplier uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 8;
		b = 9;

		// Wait 100 ns for global reset to finish
		#10;
        
		a = 10;
		b = 5;

		// Wait 100 ns for global reset to finish
		#10;
		a = 3;
		b = 7;

		// Wait 100 ns for global reset to finish
		#10;
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		a = 8;
		b = 8;

		// Wait 100 ns for global reset to finish
		#10;
		a = 9;
		b = 15;

		// Wait 100 ns for global reset to finish
		#10;
		// Add stimulus here

	end
      
endmodule

