`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2026 22:25:52
// Design Name: 
// Module Name: shift_reg_pipo
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

module shift_reg_pipo(
	input reset_n,
	input clk,
    input [3:0] d,
	output reg [3:0] q
    );
	
	// Async negative reset_n is used
	// The input data is the same as the output data
	// This can be used as a "pipeline register"
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    q <= 4'b0;
	    else
		    q[3:0] <= d[3:0];  
	end

endmodule