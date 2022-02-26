`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:45 04/18/2021 
// Design Name: 
// Module Name:    Mux2inLogical 
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
module Mux2inLogical(out, i0,i1,s0);
input i0, i1;
input s0;
output out;
assign out = s0?i1:i0;
endmodule 