`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:19 05/28/2021 
// Design Name: 
// Module Name:    task5 
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
module task5(A,B,P);

	input [3:0] A,B;
	output [7:0] P;
	wire [10:0]c;
	wire [5:0]s; 
	
	assign P[0] = A[0]&B[0];
	
	halfadder HA1 (A[1]&B[0],A[0]&B[1],P[1],c[0]);
	
	fulladder FA1 (A[2]&B[0],A[1]&B[1],A[0]&B[2],s[0],c[1]);
	fulladder FA2 (A[3]&B[0],A[2]&B[1],A[0]&B[3],s[1],c[2]);
	fulladder FA3 (A[3]&B[1],A[2]&B[2],A[1]&B[3],s[2],c[3]);
	fulladder FA4 (A[3]&B[2],A[2]&B[3],c[3],s[3],c[4]);
	fulladder FA5 (s[1],A[0]&B[3],c[1],s[4],c[5]);
	fulladder FA6 (s[2],c[2],c[5],s[5],c[6]);
	
	halfadder HA2 (s[0],c[0],P[2],c[7]);
	halfadder HA3 (s[4],c[7],P[3],c[8]);
	halfadder HA4 (s[5],c[8],P[4],c[9]);
	
	fulladder FA7 (s[3],c[6],c[9],P[5],c[10]);
	fulladder FA8 (A[3]&B[3],c[4],c[10],P[6],P[7]);
	
endmodule
