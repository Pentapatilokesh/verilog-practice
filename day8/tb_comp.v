`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2026 20:19:46
// Design Name: 
// Module Name: tb_comp
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



module tb_comp(
    // no inputs here ;)
    );
	
    reg a, b;
    wire smaller, greater, equal;
	
    // Instantiate the DUT
    comparator_1bit CMP1(
      .a(a),
      .b(b),
      .smaller(smaller),
      .equal(equal),
      .greater(greater)
    );
   
    initial begin
       $monitor(" a = %b, b = %b, smaller = %b, equal = %b, greater = %b",
				  a, b, smaller, equal, greater);
       #10; a = 0; b = 0;
       #10; a = 1; b = 0;
       #10; a = 1; b = 0;
       #10; a = 0; b = 1;
       #10; a = 1; b = 1;      
       #10; $stop;
    end
  
endmodule
