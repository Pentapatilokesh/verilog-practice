`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 21:46:28
// Design Name: 
// Module Name: tb_decoder_nbit
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

module tb_decoder_nbit();
	
    parameter DEC_WIDTH = 3;
    reg [DEC_WIDTH-1:0] a;
    reg  enable ;
    wire  [2**DEC_WIDTH-1:0] y;
	
	integer i; // used in the for loop
	
    // Instantiate the parameterized DUT
    decoder_nbit 
    #(.N(DEC_WIDTH))
    DEC1
    (
      .a(a),
      .enable(enable),
      .y(y)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " a = %d, enable = %b, y = %b", a, enable, y);
        #10; a = 0; enable = 0;
        for (i = 0; i<2**DEC_WIDTH; i=i+1) begin
            #1; a = i; enable = 1;
        end
        #10 $stop;
    end
  
endmodule

