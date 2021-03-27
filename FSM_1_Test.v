`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:58 02/13/2018
// Design Name:   FSM_1
// Module Name:   /home/ise/VLSI/FSM_1_Test.v
// Project Name:  VLSI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_1_Test;

	// Inputs
	reg clk;
	reg datain;
	reg reset;

	// Outputs
	wire yes;

	// Instantiate the Unit Under Test (UUT)
	FSM_1 uut (
		.clk(clk), 
		.datain(datain), 
		.reset(reset), 
		.yes(yes)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		datain = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#1;
		clk = 1;
		datain = 1;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 0;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 1;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 0;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 0;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 0;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 1;
		#1;
		clk =0;
		
		#1;
		clk = 1;
		datain = 1;
		#1;
		clk =0;
		
		
		
        
		// Add stimulus here

	end
      
endmodule

