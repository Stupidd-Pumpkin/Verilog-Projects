`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:11 02/06/2018 
// Design Name: 
// Module Name:    Sequence_Detector 
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
//module Sequence_Detector(
//    input In, clk,
//    output Out
//    );
//reg [1:0] state;
//initial state=0;
//always @(negedge clk)
//begin
//state[1]=state[0];
//state[0]=In;
//end
//
//assign Out=state[1]~^state[0];
//
//endmodule

//-----------------------------------------------------

module Sequence_Detector(clock ,reset ,req_0 ,req_1 ,gnt_0 ,gnt_1);
input   clock,reset,req_0,req_1;
output  gnt_0,gnt_1;
wire    clock,reset,req_0,req_1;
reg     gnt_0,gnt_1;
parameter SIZE = 3           ;
parameter IDLE  = 3'b001, HIGH= 3'b010, LOW = 3'b100 ;
reg   [SIZE-1:0]	state        ;// Seq part of the FSM
wire  [SIZE-1:0]  next_state   ;// combo part of FSM
assign next_state = fsm_function(state, req_0, req_1);
function [SIZE-1:0] fsm_function;
 input  [SIZE-1:0]  state ;	
 input    req_0 ;
 input    req_1 ;
 case(state)
	IDLE : if (req_0 == 1'b1) begin
				fsm_function = GNT0;
				end else if (req_1 == 1'b1) begin
				fsm_function= GNT1;
            end else begin
            fsm_function = IDLE;
            end
	GNT0 : if (req_0 == 1'b1) begin
				fsm_function = GNT0;
				end else begin
				fsm_function = IDLE;
				end
	GNT1 : if (req_1 == 1'b1) begin
            fsm_function = GNT1;
				end else begin
            fsm_function = IDLE;
            end
	default : fsm_function = IDLE;
 endcase
 endfunction

always @ (posedge clock)
begin : FSM_SEQ
	if (reset == 1'b1) begin
		state <=  #1  IDLE;
	end 
	else begin
	state <=  #1  next_state;
	end
end
always @ (posedge clock)
begin : OUTPUT_LOGIC
	if (reset == 1'b1) begin
		gnt_0 <=  #1  1'b0;
      gnt_1 <=  #1  1'b0;
	end
	else begin
   case(state)
		IDLE : begin
             gnt_0 <=  #1  1'b0;
             gnt_1 <=  #1  1'b0;
             end
		GNT0 : begin
             gnt_0 <=  #1  1'b1;
             gnt_1 <=  #1  1'b0;
             end
		GNT1 : begin
             gnt_0 <=  #1  1'b0;
             gnt_1 <=  #1  1'b1;
             end
		default : begin
             gnt_0 <=  #1  1'b0;
             gnt_1 <=  #1  1'b0;
             end
	endcase
 end
 end
 endmodule
