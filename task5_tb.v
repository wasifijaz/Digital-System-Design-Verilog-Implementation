`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:44 05/28/2021
// Design Name:   task5
// Module Name:   D:/Education/Semester 6/DSD/Lab11/task5_tb.v
// Project Name:  Lab11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module task5_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	task5 uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 4;
		#100;
	end
      
endmodule

