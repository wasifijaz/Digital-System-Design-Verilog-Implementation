`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:15 04/05/2021 
// Design Name: 
// Module Name:    MUX_8x1 
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
module MUX_8x1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output out;
wire w1,w2;
MUX_4x1 mux4in1(i0,i1,i2,i3,s1,s0,w1);
MUX_4x1 mux4in2(i4,i5,i6,i7,s1,s0,w2);
MUX_2x1 mux2in1(s2,w1,w2,out);
endmodule
