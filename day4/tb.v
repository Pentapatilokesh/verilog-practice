`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 21:39:31
// Design Name: 
// Module Name: tb
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


module tb();
wire y;
reg a,b,sel;

mux_2_1 dut(y,a,b,sel);

initial begin
sel=0;a=0;b=0;
#10;
sel=0;a=0;b=1;
#10;
sel=0;a=1;b=0;
#10;
sel=0;a=1;b=1;
#10;
sel=1;a=0;b=0;
#10;
sel=1;a=0;b=1;
#10;
sel=1;a=1;b=0;
#10;
sel=1;a=1;b=1;

$finish();

end

endmodule
