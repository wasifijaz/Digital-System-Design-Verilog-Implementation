`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:38 04/18/2021 
// Design Name: 
// Module Name:    pow2 
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
module pow2(A,OUT);
input [6:0] A;
output [6:0] OUT;
assign OUT = 2**A;
endmodule
