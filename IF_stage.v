`include "Adder.v"
`include "Reg.v"
`include "Instaruction_mem.v"

module IF_stage (
    input clk,    // Clock
    input rst,  // Asynchronous reset active high
    //input Br_taken,
    //input [15:0] Br_offset,
    output [31:0] PC,
    output [31:0] Instruction
);
    wire [31:0] PC_in;
    Adder #(32) PC_Adder(PC, 32'd4, PC_in);
    Reg #(32) PC_mem(clk, ~rst, 1, PC_in, PC);
    Instaruction_mem instaruction_mem(PC, Instruction);
endmodule