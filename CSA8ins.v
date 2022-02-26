`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:07 04/22/2021 
// Design Name: 
// Module Name:    CSA8ins 
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
module CSA8ins(A,B,Cin,S,Cout);
input [7:0] A,B;
input Cin;
output [7:0] S;
output Cout;
wire [3:0] sumL,sumU0,sumU1,sumU,al,ah,bl,bh;
wire cL,cU0, cU1;

assign al = A[3:0];
assign ah = A[7:4];
assign bl = B[3:0];
assign bh = B[7:4];

CSA4ins cas1(al,bl,Cin,sumL,cL);
CSA4ins cas2(ah,bh,1'b0,sumU0,cU0);
CSA4ins cas3(ah,bh,1'b1,sumU1,cU1);

MUX2ins mux1(sumU0[0],sumU1[0],cL,sumU[0]);
MUX2ins mux2(sumU0[1],sumU1[1],cL,sumU[1]);
MUX2ins mux3(sumU0[2],sumU1[2],cL,sumU[2]);
MUX2ins mux4(sumU0[3],sumU1[3],cL,sumU[3]);
MUX2ins mux5(cU0,cU1,cL,Cout);

assign S = {sumL,sumU};

endmodule
