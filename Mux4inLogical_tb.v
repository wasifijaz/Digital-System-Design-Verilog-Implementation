`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:36 04/18/2021
// Design Name:   Mux4inLogical
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/Mux4inLogical_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4inLogical
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4inLogical_tb;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Mux4inLogical uut (
		.out(out), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,out=%b",i0,i1,i2,i3,s0,s1,out);
		
		i0 = 0; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
      i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 0; i1 = 1; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 1; i1 = 1; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 0; i1 = 0; i2 = 1; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 1; i1 = 0; i2 = 1; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 0; i1 = 1; i2 = 1; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 1; i1 = 1; i2 = 1; i3 = 0; s0 = 0; s1 = 0; #100;
		i0 = 1; i1 = 1; i2 = 1; i3 = 0; s0 = 0; s1 = 1; #100;
		
	end
      
endmodule

