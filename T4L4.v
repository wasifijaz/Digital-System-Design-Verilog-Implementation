`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:32 04/18/2021 
// Design Name: 
// Module Name:    T4L4 
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
module T4L4 (A,B,out1,out2);
input [3:0] A, B;
output out1, out2;
assign out1 = (A>B)?1:0;
assign out2 = (A==B)?1:0;
endmodule

