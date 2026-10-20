`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 21:38:55
// Design Name: 
// Module Name: tb_adder_nbit
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


module tb_adder_nbit();
	
    parameter ADDER_WIDTH = 10;
    reg  [ADDER_WIDTH-1:0] a;
    reg  [ADDER_WIDTH-1:0] b;
    wire [ADDER_WIDTH:0] sum;
	
    // Instantiate the parameterized DUT
    adder_nbit 
    #(.N(ADDER_WIDTH))
    ADDER1
    (
        .a(a),
        .b(b),
        .sum(sum)      
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " a = %d, b = %d, sum = %d", a, b, sum);
        #10; a = 0  ; b = 0  ;
        #20; a = 1  ; b = 99 ;
        #10; a = 33 ; b = 66 ;
        #10; a = 100; b = 47 ;
		#10; $stop;
    end
  
endmodule
