`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:41:37 02/03/2018
// Design Name:   Up_Down_Counter_T
// Module Name:   /home/ise/VLSI_01/UD_Counter_T_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Up_Down_Counter_T
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UD_Counter_T_Test;

	// Inputs
	reg [3:0] N;
	reg clk;
	reg up;
	reg resetb;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	Up_Down_Counter_T uut (
		.N(N), 
		.clk(clk), 
		.up(up), 
		.resetb(resetb), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		N=0;
		up=0;
		clk=0;
		resetb=1;
		#1;
		N=4;
		#1;
		N=11;
		#1;
		N=9;
		#1;
		N=10;
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
		N=8;
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
       
		resetb =0;
		
		#1;
		clk=1;
		#1;
		clk=0;
		#1;		
		resetb=1;
		clk=1;
		#1;
		clk=0;
		#1;
		N=7;
		#1;
		clk=1;
		#1;
		clk=0;

        
		// Add stimulus here

	end
        
      
endmodule

