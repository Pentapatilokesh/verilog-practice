`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 21:21:34
// Design Name: 
// Module Name: prio_enc2_4to2
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


module prio_enc2_4to2
  (input [3:0] d,
   output reg [1:0] q,
   output reg v
  );
  
    always @(*) begin
        case (1) // checks if a signal is set
            d[3]:  begin q = 2'd3; v = 1; end
            d[2]:  begin q = 2'd2; v = 1; end
            d[1]:  begin q = 2'd1; v = 1; end
            d[0]:  begin q = 2'd0; v = 1; end
            default: begin q = 2'd0; v = 0; end
        endcase
    end
  
endmodule
