`timescale 1ns / 1ps


module GCD_Test;

	// Inputs
	reg [7:0] X;
	reg [7:0] Y;
	reg clk;

	// Outputs
	wire [7:0] GCD;
	wire [7:0] Flag;

	// Instantiate the Unit Under Test (UUT)
	GCD uut (
		.X(X), 
		.Y(Y),
		.clk(clk),
		.GCD(GCD),
		.Flag(Flag)
	);

	initial begin
		// Initialize Inputs
		X = 108;
		Y = 224;

		// Wait 100 ns for global reset to finish
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
		#10;
		clk=0;
		#10;
		clk=1;
		
        
		// Add stimulus here

	end
      
endmodule

