`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:36:33 07/05/2021
// Design Name:   Task
// Module Name:   C:/Users/ahmer/Documents/BCE6/DSD Lab/Final/Final_Task/TaskTest.v
// Project Name:  Final_Task
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Task
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TaskTest;

	// Inputs
	reg CLK;
	reg RST;
	reg WRN;
	reg REN;
	reg [7:0] IN;
	reg LIFO;
	reg FIFO;

	// Outputs
	wire [7:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	Task uut (
		.OUT(OUT), 
		.CLK(CLK), 
		.RST(RST), 
		.WRN(WRN), 
		.REN(REN), 
		.IN(IN), 
		.LIFO(LIFO), 
		.FIFO(FIFO)
	);

	initial begin
    CLK = 0; IN = 8'd0;
    RST = 1; CLK = 1; #5 ; CLK = 0; #5;
    RST = 0;
    
    $display("Start testing");
	 LIFO = 1;
	 FIFO = 0;
    // First write some data into the queue
    WRN = 1; REN = 0;
    IN = 8'd100;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd150;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd200;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd40;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd70;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd65;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd15;
    CLK = 1; #5 ; CLK = 0; #5;
    
    // Now start reading and checking the values
    WRN = 0; REN = 1;
    CLK = 1; #5 ; CLK = 0; #5;
    // NEED to understand why this extra CLK cycle is required.
    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd15 )
      $display("PASS %d  ", OUT);
    else
      $display("FAIL %d  ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd65 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd70 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd40 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd200 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd150 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd100 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

///////////////////////////////////////////////////////////////////////////

	 LIFO = 0;
	 FIFO = 1;
    CLK = 0; IN = 8'd0;
    RST = 1; CLK = 1; #5 ; CLK = 0; #5;
    RST = 0;
	 CLK = 1; #5 ; CLK = 0; #5;
	 CLK = 1; #5 ; CLK = 0; #5;
	 CLK = 1; #5 ; CLK = 0; #5;
    
    $display("Start testing");

    // First write some data into the queue
    WRN = 1; REN = 0;
    IN = 8'd100;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd150;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd200;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd40;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd70;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd65;
    CLK = 1; #5 ; CLK = 0; #5;
    IN = 8'd15;
    CLK = 1; #5 ; CLK = 0; #5;
    
    // Now start reading and checking the values
    WRN = 0; REN = 1;
    CLK = 1; #5 ; CLK = 0; #5;
    // NEED to understand why this extra CLK cycle is required.
    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd15 )
      $display("PASS %d  ", OUT);
    else
      $display("FAIL %d  ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd65 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd70 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd40 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd200 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd150 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);

    CLK = 1; #5 ; CLK = 0; #5;
    if ( OUT === 8'd100 )
      $display("PASS %d ", OUT);
    else
      $display("FAIL %d ", OUT);
	
	end
endmodule

