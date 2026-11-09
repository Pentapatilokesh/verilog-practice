`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2026 21:17:59
// Design Name: 
// Module Name: tb_counter_modulo_n
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

module tb_counter_modulo_n();
	// Testbench variables
	parameter CNT_WIDTH = 4;
    parameter N = 10;

    reg clk = 0;
    reg reset_n;
	reg enable;
    wire [CNT_WIDTH-1:0] counter_out;
	
	// Instantiate the DUT
    counter_modulo_n 
        // Parameters section
        #(.N(N), .CNT_WIDTH(CNT_WIDTH))
		    CNT_MODN0
        // Ports section
        (.clk        (clk        ),
         .reset_n    (reset_n    ),
		 .enable     (enable     ),
         .counter_out(counter_out));
	
	// Create the clock signal
	always begin #0.5 clk = ~clk; end
	
    // Create stimulus	  
    initial begin	 
	    $monitor ($time, " enable = %b, counter_out = %d",
		               enable, counter_out);
	    #1  ; reset_n = 0; enable = 0; 	
		#1.2; reset_n = 1;  // release reset
		repeat(3) @(posedge clk); enable = 1;     
		repeat(14) @(posedge clk); $stop;
	end
	
endmodule

