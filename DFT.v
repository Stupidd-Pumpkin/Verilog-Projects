`timescale 1ns / 1ps

module DFT(
    input [5:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
    input clk,
    output reg [255:0] X,Y,
	 output [15:0] Q
    );
//every 16 bits of the output X,Y represent one point in the DFT (a little hard to read :P )
reg [5:0] x [0:15];
reg signed [15:0] cos,sin,v,w,y,z,Theta_N,alpha,piby2,piby8;
reg COMP,Sign;
reg [3:0] i,j,k;

//x is the time domain input
//X is the real part of its DFT
//Y is the imaginary part of its DFT
//cos is a temporary variable which represents the value of real term
//sin is a temporary variable which represents the value of imaginary term
//w is a table output which provides the arctan values
//y is a temporary variables used in different places
//z is a temporary variable which equals cos
//Theta_N is a temporary vaiable representating normalized values of theta
//alpha is the iterated angle used in CORDIC method
//piby2 and piby8 are constants.
//COMP is used as a comparator output
//Sign conserves the sign of Cos and Sin after normalization into [-pi/2,pi/2]
//i is an iterative variable used to iterate along the arctan reference table
//j represents the time sample x[j]->x[n]
//k represents the Frequency sample, kth DFT sample

assign Q=k;

initial 
begin 
	i=-1;
	j=0;
	k=0;
	piby2=16'b0000011000100011;
	piby8=piby2>>3;
	X=0;
	Y=0;
end

always @(negedge clk)
begin
	if (i==0 & j==0 & k==0)
	begin
		x[0]=x0;
		x[1]=x1;
		x[2]=x2;
		x[3]=x3;
		x[4]=x4;
		x[5]=x5;
		x[6]=x6;
		x[7]=x7;
		x[8]=x8;
		x[9]=x9;
		x[10]=x10;
		x[11]=x11;
		x[12]=x12;
		x[13]=x13;
		x[14]=x14;
		x[15]=x15;	
	end
	if (i==0)
	begin
		alpha=0;
		sin=x[j]<<10;
		cos=x[j]<<10;
		Sign=0;
		Theta_N=~piby8*j;
		y=Theta_N-piby2;
		while(~y[15])
		begin
			Theta_N=Theta_N-(piby2<<1);
			y=Theta_N-piby2;
			Sign=Sign+1;
		end
		y=Theta_N+piby2;
		while(y[15])
		begin
			Theta_N=Theta_N+(piby2<<1);
			y=Theta_N+piby2;
			Sign=Sign+1;
		end
		
		Theta_N=Theta_N*k;
		y=Theta_N-piby2;
		while(~y[15])
		begin
			Theta_N=Theta_N-(piby2<<1);
			y=Theta_N-piby2;
			Sign=Sign+1;
		end
		y=Theta_N+piby2;
		while(y[15])
		begin
			Theta_N=Theta_N+(piby2<<1);
			y=Theta_N+piby2;
			Sign=Sign+1;
		end
	end
	case (i)
		0	:	w=16'b0000001100010001; 		//theta for tan(theta)=2^-i
		1	:	w=16'b0000000111010000;
		2	:	w=16'b0000000011110101;
		3	:	w=16'b0000000001111100;
		4	:	w=16'b0000000000111110;
		5	:	w=16'b0000000000011111;
		6	:	w=16'b0000000000010000;
		7	:	w=16'b0000000000001000;
		8	:	w=16'b0000000000000100;
		9	:	w=16'b0000000000000010;
		10	:	w=16'b0000000000000001;
		default:	w=0;
	endcase
	z=cos;
	y=alpha-Theta_N;
	COMP=((alpha[15]~^Theta_N[15])&(~y[15]))|((~alpha[15])&Theta_N[15]);
	if (COMP)
	begin
		alpha=alpha-w;
		cos=z+(sin>>>i);
		sin=-(z>>>i)+sin;
	end
	else
	begin
		alpha=alpha+w;
		cos=z-(sin>>>i);
		sin=(z>>>i)+sin;
	end
	i=i+1;
	if (i==11)
	begin
		i=0;
		if (Sign==1)
		begin
			sin=~sin;
			cos=~cos;
		end
		j=j+1;
		if (k==0)
		begin
			X[15:0]=X[15:0]+cos;
			Y[15:0]=Y[15:0]+sin;
		end
		if (k==1)
		begin
			X[31:16]=X[31:16]+cos;
			Y[31:16]=Y[31:16]+sin;
		end
		if (k==2)
		begin
			X[47:32]=X[47:32]+cos;
			Y[47:32]=Y[47:32]+sin;
		end
		if (k==3)
		begin
			X[63:48]=X[63:48]+cos;
			Y[63:48]=Y[63:48]+sin;
		end
		if (k==4)
		begin
			X[79:64]=X[79:64]+cos;
			Y[79:64]=Y[79:64]+sin;
		end
		if (k==5)
		begin
			X[95:80]=X[95:80]+cos;
			Y[95:80]=Y[95:80]+sin;
		end
		if (k==6)
		begin
			X[111:96]=X[111:96]+cos;
			Y[111:96]=Y[111:96]+sin;
		end
		if (k==7)
		begin
			X[127:112]=X[127:112]+cos;
			Y[127:112]=Y[127:112]+sin;
		end
		if (k==8)
		begin
			X[143:128]=X[143:128]+cos;
			Y[143:128]=Y[143:128]+sin;
		end
		if (k==9)
		begin
			X[159:144]=X[159:144]+cos;
			Y[159:144]=Y[159:144]+sin;
		end
		if (k==10)
		begin
			X[175:160]=X[175:160]+cos;
			Y[175:160]=Y[175:160]+sin;
		end
		if (k==11)
		begin
			X[191:176]=X[191:176]+cos;
			Y[191:176]=Y[191:176]+sin;
		end
		if (k==12)
		begin
			X[207:192]=X[207:192]+cos;
			Y[207:192]=Y[207:192]+sin;
		end
		if (k==13)
		begin
			X[223:208]=X[223:208]+cos;
			Y[223:208]=Y[223:208]+sin;
		end
		if (k==14)
		begin
			X[239:224]=X[239:224]+cos;
			Y[239:224]=Y[239:224]+sin;
		end
		if (k==15)
		begin
			X[255:240]=X[255:240]+cos;
			Y[255:240]=Y[255:240]+sin;
		end
		
		if (j==15)
		begin
			k=k+1;
			j=0;
			if (k==15)
				while (1);
		end	
	end
end

endmodule
