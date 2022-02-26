`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:12 07/06/2021 
// Design Name: 
// Module Name:    FIFO_Simple 
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
module FIFO_Simple(clk,reset,din,read,write,dout,empty,full); 
 
	input clk; 
	input reset; 
	input [15:0]din;	
	input read; 
	input write; 
 
	output [15:0]dout; 
	output empty; 	    
	output full;	    
	 
	parameter DEPTH=3, MAX_COUNT=3'b111;	  
	 
	reg [15:0]dout; 
	reg empty; 
	reg full; 
 
	reg [(DEPTH-1):0]tail;	 	 
	reg [(DEPTH-1):0]head;	 
	reg [(DEPTH-1):0]count;	 
	reg [15:0]fifo_mem[0:MAX_COUNT];  
	reg sr_read_write_empty;			
	
	always @(posedge clk) 
		begin 
			if(reset==1) 															 
				sr_read_write_empty <= 0; 
			else if(read==1 && empty==1 && write==1)	 
				sr_read_write_empty <= 1; 
			else 
				sr_read_write_empty <= 0; 
		end 
 		 
	always @(posedge clk) 
		begin 
			if(reset==1) 
				count <= 3'b000;		 
			else 
				begin 
					case({read,write}) 
						2'b00:	
							count <= count;				 
						2'b01:
							if(count!=MAX_COUNT)			 
								count <= count+1; 
						2'b10:	
							if(count!=3'b000)				 
								count <= count-1;							 
						2'b11:	
							if(sr_read_write_empty==1)	 
								count <= count+1; 
							else 
								count <= count; 
						default: 
							count <= count; 
					endcase 
				end 
		end 
 
	always @(count) 
		begin 
			if(count==3'b000) 
				empty <= 1; 
			else 
				empty <= 0; 
		end 

	always @(count) 
		begin 
			if(count==MAX_COUNT) 
				full <= 1; 
			else 
				full <= 0; 
		end 
 
	always @(posedge clk) 
		begin 
			if(reset==1) 
				head <= 3'b000;	 
			else 
				begin 
					if(write==1 && full==0)	 
						head <= head+1; 
				end 
		end 

		always @(posedge clk) 
			begin 
				if(reset==1) 
					tail <= 3'b000;	 
				else 
					begin 
						if(read==1 && empty==0)	 
							tail <= tail+1; 
					end 
			end 

	always @(posedge clk) 
		begin 
			if(write==1 && full==0) 
				fifo_mem[head] <= din; 
			else									 
				fifo_mem[head] <= fifo_mem[head]; 
		end 
 
	always @(posedge clk) 
		begin 
			if(reset==1)						 
				dout <= 16'h0000; 
			else if(read==1 && empty==0)	 
				dout <= fifo_mem[tail]; 
			else 
				dout <= dout;  
		end 
endmodule
