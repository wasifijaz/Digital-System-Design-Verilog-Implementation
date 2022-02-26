`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:38 05/28/2021 
// Design Name: 
// Module Name:    task1 
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
module task1(reset,start,A,B,O,F);
	
	input reset,start; 
	input[3:0] A,B;
	
	output [7:0] O;
	output F;
	
	reg [7:0] O;
	reg[3:0] state;
	reg [8:0] ACC; 
	
	wire F;  
	wire P0,P1;
	wire m1,m2,m3,m4;
	
	nand(m1,start,m2);
	buf #20 (m2,m1);
	buf #10 (P0,m1);
	not #2 (m4,P0);
	
	assign m3=~m1; 
	
	and #2 (P1,m3,m4);
	
	assign F = (state==9)? 1'b1:1'b0;
	
	always @(posedge P0 or posedge P1 or posedge reset)
		begin
			if(reset) 
				begin
					state <= 0; 
					ACC <= 0; 
					O <= 0; 
				end
			else if((P0==1'b1) || (P1==1'b1)) 
				begin
					if(state==0)
						begin
							ACC[8:4] <= 5'b00000; 
							ACC[3:0] <= A; 
							state <= 1;
						end
					else if(state==1 || state == 3 || state ==5 || state ==7) 
						begin
							if(ACC[0] == 1'b1) 
								begin 
									ACC[8:4] <= {1'b0,ACC[7:4]} + B; 
									state <= state + 1;
								end
							else
								begin
									ACC <= {1'b0,ACC[8:1]};
									state <= state + 2;
								end
						end
					else if(state==2 || state == 4 || state ==6 || state ==8) 
						begin
							ACC <= {1'b0,ACC[8:1]}; 
							state <= state + 1;
						end 
					else if(state == 9) 
						begin
							state <= 0;
							O <= ACC[7:0]; 
						end
				end
		end 
		
endmodule
