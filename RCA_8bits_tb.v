`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:13 04/05/2021
// Design Name:   RCA_8bits
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/RCA_8bits_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA_8bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_8bits_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCA_8bits uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		// Initialize Inputs
		cin = 1'b0; a = 4'b00000000; b = 4'b00000000; #100;
		cin = 1'b0; a = 4'b00000001; b = 4'b00000001; #100;
		cin = 1'b0; a = 4'b00000010; b = 4'b10010010; #100;
		cin = 1'b0; a = 4'b00000011; b = 4'b11000011; #100;
		cin = 1'b0; a = 4'b00000100; b = 4'b01010100; #100;
		cin = 1'b0; a = 4'b00000101; b = 4'b00010101; #100;
		cin = 1'b0; a = 4'b00000110; b = 4'b10010110; #100;
		cin = 1'b0; a = 4'b00000111; b = 4'b11110111; #100;
		cin = 1'b0; a = 4'b11111111; b = 4'b11111111; #100;
		cin = 1'b1; a = 4'b11111111; b = 4'b11111111; #100;

	end
      
endmodule

