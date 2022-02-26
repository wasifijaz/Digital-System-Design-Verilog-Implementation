`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:57 04/18/2021 
// Design Name: 
// Module Name:    compliment2 
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
module compliment2(A,OUT);
input [3:0] A;
output [3:0] OUT;
assign OUT = ~(A) + 1;
endmodule
