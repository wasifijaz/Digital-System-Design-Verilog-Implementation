`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:06 03/25/2021 
// Design Name: 
// Module Name:    MUX_4x1 
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
module MUX_4x1(i0,i1,i2,i3,s1,s0,out);
input i0,i1,i2,i3,s1,s0;
output out;
wire w1,w2;

MUX_2x1 mux1(s1,i0,i1,w1);
MUX_2x1 mux2(s1,i2,i3,w2);
MUX_2x1 mux3(s0,w1,w2,out);

endmodule
