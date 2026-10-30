`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2026 20:01:36
// Design Name: 
// Module Name: d_ff_sync_rstn
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


module d_ff_sync_rstn(
	input reset_n,
    input clk,
    input d,
	output reg q,
    output q_not
    );
	
	// The D-Flip Flop has a positive edge clock
	// reset_n is synchronous with the clk signal
	// Use non-blocking operator for sequential logic
	always @(posedge clk) begin
	    if (!reset_n)
		    q <= 1'b0;
	    else
		    q <= d;  
	end
	
	assign q_not = ~q;
	
endmodule

