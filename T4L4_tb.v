`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:03 04/18/2021
// Design Name:   T4L4
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/T4L4_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T4L4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T4L4_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire out1;
	wire out2;

	// Instantiate the Unit Under Test (UUT)
	T4L4 uut (
		.A(A), 
		.B(B), 
		.out1(out1), 
		.out2(out2)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"A=%b,B=%b,out1=%b,out2=%b",A,B,out1,out2);
				
		A = 4'b0000;
		B = 4'b0000;
		#100;
      
		A = 4'b1011;
		B = 4'b0001;
		#100;
		
		A = 4'b1100;
		B = 4'b1101;
		#100;
	end
      
endmodule

