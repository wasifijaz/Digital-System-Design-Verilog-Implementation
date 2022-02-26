`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:57:32 04/04/2021
// Design Name:   MUX_4in
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/MUX_4in_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_4in
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_4in_tb;
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s1;
	reg s0;
	wire out;
	MUX_4in uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s1(s1), 
		.s0(s0), 
		.out(out)
	);
	initial begin
		s1 = 0; s0 = 0; i0 = 0; i1 = 0; i2 = 0;i3 = 0; #100;
		s1 = 0; s0 = 0; i0 = 1; i1 = 0; i2 = 0;i3 = 0; #100;
		s1 = 0; s0 = 1; i0 = 0; i1 = 1; i2 = 0;i3 = 0; #100;
		s1 = 1; s0 = 0; i0 = 0; i1 = 0; i2 = 1;i3 = 0; #100;
		s1 = 1; s0 = 1; i0 = 0; i1 = 0; i2 = 0;i3 = 1; #100;
	end
endmodule

