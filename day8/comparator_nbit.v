`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 21:10:51
// Design Name: 
// Module Name: comparator_nbit
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


module comparator_nbit 
    // Parameters section
   #( parameter N = 4)
    // Ports section
   (input [N-1:0] a,
    input [N-1:0] b,
    output reg smaller,
    output reg equal,
    output reg greater
   );
  
    // Wildcard operator is best for the procedure's
    // sensitivity list (control list)
    always @(*) begin
        smaller = (a < b);
        equal   = (a == b);
        greater = (a > b);
    end  
  
endmodule
