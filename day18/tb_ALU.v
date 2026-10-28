`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2026 22:27:34
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU();
	
	// Testbench variables
    parameter BUS_WIDTH = 8;
    reg  [3:0] opcode;
    reg [BUS_WIDTH-1:0] a, b;
    reg carry_in;
    wire [BUS_WIDTH-1:0] y;
    wire carry_out;
    wire borrow;
    wire zero;
    wire parity;
    wire invalid_op;

    // Instantiate the DUT 
    ALU
    // Parameters section
    #(.BUS_WIDTH(BUS_WIDTH))
    ALU0
   (.a(a),
   .b(b),
   .carry_in(carry_in),
   .opcode(opcode),
   .y(y),
   .carry_out(carry_out),
   .borrow(borrow),
   .zero(zero),
   .parity(parity),
   .invalid_op(invalid_op)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " opcode = %d, a = %d, b = %d, y = %d, carry_out=%b, borrow=%b, zero=%b, parity=%b, invalid_op=%b", 
	                  opcode, a, b, y, carry_out, borrow, zero, parity, invalid_op);
        #10; opcode = 0; // 
        // Test OP_ADD
        #10 opcode = 1; a = 9; b = 33; carry_in = 0; 
        // Test OP_ADD_CARRY
        #10 opcode = 2; a = 9; b = 33; carry_in = 1; 
        // Test OP_SUB
        #10 opcode = 3; a = 65; b = 64; carry_in = 0; 
        #10 opcode = 3; a = 65; b = 66; carry_in = 0; 
        // Test OP_INC
        #10 opcode = 4; a = 233; b = 69; carry_in = 1; 
        // Test OP_DEC
        #10 opcode = 5; a = 0; b = 3; carry_in = 0; 
        // Test OP_AND
        #10 opcode = 6; a = 8'b0000_0010; b = 8'b0000_0011; 
        // Test OP_NOT
        #10 opcode = 7; a = 8'b1111_1111;  
        // Test OP_ROL
        #10 opcode = 8; a = 8'b0000_0001; 
        // Test OP_ROR
        #10 opcode = 9; a = 8'b1000_0000;
        #10 $stop;
    end
  
endmodule 

