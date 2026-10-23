`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2026 22:26:01
// Design Name: 
// Module Name: tb_encoder_8to3
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


module tb_encoder_8to3();
	
    reg [7:0] d;
    reg enable;
    wire  [2:0] y;
	
	integer i;

    // Instantiate the DUT
    encoder_8to3 ENC3_8 (
        .d     (d     ),
        .enable(enable),
        .y     (y     )
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " d = %b, y = %d", d, y);
        #1; d = 0; enable = 0;
        for (i = 0; i<8; i=i+1) begin
            #10; d = (1 << i); enable = 1;
        end
        #10; d = 8'b1111_1111;
        #20 $stop;
    end
  
endmodule
