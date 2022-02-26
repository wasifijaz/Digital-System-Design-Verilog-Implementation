`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:23 04/05/2021 
// Design Name: 
// Module Name:    RCA_8bits 
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
module RCA_8bits(a,b,cin,sum,cout);
input [7:0] a,b;
input cin;
output [7:0] sum;
output cout;
wire c1;


RCA_4bits rca1(a[3:0],b[3:0],cin,sum[3:0],c1);
RCA_4bits rca2(a[7:4],b[7:4],cin,sum[7:4],cout);

endmodule
