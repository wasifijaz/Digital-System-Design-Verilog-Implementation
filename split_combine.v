`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:24 04/18/2021 
// Design Name: 
// Module Name:    split_combine 
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
module split_combine(in, num1, num2, num3, num4, number);
input [7:0] in;
output [1:0] num1, num2, num3, num4;
output [8:0] number;
assign num1 = in[1:0];
assign num2 = in[3:2];
assign num3 = in[5:4];
assign num4 = in[7:6];
assign number = {num1, num2, num3, num4, 1'b1};
endmodule
