`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:35 04/22/2021 
// Design Name: 
// Module Name:    CSA4ins 
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
module CSA4ins(A,B,Cin,S,Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;
wire [3:0] sum0,sum1,carry0,carry1;

FA fa00(A[0],B[0],1'b0,sum0[0],carry0[0]);
FA fa01(A[1],B[1],carry0[0],sum0[1],carry0[1]);
FA fa02(A[2],B[2],carry0[1],sum0[2],carry0[2]);
FA fa03(A[3],B[3],carry0[2],sum0[3],carry0[3]);

FA fa10(A[0],B[0],1'b1,sum1[0],carry1[0]);
FA fa11(A[1],B[1],carry1[0],sum1[1],carry1[1]);
FA fa12(A[2],B[2],carry1[1],sum1[2],carry1[2]);
FA fa13(A[3],B[3],carry1[2],sum1[3],carry1[3]);

MUX2ins mux_carry(carry0[3],carry1[3],Cin,Cout);

MUX2ins mux_sum0(sum0[0],sum1[0],Cin,S[0]);
MUX2ins mux_sum1(sum0[1],sum1[1],Cin,S[1]);
MUX2ins mux_sum2(sum0[2],sum1[2],Cin,S[2]);
MUX2ins mux_sum3(sum0[3],sum1[3],Cin,S[3]);
endmodule
