`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:57 07/02/2021 
// Design Name: 
// Module Name:    LIFO 
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


module LIFO_FIFO(IN_BUS, L_F, S2, S1, S0, DEL, WRITE, NS2, NS1, NS0, wr_dec, wr_inc, rd_dec, rd_inc, rst_n, clk, ERROR, OUT_BUS);
	
	input IN_BUS, L_F, clk, rst_n, wr_dec, wr_inc, rd_dec, rd_inc;
	output OUT_BUS, ERROR;
	wire [1:0] wr_addr, rd_addr;
	reg R0, R1, R2, R3, S0, S1, S2, NS0, NS1, NS2;
	
	
	always @(posedge clk, posedge rst_n)
	begin
		if(rst_n==1)
			S0 <= 1'b0;
		else
			S0 <= NS0;
	end
	
	
	always @(posedge clk)
	begin
		DEMUX1in4 demux1(IN_BUS,wr_addr[1:0],R0,R1,R2,R3);
		MUX4in1 mux1(R0,R1,R2,R3,rd_addr[1:0],OUT_BUS);
	end
	
endmodule


//////////////////////////////////////////////

module MUX4in1(i0,i1,i2,i3,sel,out);
	input i0,i1,i2,i3;
	input [1:0] sel;
	output out;
	wire s1n,s0n,y0,y1,y2,y3;
	
	assign out = (sel[1]) ? ((sel[0]) ? i3 : i2) : ((sel[0]) ? i1 : i0);
endmodule


///////////////////////////////////////////////

module DEMUX1in4(in,sel,out0,out1,out2,out3);
	input in;
	input [1:0] sel;
	output reg out0,out1,out2,out3;
	
	always @(in or sel)
	begin
		case (sel)
			2'b00 : begin
				out0 = in;
				out1 = 0;
				out2 = 0;
				out3 = 0;
				end
			2'b01 : begin
				out0 = 0;
				out1 = in;
				out2 = 0;
				out3 = 0;
				end
			2'b10 : begin
				out0 = 0;
				out1 = 0;
				out2 = in;
				out3 = 0;
				end
			2'b11 : begin
				out0 = 0;
				out1 = 0;
				out2 = 0;
				out3 = in;
				end
		endcase
	end
	
endmodule

