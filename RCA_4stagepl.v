`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:25 07/02/2021 
// Design Name: 
// Module Name:    RCA_4stagepl 
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
module RCA_4stagepl(input clock,input [3:0] a,b,input cin,output reg s,output reg c_out);

	reg w1,w2,w3;
	reg w1_Register,w2_Register,w3_Register;
	reg [3:0] A_Register, B_Register;
	reg [3:0] ss;
	reg Sum_Register1;
	reg Sum_Register2;
	reg Sum_Register3;
	reg Sum1_Register;
	reg Sum2_Register;
	reg Sum3_Register;
	reg A2_Register1;
	reg B2_Register1;
	reg A2_Register2;
	reg B2_Register2;
	reg A3_Register1;
	reg B3_Register1;
	reg A3_Register2;
	reg B3_Register2;
	reg A3_Register3;
	reg B3_Register3;
	always @(clock)
		begin
			{w1, ss[0]} = a[0] + b[0] + cin;
			{w2, ss[1]} = A_Register + B_Register + w1_Register;
			{w3, ss[2]} = A2_Register2 + B2_Register2 + w2_Register;
			{c_out, ss[3]} = A3_Register3 + B3_Register3 + w3_Register;
			s = {ss[3],Sum3_Register,Sum2_Register,Sum_Register3};
		end
		always @(posedge clock)
		begin
			Sum_Register1 <= ss[0];
			Sum_Register2 <= Sum_Register1;
			Sum_Register3 <= Sum_Register2;
			w1_Register <= w1;
			A_Register <= a[1];
			B_Register <= b[1];
			Sum1_Register <= ss[1];
			Sum2_Register <= Sum1_Register;
			w2_Register <= w2;
			A2_Register1 <= a[2];
			B2_Register1 <= b[2];
			A2_Register2 <= A2_Register1;
			B2_Register2 <= B2_Register1;
			Sum3_Register <= ss[2];
			w3_Register <= w3;
			A3_Register1 <= a[3];
			B3_Register1 <= b[3];
			A3_Register2 <= A3_Register1;
			B3_Register2 <= B3_Register1;
			A3_Register3 <= A3_Register2;
			B3_Register3 <= B3_Register2;
		end
		
endmodule
