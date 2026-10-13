`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 21:17:58
// Design Name: 
// Module Name: behavioural
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


module behavioural(output reg y, input a,b);
always@(*)begin  // * is a wild card operator which implies all the inut ports
y = a^b;

/*
always@(a,b)begin
y = a&b;
y = a|b;
y = a~^b;
y = ~(a|b);
y = ~(a&b);
end

always@(a)begin
y = ~a;
end

*/




end
endmodule
