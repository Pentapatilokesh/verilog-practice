`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2026 22:26:38
// Design Name: 
// Module Name: tb_demux
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

module tb_demux(
    // no inputs here ;)
    );
	
   reg x;
   reg sel;
   wire y0, y1;

	
    // Instantiate the DUT
    demux_1bit DEMUX1(
      .x(x),
      .sel(sel),
      .y0(y0),
      .y1(y1)
   );
  
    // Toggle x (data source)
	initial begin
       #1; x = 1; 
       #1; x = 0; 
       #2; x = 1; 
       #1.5; x = 0; 
       #0.5; x = 1; 
       #2;
	end
  
    // Toggle sel (select line)
    initial begin
       #1; sel = 0;
       #1; sel = 1;
       #2; sel = 1;
       #1.8; sel = 0;
       #1; sel = 1;
       #1; sel = 0;
       #5;
    end
	initial begin
	#10 $finish();
	end
endmodule

