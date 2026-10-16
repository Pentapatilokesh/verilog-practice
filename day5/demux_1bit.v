`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2026 22:25:34
// Design Name: 
// Module Name: demux_1bit
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


module demux_1bit(
   input x,
   input sel,
   output y0,
   output y1
   );
  
   wire sel_not;
  
   not  not1  (sel_not, sel);
   and  and1  (y0, x, sel_not);
   and  and2  (y1, x, sel);
  
endmodule
