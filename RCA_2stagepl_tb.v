`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:48 06/30/2021
// Design Name:   RCA_2stagepl
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab13/RCA_2stagepl_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA_2stagepl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_2stagepl_tb;

	// Inputs
	reg clk;
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCA_2stagepl uut (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	
	initial
		clk=1'b0;
		always
			begin
				#30;
				clk=~clk;
			end
			
	initial begin
		// Initialize Inputs
		a = 4'b1001;
		b = 4'b1011;
		cin = 0;
		#100;
		
		a = 4'b1011;
		b = 4'b1010;
		cin = 1;
		#100;
		
		a = 4'b1000;
		b = 4'b1000;
		cin = 0;
		#100;
		
		a = 4'b1100;
		b = 4'b1001;
		cin = 1;
		#100;
     
	end
      
endmodule

