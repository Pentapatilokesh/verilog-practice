`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 21:11:58
// Design Name: 
// Module Name: tb_hex_7seg_decoder
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


module tb_hex_7seg_decoder();
	
	// Testbench variables
    reg  [3:0]in;
    wire a, b, c, d, e, f, g;
    wire dot;
    integer i; 
	
    // Instantiate the DUT 
	hex_7seg_decoder DEC_7SEG(
		.in(in),
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.e(e),
		.f(f),
		.g(g),
		.dot(dot)
		);
  
    // Create stimulus
    initial begin
        $monitor($time, " in = %d, seven_seg_code = %7b dot = %1b", 
                 in, {a, b, c, d, e, f, g}, dot);
        #1; in = 0;
        for (i = 0; i<16; i=i+1) begin
            #10; in = i;
        end
        #20 $stop;
    end
  
endmodule