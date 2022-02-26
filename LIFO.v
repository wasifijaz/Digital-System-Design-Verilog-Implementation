`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:43 06/18/2021 
// Design Name: 
// Module Name:    LIFO 
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
module LIFO(in, full, empty, clk, rst, wn, rn, out);

	input [7:0] in;
	input clk, rst, wn, rn;
	output reg [7:0] out;
	output full, empty;
	
	reg [3:0] sp; 
	reg [7:0] memory [7:0];
  
	assign full = (sp == 4'b1000) ? 1 : 0;
	assign empty = (sp == 4'b0000) ? 1 : 0;
  
	always @(posedge clk)
	begin
		if (rst)
			begin
				memory[0] <= 0; memory[1] <= 0; memory[2] <= 0; memory[3] <= 0;
				memory[4] <= 0; memory[5] <= 0; memory[6] <= 0; memory[7] <= 0;
				out <= 0; sp <= 1;
			end
		else if (wn & !full)
			begin
				memory[sp] <= in;
				sp <= sp + 1;
			end
		else if (rn & !empty)
			begin
				sp <= sp - 1;
				out <= memory[sp];
			end
	end
endmodule
