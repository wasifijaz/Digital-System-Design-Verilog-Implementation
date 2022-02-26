`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:53:50 04/18/2021
// Design Name:   split_combine
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 4/lab4/split_combine_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: split_combine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module split_combine_tb;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [8:0] number;
	wire [1:0] num1;
	wire [1:0] num2;
	wire [1:0] num3;
	wire [1:0] num4;

	// Instantiate the Unit Under Test (UUT)
	split_combine uut (
		.number(number), 
		.num1(num1), 
		.num2(num2), 
		.num3(num3), 
		.num4(num4), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"in=%b,num1=%b,num2=%b,num3=%b,num4=%b,number=%b",in, num1, num2, num3, num4, number);
		in = 8'b00110101;
		#100;

	end
      
endmodule

