`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:15:24 05/28/2021
// Design Name:   task2
// Module Name:   D:/Education/Semester 6/DSD/Lab11/task2_tb.v
// Project Name:  Lab11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module task2_tb;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg [3:0] z;

	// Outputs
	wire [4:0] s;
	wire cout;
	
	integer i,j,k,error;

	// Instantiate the Unit Under Test (UUT)
	task2 uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		x = 0;
      y = 0;
      z = 0;
      error = 0;
     
      for(i=0;i<16;i=i+1) 
			begin
				for(j=0;j<16;j=j+1) 
					begin
						for(k=0;k<16;k=k+1) 
							begin
								x = i;
								y = j;
								z = k;
								#10;
								if({cout,s} != (i+j+k)) 
									error <= error + 1;
							end       
					end  
			end
   end 
   
endmodule

