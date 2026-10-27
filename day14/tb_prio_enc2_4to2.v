`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 21:22:22
// Design Name: 
// Module Name: tb_prio_enc2_4to2
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


module tb_prio_enc2_4to2();
	
    reg [3:0] d;   // DUT variables
    wire v;
    wire [1:0] q;
    integer i;     // testbench variable

    // Instantiate the DUT 
    prio_enc2_4to2 PRENC(
      .d(d),
      .q(q),
      .v(v)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " d = %b, q = %d, v = %d", d, q, v);
        #1; d = 0; 
        for (i = 0; i<4; i=i+1) begin
           #10; d = (1 << i);
        end
        #10; d = 4'b1111;
        #10; d = 4'b1001;
        #10; d = 4'b0101;
		#10; d = 4'b0000;
		#10; $stop;
    end
  
endmodule
