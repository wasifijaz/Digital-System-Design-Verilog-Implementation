`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:21 03/25/2021
// Design Name:   MUX_2x1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/MUX_2x1_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_2x1_tb;

	// Inputs
	reg a;
	reg x0;
	reg x1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX_2x1 uut (
		.a(a), 
		.x0(x0), 
		.x1(x1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		x0 = 0;
		x1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 0;
		x0 = 0;
		x1 = 1;
		#100;
		
		a = 0;
		x0 = 1;
		x1 = 0;
		#100;
		
		a = 0;
		x0 = 1;
		x1 = 1;
		#100;
		
		a = 1;
		x0 = 0;
		x1 = 0;
		#100;
		
		a = 1;
		x0 = 0;
		x1 = 1;
		#100;
		
		a = 1;
		x0 = 1;
		x1 = 0;
		#100;
		
		a = 1;
		x0 = 1;
		x1 = 1;
		#100;


	end
      
endmodule

