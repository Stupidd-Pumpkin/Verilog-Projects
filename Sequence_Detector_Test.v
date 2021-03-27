`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:55 02/06/2018
// Design Name:   Sequence_Detector
// Module Name:   /home/ise/VLSI/Sequence_Detector_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sequence_Detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sequence_Detector_Test;

	// Inputs
	reg In;
	reg clk;
	
	//Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Sequence_Detector uut (
		.In(In), 
		.clk(clk), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		clk = 1;
		#10;
		clk=0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 1;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 1;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 1;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 1;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		In = 0;
		clk = 1;
		#10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
        
		// Add stimulus here

	end
      
endmodule

