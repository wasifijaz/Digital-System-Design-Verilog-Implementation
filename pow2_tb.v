`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:19 04/18/2021
// Design Name:   pow2
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/pow2_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pow2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pow2_tb;

	// Inputs
	reg [6:0] A;

	// Outputs
	wire [6:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	pow2 uut ( 
		.A(A),
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs

		$monitor($time,"A=%b,OUT=%b",A,OUT);

		// Wait 100 ns for global reset to finish
		A = 6'b000000;
		#50;
		A = 6'b000001;
		#50;
		A = 6'b000010;
		#50;
      A = 6'b000011;
		#50;  
		A = 6'b000100;
		#50;
		A = 6'b000101;
		#50;
		// Add stimulus here

	end
      
endmodule

