`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:32 04/05/2021
// Design Name:   MUX_8x1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/MUX_8x1_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_8x1_tb;

	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg s0;
	reg s1;
	reg s2;

	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX_8x1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.out(out)
	);

	initial begin
	$monitor($time,"i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,s0=%b,s1=%b,s2=%b,out=%b",i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
		// Initialize Inputs
		s2 = 0; s1 = 0; s0 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 0; s1 = 0; s0 = 0; i0 = 1; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 0; s1 = 1; s0 = 0; i0 = 0; i1 = 1; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 0; s1 = 0; s0 = 1; i0 = 0; i1 = 0; i2 = 1; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 0; s1 = 1; s0 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1; i4 = 0; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 1; s1 = 0; s0 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 1; i5 = 0; i6 = 0; i7 = 0; #100;
		s2 = 1; s1 = 1; s0 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 1; i6 = 0; i7 = 0; #100;
		s2 = 1; s1 = 0; s0 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 1; i7 = 0; #100;
		s2 = 1; s1 = 1; s0 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 1; #100;

	end
      
endmodule

