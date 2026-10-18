`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 20:42:17
// Design Name: 
// Module Name: mux_tristate
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


module mux_tristate(
    input a,
    input b,
    input sel,
    output dout
    );
  
    bufif0 B0 (dout,a,sel);
    bufif1 B1 (dout,b,sel);
  
endmodule
