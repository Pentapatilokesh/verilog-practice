`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2026 21:38:52
// Design Name: 
// Module Name: lfsr_16
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


module lfsr_16(input clk,
			   input reset_n,
			   input enable,
			   output reg [15:0] lfsr);
	
	// Seed has to be non-zero all the times
	localparam RST_SEED = 16'h1001;
	wire feedback;
	
	// x^16 + X^14 + X^13 + X^11 + 1
	assign feedback = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];
	
	always @(posedge clk or negedge reset_n)
	begin
	    if(!reset_n)
		    lfsr <= RST_SEED;
	    else if (enable == 1'b1)
            lfsr <= {lfsr[14:0],feedback};	
	end

endmodule

