`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:54 05/28/2021 
// Design Name: 
// Module Name:    task3 
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
module task3(A,B,P); 
	
	input [3:0] A,B;
	output [7:0] P;
	wire [19:0]w; 
	
	and(P[0],A[0],B[0]); 
	and(w[0],A[0],B[1]); 
	and(w[1],A[0],B[2]); 
	and(w[2],A[0],B[3]); 

	halfadder HA1(w[0],A[1]&B[0],P[1],w[3]); 
	halfadder HA2(w[1],A[1]&B[1],w[4],w[5]); 
	halfadder HA3(w[2],A[1]&B[2],w[6],w[7]); 
	halfadder HA4(w[17],A[1]&B[3],w[8],w[9]); 

	fulladder FA1(w[4],w[3],A[2]&B[0],P[2],w[10]); 
	fulladder FA2(w[6],A[2]&B[1],w[5],w[11],w[12]); 
	fulladder FA3(w[8],A[2]&B[2],w[7],w[13],w[14]); 
	fulladder FA4(w[18],A[2]&B[3],w[9],w[15],w[16]); 
	fulladder FA5(w[11],A[3]&B[0],w[10],P[3],w[17]); 
	fulladder FA6(w[13],A[3]&B[1],w[12],P[4],w[18]); 
	fulladder FA7(w[15],A[3]&B[2],w[14],P[5],w[19]); 
	fulladder FA8(w[19],A[3]&B[3],w[16],P[6],P[7]); 

endmodule

module halfadder(a,b,sum,carry);

	input a,b;
	output sum,carry;
	
	xor(sum,a,b);
	and(carry,a,b);
	
endmodule
