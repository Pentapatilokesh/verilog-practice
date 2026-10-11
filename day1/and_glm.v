`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2026 22:18:49
// Design Name: 
// Module Name: and_glm
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


module and_glm(output y, input a,b);

/*
not N3(y,a);
or O1(y,a,b);
nor N1(y,a,b);
nand N2(y,a,b);
xor X1 (y,a,b);
xnor X2(y,a,b);
*/
and A1(y,a,b);
endmodule
