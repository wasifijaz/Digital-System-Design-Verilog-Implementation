`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:54 05/26/2021 
// Design Name: 
// Module Name:    CLA_16bits 
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
module CLA_16bits(a,b,cin,sum,cout);

	input [15:0] a, b;
	input cin;
	output [15:0] sum;
	output cout;
	wire [3:0] p0, p1, p2, p3, g0, g1, g2, g3, g4;
	wire c1, c2, c3, c4; 

	assign p0 = a[3:0]^b[3:0],
			 p1 = a[7:4]^b[7:4],
			 p2 = a[11:8]^b[11:8],
			 p3 =	a[15:12]^b[15:12];
	
	assign g0 = a[3:0]&b[3:0],
			 g1 = a[7:4]&b[7:4],
			 g2 = a[11:8]&b[11:8],
			 g3 =	a[15:12]&b[15:12];
			 
	assign c1 = g0|p0&cin,
			 c2 = g1|p1&g0|p1&p0&cin,
			 c3 = g2|p2&g1|p2&p1&g0|p2&p1&p0&cin,
			 c4 = g3|p3&g2|p3&p2&g1|p3&p2&p1&g0|p3&p2&p1&p0&cin;
	
	CLA_4bits cla1(a[3:0],b[3:0],cin,sum[3:0],);
	CLA_4bits cla2(a[7:4],b[7:4],c1,sum[7:4],);
	CLA_4bits cla3(a[11:8],b[11:8],c2,sum[11:8],);
	CLA_4bits cla4(a[15:12],b[15:12],c3,sum[15:12],);
	
	assign cout = c4;
 
endmodule
