`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:40 04/22/2021
// Design Name:   Lab6Task3
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab6/Lab6Task3_tb.v
// Project Name:  Lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Lab6Task3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Lab6Task3_tb;
	`define TRUE 1'b1
	`define FALSE 1'b0
	integer i;
	// Inputs
	reg [15:0] flag;
	reg continue;
	// Instantiate the Unit Under Test (UUT)
	Lab6Task3 uut (
	);
	initial begin
		// Initialize Inputs
		flag = 16'b 0010_0000_0000_0000;
		i = 0;
		continue = `TRUE;
		while ((i<16) && continue)
		begin
			if (flag[i])
			begin
				$display("Encountered a TRUE bit at element number %d", i);
				continue = `FALSE;
			end
			i = i + 1;
		end
	end   
endmodule

