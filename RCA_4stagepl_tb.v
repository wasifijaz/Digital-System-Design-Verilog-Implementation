`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:09:22 07/02/2021
// Design Name:   RCA_4stagepl
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab13/RCA_4stagepl_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA_4stagepl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_4stagepl_tb;

reg clock;
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	wire s;
	wire c_out;
	RCA_4stagepl uut (
		.clock(clock), 
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.c_out(c_out)
	);
	initial
		clock=1'b0;
		always
			begin
				#50;
				clock=~clock;
			end
	initial begin
		// Initialize Inputs
		a = 4'b0100;
		b = 4'b0010;
		cin = 0;
		#50;
      a = 4'b1010;
		b = 4'b0011;
		cin = 1;
		#50; 
	end     
endmodule

