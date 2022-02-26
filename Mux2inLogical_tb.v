`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:36:41 04/18/2021
// Design Name:   Mux2inLogical
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/Mux2inLogical_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2inLogical
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux2inLogical_tb;

	// Inputs
	reg i0;
	reg i1;
	reg s0;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Mux2inLogical uut (
		.out(out), 
		.i0(i0), 
		.i1(i1), 
		.s0(s0)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"i0=%b,i1=%b,s0=%b,out=%b",i0,i1,s0,out);

		i0 = 0; i1 = 0; s0 = 0; #100;
      i0 = 1; i1 = 0; s0 = 0; #100;
		i0 = 0; i1 = 1; s0 = 0; #100;
		i0 = 1; i1 = 1; s0 = 0; #100;
		i0 = 0; i1 = 0; s0 = 1; #100;
      i0 = 1; i1 = 0; s0 = 1; #100;
		i0 = 0; i1 = 1; s0 = 1; #100;
		i0 = 1; i1 = 1; s0 = 1; #100;

	end
      
endmodule

