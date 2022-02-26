`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:36 05/28/2021
// Design Name:   task3
// Module Name:   D:/Education/Semester 6/DSD/Lab11/task3_tb.v
// Project Name:  Lab11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module task3_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	task3 uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
	
		A = 15; 	B = 12; 	#100; 
		A = 10; 	B = 8; 	#100; 
		A = 12; 	B = 5; 	#100; 
		A = 2; 	B = 4; 	#100;

	end
      
endmodule

