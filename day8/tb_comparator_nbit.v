`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 21:11:43
// Design Name: 
// Module Name: tb_comparator_nbit
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


module tb_comparator_nbit();
	
    parameter CMP_WIDTH = 12;
    reg  [CMP_WIDTH-1:0] a;
    reg  [CMP_WIDTH-1:0] b;
    wire smaller;
    wire equal;
    wire greater;
	
    // Instantiate the parameterized DUT
    comparator_nbit 
    #(.N(CMP_WIDTH))
    CMP1
    (
        .a      (a      ),
        .b      (b      ),
        .smaller(smaller),
        .equal  (equal  ),
        .greater(greater)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " a = %d, b = %d, smaller = %d, equal = %d, greater = %d",
                        a, b, smaller, equal, greater);
        #10; a = 0  ; b = 0  ;
        #20; a = 5  ; b = 99 ;
        #10; a = 66 ; b = 66 ;
        #10; a = 100; b = 47 ;
		#10; $stop;
    end
  
endmodule
