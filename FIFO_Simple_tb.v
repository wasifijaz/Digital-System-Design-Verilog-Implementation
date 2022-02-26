`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:34:08 07/06/2021
// Design Name:   FIFO_Simple
// Module Name:   D:/Education/Semester 6/DSD Lab/New folder/Final/FIFO_Simple_tb.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO_Simple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FIFO_Simple_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] din;
	reg read;
	reg write;

	// Outputs
	wire [15:0] dout;
	wire empty;
	wire full;

	// Instantiate the Unit Under Test (UUT)
	FIFO_Simple uut (
		.clk(clk), 
		.reset(reset), 
		.din(din), 
		.read(read), 
		.write(write), 
		.dout(dout), 
		.empty(empty), 
		.full(full)
	);
	
	initial begin
		clk = 0; 
		din = 8'd0;
		reset = 1; 
		clk = 1; #5; 
		
		clk = 0; #5;
		reset = 0;
		$display("Start testing");
		write = 1; 
		read = 0;
		din = 8'd100;
		clk = 1; #5; 
		
		clk = 0; #5;
		din = 8'd10;
		clk = 1; #5; 
		
		clk = 0; #5;
		din = 8'd250;
		clk = 1; #5; 
		
		clk = 0; #5;
		din = 8'd40;
		clk = 1; #5; 
		
		clk = 0; #5;
		write = 0; 
		read = 1;
		clk = 1; #5; 
		
		clk = 0; #5;
		clk = 1; #5; 
		clk = 0; #5;
		
		if ( dout === 8'd10 )
			$display("PASS %p ", dout);
		else
			$display("FAIL %p ", dout);

		clk = 1; #5; 
		clk = 0; #5;
		
		if ( dout === 8'd250 )
			$display("PASS %p ", dout);
		else
			$display("FAIL %p ", dout);
			
		clk = 1; #5; 
		clk = 0; #5;
		
		if ( dout === 8'd40 )
			$display("PASS %p ", dout);
		else
			$display("FAIL %p ", dout);

	end
      
endmodule

