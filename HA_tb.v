`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:17 03/25/2021
// Design Name:   HA
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab 2/Lab2/HA_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HA_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire cout;

	HA uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,sum=%b,cout=%b",a,b,sum,cout);
		a = 0; b = 0; #100;  		
		a = 0; b = 1; #100;
		a = 1; b = 0; #100;
		a = 1; b = 1; #100;
	end
      
endmodule

