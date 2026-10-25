`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2026 21:40:09
// Design Name: 
// Module Name: tb_mux_4x_nbit
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

module tb_mux_4x_nbit(
    // no inputs here ;)
    );
	
   parameter BUS_WIDTH = 8;
   reg [BUS_WIDTH-1:0] a;
   reg [BUS_WIDTH-1:0] b;
   reg [BUS_WIDTH-1:0] c;
   reg [BUS_WIDTH-1:0] d;
   reg [1:0] sel;
   wire [BUS_WIDTH-1:0] y;
   integer i;


    // Instantiate the DUT 
    mux_4x_nbit
        #(.BUS_WIDTH(BUS_WIDTH))
        MUX0 (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " a = %d, b = %d, c = %d, d = %d, sel = %d, y = %d", 
                 a, b, c, d, sel, y);
        #10; sel = 0; a = 0; b = 0; c = 0; d = 0;
        for (i = 0; i<8; i=i+1) begin
            #10; sel = $urandom%4; a = $urandom; b = $urandom; c = $urandom; d = $urandom;
        end
        #10 $stop;
    end
  
endmodule