`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:38 04/18/2021 
// Design Name: 
// Module Name:    Mux4inLogical 
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
module Mux4inLogical(out, i0,i1,i2,i3, s0, s1);
input i0, i1, i2, i3;
input s0, s1;
output out;
assign out = s1? (s0?i3:i2) : (s0?i1:i0);
endmodule 