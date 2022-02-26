`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:10 05/28/2021 
// Design Name: 
// Module Name:    task2 
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
module task2(x,y,z,s,cout);
	
	input [3:0] x,y,z;
            
	output [4:0] s;
   output cout;
            
	wire [3:0] c1,s1,c2;

	fulladder fa0(x[0],y[0],z[0],s1[0],c1[0]);
	fulladder fa1(x[1],y[1],z[1],s1[1],c1[1]);
	fulladder fa2(x[2],y[2],z[2],s1[2],c1[2]);
	fulladder fa3(x[3],y[3],z[3],s1[3],c1[3]); 

	fulladder fa4(s1[1],c1[0],1'b0,s[1],c2[1]);
	fulladder fa5(s1[2],c1[1],c2[1],s[2],c2[2]);
	fulladder fa6(s1[3],c1[2],c2[2],s[3],c2[3]);
	fulladder fa7(1'b0,c1[3],c2[3],s[4],cout); 

	assign s[0] = s1[0];
	
endmodule

module fulladder(a,b,cin,sum,carry);

	input a,b,cin;
   output sum,carry;

	assign sum = a ^ b ^ cin;
	assign carry = (a & b) | (cin & b) | (a & cin);

endmodule
