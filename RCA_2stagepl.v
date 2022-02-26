`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:20 06/11/2021 
// Design Name: 
// Module Name:    RCA_2stagepl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RCA_2stagepl(clk,a,b,cin,sum,cout);

	input clk, cin;
	input [3:0] a, b;
	output reg [3:0] sum;
	output reg cout;
	
	reg [3:2] areg, breg;
	reg [1:0] sreg;
	reg c2reg;
	reg [3:0] s;
	
	reg c2;
	
	always @(clk)
		begin
			{c2, s[1:0]} = a[1:0] + b[1:0] + cin;
			// Combinational cloud 2
			{cout, s[3:2]} = areg + breg + c2reg;
			// Put the output together
			sum = {s[3:2], sreg};
		end
	
	always @(posedge clk)
		begin
			sreg <= s[1:0];
			areg <= a[3:2];
			breg <= b[3:2];
			c2reg <= c2;
		end

endmodule
