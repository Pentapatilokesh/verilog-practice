`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2026 22:30:04
// Design Name: 
// Module Name: tb_decoder_4to16
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


module tb_decoder_4to16();
	
   reg [3:0] a;
   wire  [15:0] d;
   integer i;
   
    // Instantiate the DUT
    decoder_4to16 DEC4_16 (
      .a(a),
      .d(d)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " a = %d, d = %b", a, d);
        #10; a = 0;
        for (i = 0; i<16; i=i+1) begin
            #10; a = i;
        end
        #20 $stop;
    end
  
endmodule

