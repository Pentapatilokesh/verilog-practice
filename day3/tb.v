`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 21:23:12
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

behavioural dut(.y(y),.a(a),.b(b));

initial begin

a =0;b=0;
#10
a =0;b=1;
#10
a =1;b=0;
#10
a =1;b=1;

#10 a=0;
#10 $finish();
end
endmodule
