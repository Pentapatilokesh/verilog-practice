`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 21:45:52
// Design Name: 
// Module Name: tb_demux_nbit_x4
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


module tb_demux_nbit_x4;
	
    parameter BUS_WIDTH = 8;
    wire [BUS_WIDTH-1:0] a;
    wire [BUS_WIDTH-1:0] b;
    wire [BUS_WIDTH-1:0] c;
    wire [BUS_WIDTH-1:0] d;
    reg [1:0] sel;
    reg [BUS_WIDTH-1:0] y;
   
    integer i;

    // Instantiate the DUT 
    demux_nbit_x4
        #(.BUS_WIDTH(BUS_WIDTH))
      DEMUX0 ( 
        .y(y),
        .sel(sel),
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " sel = %d, y = %d, a = %d, b = %d, c = %d, d = %d", 
                 sel, y, a, b, c, d);
        #10; sel = 0; y = 0;
        for (i = 0; i<8; i=i+1) begin
            #10; sel =  i%4; y = $urandom;
        end
        #10 $stop;
    end
  
endmodule
