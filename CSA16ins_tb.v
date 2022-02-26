`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:23 04/22/2021
// Design Name:   CSA16ins
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab7/CSA16ins_tb.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA16ins
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CSA16ins_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CSA16ins uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
				a=0; 			b=0; 		cin=0;
		 #10 	a=16'd0; 	b=16'd0; cin=1'd1;
		 #10 	a=16'd14; 	b=16'd1; cin=1'd1;
		 #10 	a=16'd5; 	b=16'd0; cin=1'd0;
		 #10 	a=16'd999; 	b=16'd0; cin=1'd1;

	end
	
   initial
		$monitor($time,"a=%b,b=%b,cin= %b,sum=%b,cout=%b", a,b,cin,sum,cout);
		
endmodule

