`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:02:12 05/28/2021
// Design Name:   task1
// Module Name:   D:/Education/Semester 6/DSD/Lab11/task1_tb.v
// Project Name:  Lab11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module task1_tb;

	// Inputs
	reg reset;
	reg start;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] O;
	wire F;

	// Instantiate the Unit Under Test (UUT)
	task1 uut (
		.reset(reset), 
		.start(start), 
		.A(A), 
		.B(B), 
		.O(O), 
		.F(F)
	);

	initial begin
	
				reset=1; 
		#40 	start = 0; A =15; B= 12;
		#400 	reset = 0; 
		#40 	start = 1;

	end
      
endmodule

