`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:07 07/05/2021 
// Design Name: 
// Module Name:    Task 
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
module Task(OUT, CLK, RST, WRN, REN, IN, LIFO, FIFO);
  output reg [7:0] OUT;    
  input [7:0] IN;
  input CLK, RST, WRN, REN; // Need to understand what is wn and rn are for
  input LIFO, FIFO;

  wire FULL, EMPTY;
  wire FIFO_FULL, FIFO_EMPTY;
  
  reg [3:0] ptr; // pointers tracking the stack
  reg [2:0] wptr, rptr;
  reg [7:0] memory [7:0]; // the stack is 8 bit wide and 8 locations in size
  
  assign FULL = (ptr == 4'b1000) ? 1 : 0;
  assign EMPTY = (ptr == 4'b0000) ? 1 : 0;
  
  assign FIFO_FULL = ( (wptr == 3'b111) & (rptr == 3'b000) ? 1 : 0 );
  assign FIFO_EMPTY = (wptr == rptr) ? 1 : 0;
  
  always @(posedge CLK)
  begin  
    if (RST)
      begin
        memory[0] <= 0;
		  memory[1] <= 0;
		  memory[2] <= 0;
		  memory[3] <= 0;
        memory[4] <= 0;
		  memory[5] <= 0;
		  memory[6] <= 0;
		  memory[7] <= 0;
        OUT <= 0;
		  ptr <= 1;
		  wptr <= 0;
		  rptr <= 0;
      end
    else if (LIFO)
			begin
			 if (WRN & !FULL)
				begin
				  memory[ptr] <= IN;
				  ptr <= ptr + 1;
				end
			 else if (REN & !EMPTY)
				begin
				  ptr <= ptr - 1;
				  OUT <= memory[ptr];
				end
			end
	else if (FIFO)
			begin			
				if (WRN & !FIFO_FULL)
				begin
				  memory[wptr] <= IN;
				  wptr <= wptr + 1;
				end
			 else if (REN & !FIFO_EMPTY)
				begin
				  OUT <= memory[rptr];
				  rptr <= rptr + 1;
				end			
			end
  end

endmodule
