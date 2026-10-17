`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 21:28:47
// Design Name: 
// Module Name: tb_tristate
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


module tb_tristate(
    );
	
    reg din;
    reg sel;
    wire dout;

	
    // Instantiate the DUT
    tristate_buffer_1bit TRI1(
       .din(din),
       .sel(sel),
       .dout(dout)
    );
  
	// Generate stimulus
	initial begin
	   $monitor(" din = %b, sel = %b, dout = %b", din, sel, dout);
       #1; din = 0; sel = 0;
	   #1; din = 1; sel = 0;
       #1; din = 0; sel = 1;
       #1; din = 1; sel = 0;
       #1; din = 1; sel = 1;
	   #2; din = 0;
	   #5; $stop;
	end

endmodule


