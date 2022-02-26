`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:31:14 04/18/2021
// Design Name:   mod4
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/mod4_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mod4_tb;

	// Inputs
	reg [3:0] A;

	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	mod4 uut (
		.OUT(OUT), 
		.A(A)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"A=%b",A,OUT);
		
		A = 4'b0000;
		#100;

		A = 4'b0001;
		#100;
		
		A = 4'b0010;
		#100;
		
		A = 4'b0011;
		#100;
		
		A = 4'b0100;
		#100;
		
		A = 4'b0101;
		#100;
		
		A = 4'b0110;
		#100;
		
		A = 4'b0111;
		#100;	
		
	end
      
endmodule

