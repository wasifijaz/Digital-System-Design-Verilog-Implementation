`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:57 03/21/2021
// Design Name:   NOT_1x1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/NOT_1x1_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOT_1x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NOT_1x1_tb;

	// Inputs
	reg a;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	NOT_1x1 uut (
		.a(a), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 1;
		#100;

	end
      
endmodule

