`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2026 22:22:26
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
reg a,b;
wire y;

and_glm dut (y,a,b);

initial begin
a=0;b=0;
#10
b=1;
#10
a=1;b=0;
#10
b=1;
#10;
$finish;
end

endmodule
