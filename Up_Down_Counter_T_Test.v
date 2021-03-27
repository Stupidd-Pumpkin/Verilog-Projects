`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:31:49 01/31/2018
// Design Name:   Up_Down_Counter_T
// Module Name:   /home/ise/VLSI_01/Up_Down_Counter_T_Test.v
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

module Up_Down_Counter_T_Test;

	// Inputs
	reg [3:0] N;
	reg clk;
	reg up;
	reg reset;

	// Outputs
	wire [3:0] data;

	// Instantiate the Unit Under Test (UUT)
	Up_Down_Counter_T uut (
		.N(N), 
		.clk(clk), 
		.up(up), 
		.reset(reset), 
		.data(data),
	);

	initial begin
		// Initialize Inputs
		N = 4;
		clk = 0;
		up = 1;
		reset = 0;

		// Wait 10 ns for global reset to finish
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		N=3;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		N=8;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
       
		reset =1;
		
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		
		reset=0;
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
		N=3;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		N=8;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
       
		reset =1;
		
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
		#1;
		clk=1;
		#1;
		
		reset=0;
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
        
		// Add stimulus here

	end
		// Add stimulus here

	end
      
endmodule

