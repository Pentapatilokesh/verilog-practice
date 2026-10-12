`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 21:37:29
// Design Name: 
// Module Name: df
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


module df(output y, input a,b);

assign y = a|b;
/*
assign y = a&b;
assign y = a^b;
assign y = a~^b;
assign y = ~(a|b);
assign y = ~(a&b);
assign y = ~a;
*/

endmodule
