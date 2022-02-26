`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:39 03/25/2021 
// Design Name: 
// Module Name:    MUX_2x1 
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
module MUX_2x1(a,x0,x1,out);
input a,x0,x1;
output out;
wire w1,w2,w3;

AND_2x1 and_1(a,x1,w1);
NOT_1x1 not_1(a,w2);
AND_2x1 and_2(w2,x0,w3);
OR_2x1 or_1(w1,w3,out);
endmodule
