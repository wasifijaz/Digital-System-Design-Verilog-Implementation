`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:58 04/22/2021
// Design Name:   CSA8ins
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab7/CSA8ins_tb.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA8ins
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CSA8ins_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CSA8ins uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		    A=0;      B=0;     Cin=0;
		#10 A=8'd0;   B=8'd12; Cin=1'd1;
		#10 A=8'd128; B=8'd32; Cin=1'd1;
		#10 A=8'd32;  B=8'd34; Cin=1'd0;
		#10 A=8'd93;  B=8'd43; Cin=1'd1;
	end
 
	initial
		$monitor($time,"A=%b,B=%b,Cin= %b,S=%b,Cout=%b", A,B,Cin,S,Cout);

      
endmodule

