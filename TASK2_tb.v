`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:12 03/21/2021
// Design Name:   TASK2
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/TASK2_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TASK2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TASK2_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	TASK2 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 0;
		b = 0;
		c = 1;
		#100;
		
		a = 0;
		b = 1;
		c = 0;
		#100;
		
		a = 0;
		b = 1;
		c = 1;
		#100;
		
		a = 1;
		b = 0;
		c = 0;
		#100;
		
		a = 1;
		b = 0;
		c = 1;
		#100;
		
		a = 1;
		b = 1;
		c = 0;
		#100;
		
		a = 1;
		b = 1;
		c = 1;
		#100;
	end
      
endmodule

