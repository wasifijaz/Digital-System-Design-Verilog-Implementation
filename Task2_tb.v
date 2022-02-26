`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:33:35 06/13/2021
// Design Name:   Task2
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab12/Task2_tb.v
// Project Name:  Lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Task2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Task2_tb;

	// Inputs
	reg clk;
	reg reset;
	reg data_in;

	// Outputs
	wire four_ones_det;

	// Instantiate the Unit Under Test (UUT)
	Task2 uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.four_ones_det(four_ones_det)
	);

	initial
		clk=1'b0;
		always 
			begin
				#50;
				clk=~clk;
			end
	
	initial begin
		// Initialize Inputs
		reset = 0;
		data_in = 1;
		#100;
		
		reset = 0;
		data_in = 1;
		#100;
		
		reset = 0;
		data_in = 1;
		#100;
		
		reset = 0;
		data_in = 1;
		#100;
      
		reset = 1;
		data_in = 0;
		#100;
		
	end
      
endmodule

