`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 20:43:07
// Design Name: 
// Module Name: tb_mux_tristate
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


module tb_mux_tristate(
    // no inputs here ;)
    );
	
    reg a, b;
    reg sel;
    wire dout;
	
    // Instantiate the DUT
    mux_tristate MUX1(
      .a(a),
      .b(b),
      .sel(sel),
      .dout(dout)
    );
  
      
    // Toggle sel (select line)
    initial begin
       $monitor(" a = %b, b = %b, sel = %b, dout = %b",a, b, sel, dout);
       #10; a = 0; b = 0; sel = 0;
       #10; a = 1; b = 0; sel = 0;
       #10; a = 1; b = 0; sel = 1;
       #10; a = 0; b = 1; sel = 1;
       #10; a = 0; b = 0; sel = 0;      
       #10;
    end
    initial begin
    #70 $finish();
    end
endmodule
