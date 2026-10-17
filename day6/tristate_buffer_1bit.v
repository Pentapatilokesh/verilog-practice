`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 21:27:45
// Design Name: 
// Module Name: tristate_buffer_1bit
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


module tristate_buffer_1bit(
    input din,
    input sel,
    output dout
    );
  
    bufif1 B1 (dout, din, sel);
  
endmodule