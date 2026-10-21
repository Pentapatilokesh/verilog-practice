`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 21:45:41
// Design Name: 
// Module Name: decoder_nbit
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
module decoder_nbit 
    // Parameters section
    #( parameter N = 3)
    // Ports section
    (input [N-1:0] a,
     input enable,
     output reg [2**N-1:0] y
    );
  
    always @(*) begin
        if (enable == 0) 
            y = 0;
        else
            y = (1 << a);
    end  
  
endmodule
