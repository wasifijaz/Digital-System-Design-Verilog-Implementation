`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:14 06/13/2021 
// Design Name: 
// Module Name:    Task1 
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
module Task1(data_in,clk,reset,out);

	input clk, reset, data_in; 
	output reg out; 
	
	parameter  S0=2'b00, S1=2'b01;
	reg [1:0] current_state, next_state; 
	
	always @(posedge clk, posedge reset)
		begin
			if(reset==1) 
				current_state <= S0;
			else
				current_state <= next_state; 
		end 
	
	always @(current_state or data_in)
		begin
			case(current_state) 
				S0:
					begin
						if(data_in)
							begin 
								next_state = S1; 
								out = 1'b0;
							end
						else
							begin
								next_state = S0; 
								out  = 1'b1; 
							end
					end
				default:next_state = S0;
			endcase
		end
		
endmodule
