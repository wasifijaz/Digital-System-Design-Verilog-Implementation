`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:57:00 04/22/2021
// Design Name:   MUX4in
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab6/MUX4in_tb.v
// Project Name:  Lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4in
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX4in_tb;
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
	MUX4in uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.out(out)
	);
	initial begin
		// Initialize Inputs
		$monitor($time,"i3=%b,i2=%b,i1=%b,i0=%b,s1=%b,s0=%b,out=%b",i3,i2,i1,i0,s1,s0,out);
		i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
      i0 = 0; i1 = 1; i2 = 0; i3 = 0; s0 = 1; s1 = 0; #100;  
		i0 = 0; i1 = 0; i2 = 1; i3 = 0; s0 = 0; s1 = 1; #100;
		i0 = 0; i1 = 0; i2 = 0; i3 = 1; s0 = 1; s1 = 1; #100;
	end  
endmodule

