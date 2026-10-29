`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2026 22:11:49
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input d,
	input enable,
	output q,
    output q_not
    );
	
	reg dlatch;
	
	// The D-Lach is level sensitive
	always @(enable or d) begin
	    if(enable)
		    dlatch <= d; 
	end
	
	assign q = dlatch;
	assign q_not = ~q;
	
endmodule

