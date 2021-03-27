`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:50 01/16/2018 
// Design Name: 
// Module Name:    Priority_Encoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Priority_Encoder(
    input D0,D1,D2,D3,
    output x,y,z
    );

assign x=D3|D2;
assign y=D3|D1;
assign z=D3|D2|D1|D0;
//reg D0=0,D1=0,D2=0,D3=0;
//assign d0=D0, d1=D1, d2=D2, d3=D3; 
//if (D0&D1&D2&D3==0)
//	assign z=0, x=1'bx, y=1'bx;
//	else 
//	begin
//		assign z=1;
//		if (D3|D2==1)
//			assign x=1;
//		else 
//			assign x=0;
//		if (D3|D1==1)
//			assign y=1;
//		else 
//			assign y=0;	
//	end

endmodule
