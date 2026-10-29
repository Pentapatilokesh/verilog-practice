`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2026 22:12:33
// Design Name: 
// Module Name: tb_d_latch
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


module tb_d_latch();
	
	// Testbench variables
    reg d;
	reg enable;
	wire q;
    wire q_not;
    
	// Instantiate the DUT
	d_latch DL0(
        .d(d),
	    .enable(enable),
	    .q(q),
        .q_not(q_not)
	);
	
    // Create stimulus	  
    initial begin
	    $monitor ($time, " enable = %b, d = %b, q = %b, q_not = %b",
		                 enable, d, q, q_not);
        enable = 0;
		#20  ; d = 0;
	    #5; d = 1;
		#10  ; d = 0;
		#10  ; d = 1;
		#15; enable = 1;
		#1; d = 1;
		#2; d = 0;
		#3; d = 1;
		#10  ; enable = 0; d = 0;
		#10  ; d = 1;
		#20  ; d = 0;
	end
	
    // This will stop the simulator when the time expires
    initial begin
        #100 $finish;
    end
  
endmodule
