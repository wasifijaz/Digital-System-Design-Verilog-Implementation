`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:11 06/18/2021
// Design Name:   LIFO
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab13/LIFO_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LIFO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LIFO_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wn;
	reg rn;
	reg [7:0] in;

	// Outputs
	wire [7:0] out;
	wire full;
	wire empty;

	// Instantiate the Unit Under Test (UUT)
	LIFO uut (
		.in(in), 
		.full(full), 
		.empty(empty), 
		.clk(clk), 
		.rst(rst), 
		.wn(wn), 
		.rn(rn), 
		.out(out)
	);

	initial begin
	 clk = 0; in = 8'd0;
    rst = 1; clk = 1; #5 ; clk = 0; #5;
    rst = 0;
    $display("Start testing");
		 wn = 1; rn = 0;
		 in = 8'd100;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd150;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd200;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd40;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd70;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd65;
		 clk = 1; #5 ; clk = 0; #5;
		 in = 8'd15;
		 clk = 1; #5 ; clk = 0; #5;
		 
		 wn = 0; rn = 1;
		 clk = 1; #5 ; clk = 0; #5;
		 
		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd15 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd65 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd70 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd40 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd200 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd150 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( out === 8'd100 )
			$display("PASS %d ", out);
		 else
			$display("FAIL %d ", out);

		 clk = 1; #5 ; clk = 0; #5;
		 if ( empty === 1 )
			$display("PASS %d ", empty);
		 else
			$display("FAIL %d ", empty);
	end
      
endmodule
