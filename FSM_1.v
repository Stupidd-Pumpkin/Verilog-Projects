`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:25:41 02/13/2018 
// Design Name: 
// Module Name:    FSM_1 
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
module FSM_1(
    input clk, datain, reset,
    output yes
    );
reg	yes;
parameter SIZE = 4;
parameter EE  = 4'b0001, EO= 4'b0010, OO = 4'b0100, OE=4'b1000 ;
reg   [SIZE-1:0]	state ,next_state   ;
always @(negedge clk)
begin
 case(state)
	EE : if (datain == 0)
				next_state = OE;
				else next_state= EO;
	EO : if (datain == 0)
				next_state = OO;
				else next_state= EE;
	OO : if (datain == 0)
				next_state = EO;
				else next_state= OE;
	OE : if (datain == 0)
				next_state = EE;
				else next_state= OO;
	default : next_state = EE;
 endcase
 end

always @ (negedge clk)
begin : FSM_SEQ
	if (reset == 1'b1) begin
		state <=EE;
	end 
	else	
//end
//always @ (posedge clk)
//begin 
//if (reset==1'b0 && state==OE) 
//	yes=1;
//else 
begin
state <=next_state;
	case(state)
		EE : yes=0;
		EO : yes=0;
		OO : yes=0;
		OE : yes=1;
		default : yes=0;
	endcase
	end
end

endmodule
