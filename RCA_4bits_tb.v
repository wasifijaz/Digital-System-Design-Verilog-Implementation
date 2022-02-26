`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:34:13 06/11/2021
// Design Name:   RCA_4bits
// Module Name:   D:/Education/Semester 6/DSD/Lab13/RCA_4bits_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA_4bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_4bits_tb;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	// Outputs
	wire [3:0] sum;
	wire cout;
	// Instantiate the Unit Under Test (UUT)
	RCA_4bits uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	initial begin
		$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		// Initialize Inputs
		cin = 1'b0; a = 4'b0000; b = 4'b0000; #100;
		cin = 1'b0; a = 4'b0001; b = 4'b0001; #100;
		cin = 1'b0; a = 4'b0010; b = 4'b0010; #100;
		cin = 1'b0; a = 4'b0011; b = 4'b0011; #100;
		cin = 1'b0; a = 4'b0100; b = 4'b0100; #100;
		cin = 1'b0; a = 4'b0101; b = 4'b0101; #100;
		cin = 1'b0; a = 4'b0110; b = 4'b0110; #100;
		cin = 1'b0; a = 4'b0111; b = 4'b0111; #100;
		cin = 1'b1; a = 4'b1111; b = 4'b1111; #100;		
	end      
endmodule


