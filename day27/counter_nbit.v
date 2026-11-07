`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2026 22:34:57
// Design Name: 
// Module Name: counter_nbit
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



module counter_nbit 
    // Parameters section
    #( parameter CNT_WIDTH = 3)
    // Ports section
    (input clk,
    input reset_n,
    output reg [CNT_WIDTH-1:0] counter);
  
    // Use non-blocking assignment for sequential logic
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
		    counter <= 0;
		else
		    counter <= counter + 1'b1;
    end  
  
endmodule
