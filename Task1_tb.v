`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:59 06/13/2021
// Design Name:   Task1
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab12/Task1_tb.v
// Project Name:  Lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Task1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Task1_tb;

	// Inputs
	reg data_in;
	reg clk;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Task1 uut (
		.data_in(data_in), 
		.clk(clk), 
		.reset(reset), 
		.out(out)
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
		data_in = 0;
		reset = 1;
		#30;
		
		reset = 0;
		#30;
		
		data_in=1;
		#30
		
		data_in=0;
		#30;

	end
      
endmodule

