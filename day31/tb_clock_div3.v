`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2026 22:34:39
// Design Name: 
// Module Name: tb_clock_div3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_clock_div3();
	
	// Testbench variables
	reg clk = 0;
	reg reset_n;
	wire clock_out;
	
	// Instantiate the DUT
    clock_div3 CLK_DIV0
        (.clock_in(clk),
         .reset_n(reset_n),
		 .clock_out(clock_out)
        );
	
	// Create the clock signal
	always begin #0.5 clk = ~clk; end
	
    // Create stimulus	  
    initial begin	 
	    #1  ;           reset_n = 0; 
		@(posedge clk); reset_n = 1; 
		repeat(20) @(posedge clk); $stop;		
	end
	
endmodule