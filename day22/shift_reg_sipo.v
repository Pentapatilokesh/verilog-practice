`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 22:11:09
// Design Name: 
// Module Name: shift_reg_sipo
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


module shift_reg_sipo(
	input reset_n,
	input clk,
    input sdi, // serial data in
	output reg [3:0] q
    );
	
	// Async negative reset_n is used
	// The input data is the same as the output data
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    q <= 4'b0;
	    else
		    q[3:0] <= {q[2:0], sdi};
	end
endmodule

