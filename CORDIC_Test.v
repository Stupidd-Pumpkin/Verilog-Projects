`timescale 1ns / 1ps

module CORDIC_Test;

	// Inputs
	reg [15:0] Theta,Real,Imag;
	reg clk;

	// Outputs
	wire [15:0] cos;
	wire [15:0] sin;
	wire [15:0] Q;

	// Instantiate the Unit Under Test (UUT)
	CORDIC uut (
		.Theta(Theta),
		.Real(Real),
		.Imag(Imag),
		.clk(clk),
		.cos(cos), 
		.sin(sin),
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk=1;
		Theta = 16'b100111011000;
		Real=1;
		Imag=0;
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
	end
      
endmodule

