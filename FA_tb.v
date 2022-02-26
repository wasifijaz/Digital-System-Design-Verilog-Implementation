`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:40 03/25/2021
// Design Name:   FA
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/FA_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		a = 0; b = 0; cin = 0; #100;
      a = 0; b = 0; cin = 1; #100;
		a = 0; b = 1; cin = 0; #100;
		a = 0; b = 1; cin = 1; #100;
		a = 1; b = 0; cin = 0; #100;
		a = 1; b = 0; cin = 1; #100;
		a = 1; b = 1; cin = 0; #100;
		a = 1; b = 1; cin = 1; #100;

	end
      
endmodule
