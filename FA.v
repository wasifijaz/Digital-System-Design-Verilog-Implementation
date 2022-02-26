`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:25 03/25/2021 
// Design Name: 
// Module Name:    FA 
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
module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;

HA ha1(a,b,w1,w2);
HA ha2(w1,cin,sum,w3);
OR_2x1 or1(w2,w3,cout);

endmodule
