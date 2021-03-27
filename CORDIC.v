`timescale 1ns / 1ps

module CORDIC(
    input [15:0] Theta,Real,Imag, 
	 input clk,
    output [15:0] cos,sin,Q
    );
//Theta is the angle to be rotated
//Real is the x coordinate of the initial point (Default point is (1,0) to get (cos,sin) after rotation
//Imag is the y coordinate of the initial point
//clk is the input clock
//cos is the x coorinate which initially takes the input Real and iteratively tends to the final real part 
//sin is the y coorinate which initially takes the input Imag and iteratively tends to the final imag part 

reg signed [15:0] cos,sin,x,y,z,Theta_N,alpha,piby2;
// here we are working in the [-pi/2,pi/2] domain, so signed numbers.
// A fixed decimal point at the 10th position is assumed. so, the final values obtained are to be divided by 1024.
//Given any input Theta, it is initially normalized to Theta_N which lies in [-pi/2,pi/2]
//alpha is the iterative angle which finally approaches Theta
//piby2 is a constant which equally pi/2 in radians



//Remember, all the values taken here are to be divided with 1024 to get the decimal equivalent



reg COMP,Sign; 
//COMP is a variable used to compare Theta_N and alpha
//Sign stores the sign to be assigned to the final value, based on the Quadrant Theta belongs to
reg [3:0] i;

assign Q=alpha;
//Q is a test port.

initial 
begin 
	i=0;	
	piby2=16'b0000011000100011;
end


always @(negedge clk)
begin
	if (i==0) 			//i.e, only in first iteration, do the following
	begin
		alpha=0;			//initialize alpha to 0
		sin=Imag<<10;	//since the real and imag numbers are given in decimal, er shift by 10 places towards left
		cos=Real<<10;	
		Theta_N=Theta; //initialize Theta_N as Theta
		y=Theta_N-piby2;
		Sign=0;
		while(~y[15])	//Normalizing Theta_N into [-pi/2,pi/2] , if Theta>0
		begin
			Theta_N=Theta_N-(piby2<<1);
			y=Theta_N-piby2;
			Sign=Sign+1;
		end
		y=Theta_N+piby2;//Normalizing Theta_N into [-pi/2,pi/2] , if Theta<0
		while(y[15])
		begin
			Theta_N=Theta_N+(piby2<<1);
			y=Theta_N+piby2;
			Sign=Sign+1;
		end		
	end
	case (i)
		0	:	x=16'b0000001100010001; 		//theta for tan(theta)=2^-i
		1	:	x=16'b0000000111010000;
		2	:	x=16'b0000000011110101;
		3	:	x=16'b0000000001111100;
		4	:	x=16'b0000000000111110;
		5	:	x=16'b0000000000011111;
		6	:	x=16'b0000000000010000;
		7	:	x=16'b0000000000001000;
		8	:	x=16'b0000000000000100;
		9	:	x=16'b0000000000000010;
		10	:	x=16'b0000000000000001;
		default:	x=0;
	endcase
	z=cos;
	y=alpha-Theta_N;
	COMP=((alpha[15]~^Theta_N[15])&(~y[15]))|((~alpha[15])&Theta_N[15]);
	//Comparing Theta_N and alpha
	if (COMP)	//Rotating clockwise 
	begin
		alpha=alpha-x;
		cos=z+(sin>>>i);
		sin=-(z>>>i)+sin;
	end
	else			//Rotating anti clockwise 
	begin
		alpha=alpha+x;
		cos=z-(sin>>>i);
		sin=(z>>>i)+sin;
	end
	i=i+1;
	if (i==11)		//when the whole table is traversed
	begin
		if (Sign==1)		//Assigning the actual sign based on the quadrent Theta belongs to
		begin
			sin=~sin;
			cos=~cos;
		end
		while(1) ;
	end
end

endmodule
