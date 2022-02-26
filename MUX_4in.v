`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:32 04/04/2021 
// Design Name: 
// Module Name:    MUX_4in 
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
module MUX_4in(i0,i1,i2,i3,s1,s0,out);
input i0,i1,i2,i3,s1,s0;
output out;
wire s1n,s0n,y0,y1,y2,y3;
not(s1n,s1);
not(s0n,s0);
and(y0,s0n,s1n,i0);
and(y1,i1,s1n,s0);
and(y2,i2,s1,s0n);
and(y3,i3,s1,s0);
or(out,y0,y1,y2,y3);
endmodule
