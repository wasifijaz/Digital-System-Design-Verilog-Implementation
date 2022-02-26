`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:35 04/22/2021
// Design Name:   Incrementer
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab6/Incrementer_tb.v
// Project Name:  Lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Incrementer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Incrementer_tb;
	integer count;
	Incrementer uut (
	);
	initial begin
		count = 0;
		while (count < 128)
		begin
			$display("Count = %d", count);
			count = count + 1;
		end
	end
endmodule

