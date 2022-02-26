`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:23 06/13/2021 
// Design Name: 
// Module Name:    Task 
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
module Task2(clk, reset, data_in, four_ones_det);

	input clk, reset, data_in;
	output reg four_ones_det;
	reg [1:0] current_state, next_state;

	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
	
	always @(posedge clk)
		begin
			if(reset == 1)
				begin
					current_state <= S0;
				end
			else
				begin
					current_state <= next_state;
				end
		end
		

	always @(current_state or data_in)
		begin
			case(current_state)
				S0: 
					begin
						if(data_in==1)
							next_state<=S1;
						else
							next_state<=S0;
					end
				S1: 
					begin
						if(data_in==1)
							next_state<=S2;
						else
							next_state<=S1;
					end
				S2: 
					begin
						if(data_in==1)
							next_state<=S3;
						else
							next_state<=S2;
					end
				S3: 
					begin
						if(data_in==1)
							next_state<=S0;
						else
							next_state<=S3;
					end
				default: next_state<=0;
			endcase
		end

	always @(current_state)
		begin
			case(current_state)
				S0: four_ones_det=0;
				S1: four_ones_det=0;
				S2: four_ones_det=0;
				S3: four_ones_det=1;
				default: four_ones_det<=0;
			endcase
		end

endmodule
