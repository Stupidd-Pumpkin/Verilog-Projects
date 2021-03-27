`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:00 01/16/2018
// Design Name:   Priority_Encoder
// Module Name:   /home/ise/VLSI_01/Priority_Encoder_Test.v
// Project Name:  VLSI_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Priority_Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Priority_Encoder_Test;

	// Inputs
	reg D0;
	reg D1;
	reg D2;
	reg D3;

	// Outputs
	wire x;
	wire y;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	Priority_Encoder uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		D0 = 0;
		D1 = 0;
		D2 = 0;
		D3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      D0 = 0;
		D1 = 0;
		D2 = 0;
		D3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		D0 = 1;
		D1 = 0;
		D2 = 1;
		D3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		D0 = 1;
		D1 = 1;
		D2 = 0;
		D3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		D0 = 1;
		D1 = 0;
		D2 = 0;
		D3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

