`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2026 21:17:09
// Design Name: 
// Module Name: counter_modulo_n
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
module counter_modulo_n
    // Parameters section
    #( parameter N = 10, 
	   parameter CNT_WIDTH = 4)
    // Ports section
    (input clk,
    input reset_n,
	input enable,
    output reg [CNT_WIDTH-1:0] counter_out);
  
    // Use non-blocking assignment for sequential logic
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
		    counter_out <= 0;
	    else if (enable) begin
		    if (counter_out == (N-1)) begin
				counter_out <= 0;
            end else begin
				counter_out <= counter_out + 1'b1;
		    end
		end
    end  
  
endmodule

