`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:51 04/18/2021
// Design Name:   compliment2
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/compliment2_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compliment2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module compliment2_tb;

	// Inputs
	reg [3:0] A;

	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	compliment2 uut (
		.A(A), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"A=%b,OUT=%b",A,OUT);
		A = 4'b0011;
		#100;
        
	end
      
endmodule

