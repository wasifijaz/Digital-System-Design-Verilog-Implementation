`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:41 03/25/2021
// Design Name:   XOR_2x1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/XOR_2x1_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XOR_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module XOR_2x1_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	XOR_2x1 uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				a = 0;
		b = 1;
		#100;
		
		a = 1;
		b = 0;
		#100;
		
		a = 1;
		b = 1;
		#100;



	end
      
endmodule

