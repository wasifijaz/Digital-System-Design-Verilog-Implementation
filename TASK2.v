`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:04 03/21/2021 
// Design Name: 
// Module Name:    TASK2 
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
module TASK2(a,b,c,out);
input a,b,c;
output out;
wire w1,w2,w3;

AND_2x1 and_1(a,b,w1);
NOT_1x1 not_1(a,w2);
AND_2x1 and_2(w2,c,w3);
OR_2x1 or_1(w1,w3,out);

endmodule
