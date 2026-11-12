`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2026 21:37:24
// Design Name: 
// Module Name: ram_sp_async_read
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


// Single port RAM with asynchronous read
// The size of the RAM is 16 x 8bit words
module ram_sp_async_read(
    input clk,
	input [7:0] data_in,  // 8bit intput word
	input [3:0] address,  // for 16 locations
	input write_en,       // active high
	output [7:0] data_out // 8bit output word
    );
	
	// Declare a bidimentional array for the RAM
	reg [7:0] ram [0:15];
	
	// RAMs don't have reset. 
	// The default value from each location is X.
	// The write is synchronous
	always @(posedge clk) begin
	    if (write_en) begin
		    ram[address] <= data_in;
	    end
	end

    // The read is asynchronous
	assign data_out = ram[address];

endmodule

