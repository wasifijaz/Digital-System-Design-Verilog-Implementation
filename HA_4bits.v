`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:45 04/05/2021 
// Design Name: 
// Module Name:    HA_4bits 
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
module (a,b,sum,cout);
input [3:0] a,b;
output [3:0] sum;

assign sum = a+b;

endmodule
