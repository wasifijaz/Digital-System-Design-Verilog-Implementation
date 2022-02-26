`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:37:27 04/22/2021
// Design Name:   CSA4ins
// Module Name:   D:/Education/Semester 6/DSD Lab/Lab7/CSA4ins_tb.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA4ins
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CSA4ins_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    // Outputs
    wire [3:0] S;
    wire Cout;  
    integer i,j,error;

    // Instantiate the Unit Under Test (UUT)
    CSA4ins uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .S(S), 
        .Cout(Cout)
    );

//Stimulus block - all the input combinations are tested here.
//the number of errors are recorded in the signal named "error".
    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        error = 0;
        //for carry in =0
        Cin = 0;
      for(i=0;i<16;i=i+1) 
		begin
            for(j=0;j<16;j=j+1) 
				begin
                 A = i;
                 B = j;
                 #10;
                 if({Cout,S} != (i+j)) 
                      error <= error + 1;
            end  
      end
        //for carry in =1
      Cin = 1; 
      for(i=0;i<16;i=i+1) 
		begin
            for(j=0;j<16;j=j+1)
				begin
                 A = i;
                 B = j;
                 #10;
                 if({Cout,S} != (i+j+1)) 
                      error <= error + 1;
            end  
      end 
   end
    
endmodule
