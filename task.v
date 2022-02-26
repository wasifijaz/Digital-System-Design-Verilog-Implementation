`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:08 06/13/2021 
// Design Name: 
// Module Name:    task 
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
module Task(input x,input clk,input rst,output reg out);
parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b100;
reg [2:0] current_state,next_state;
always @(posedge clk or posedge rst)
begin
if (rst==1)
current_state<=s0;
else
current_state<=next_state;
end
always @(current_state or x)
begin
case(current_state)
s0: 
begin
if(x==1)
next_state<=s1;
else
next_state<=s0;
end
s1: 
begin
if(x==1)
next_state<=s2;
else
next_state<=s1;
end
s2: 
begin
if(x==1)
next_state<=s3;
else
next_state<=s2;
end
s3: 
begin
if(x==1)
next_state<=s0;
else
next_state<=s3;
end
default: next_state<=0;
endcase
end
always @(current_state)
begin
case(current_state)
s0: out<=0;
s1: out<=0;
s2: out<=0;
s3: out<=1;
default: out<=0;
endcase
end
endmodule
