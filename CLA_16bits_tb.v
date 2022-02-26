`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:34:32 05/26/2021
// Design Name:   CLA_16bits
// Module Name:   D:/Education/Semester 6/DSD/Lab9/CLA_16bits_tb.v
// Project Name:  Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_16bits_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_16bits uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		// Initialize Inputs
		a = 16'b1111000011110000;
		b = 16'b1100110011001100;
		cin = 0;
		#100;
        
		a = 16'b1111000011110000;
		b = 16'b1111000011001100;
		cin = 1;
		#100;

	end
      
endmodule

