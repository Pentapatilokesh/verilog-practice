`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2026 20:18:57
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
    input a,
    input b,
    output smaller,
    output equal,
    output greater
    );
  
  wire not_a;
  wire not_b;
  
  not NOT1 (not_a, a);
  not NOT2 (not_b, b);
  
  and  AND1  (smaller, b, not_a);
  xnor NXOR1 (equal, a, b);
  and  AND2  (greater, a, not_b);

endmodule
