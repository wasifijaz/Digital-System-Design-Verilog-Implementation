`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:24 03/25/2021
// Design Name:   XNOR_2x1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/XNOR_2x1_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XNOR_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module XNOR_2x1_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	XNOR_2x1 uut (
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

