`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:18 04/22/2021 
// Design Name: 
// Module Name:    MUX4in 
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
module MUX4in(i0,i1,i2,i3,s0,s1,out);
output out;
input i0,i1, i2, i3, s0, s1;
reg out; 
always @(s1 or s0 or i0 or i1 or i2 or i3)
case ({s1, s0})
	2'd0 : out = i0;
	2'd1 : out = i1;
	2'd2 : out = i2;
	2'd3 : out = i3;
	default: $display("Invalid Control Signal");
endcase
endmodule
