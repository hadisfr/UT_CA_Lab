module Instaruction_mem #(parameter n = 32) (
    input clk,
    input rst,
    input [n-1:0] PC,
    output [n-1:0] instruction
);
    reg [n-1:0] _Instaruction_mem [0:60];
    always @(posedge clk) begin
        _Instaruction_mem[00] = 32'b100000_00001_00000_00000_00000001010;//-- Addi  r1,r0,10
        _Instaruction_mem[01] = 32'b000001_00010_00000_00001_00000000000;//-- Add   r2,r0,r1
        _Instaruction_mem[02] = 32'b000011_00011_00000_00001_00000000000;//-- sub   r3,r0,r1
        _Instaruction_mem[03] = 32'b000101_00100_00010_00011_00000000000;//-- And   r4,r2,r3
        _Instaruction_mem[04] = 32'b100001_00101_00000_00000_01000110100;//-- Subi  r5,r0,564
        _Instaruction_mem[05] = 32'b000110_00101_00101_00011_00000000000;//-- or    r5,r5,r3
        _Instaruction_mem[06] = 32'b000111_00110_00101_00000_00000000000;//-- nor   r6,r5,r0
        _Instaruction_mem[07] = 32'b001000_00000_00101_00001_00000000000;//-- xor   r0,r5,r1
        _Instaruction_mem[08] = 32'b001000_00111_00101_00001_00000000000;//-- xor   r7,r5,r0
        _Instaruction_mem[09] = 32'b001001_00111_00100_00010_00000000000;//-- sla   r7,r4,r2
        _Instaruction_mem[10] = 32'b001010_01000_00011_00010_00000000000;//-- sll   r8,r3,r2
        _Instaruction_mem[11] = 32'b001011_01001_00110_00010_00000000000;//-- sra   r9,r6,r2
        _Instaruction_mem[12] = 32'b001100_01010_00110_00010_00000000000;//-- srl   r10,r6,r2
        _Instaruction_mem[13] = 32'b100000_00001_00000_00000_10000000000;//-- Addi  r1,r0,1024
        _Instaruction_mem[14] = 32'b100101_00010_00001_00000_00000000000;//-- st    r2,r1,0
        _Instaruction_mem[15] = 32'b100100_01011_00001_00000_00000000000;//-- ld    r11,r1,0
        _Instaruction_mem[16] = 32'b100101_00011_00001_00000_00000000100;//-- st    r3,r1,4
        _Instaruction_mem[17] = 32'b100101_00100_00001_00000_00000001000;//-- st    r4,r1,8
        _Instaruction_mem[18] = 32'b100101_00101_00001_00000_00000001100;//-- st    r5,r1,12
        _Instaruction_mem[19] = 32'b100101_00110_00001_00000_00000010000;//-- st    r6,r1,16
        _Instaruction_mem[20] = 32'b100101_00111_00001_00000_00000010100;//-- st    r7,r1,20
        _Instaruction_mem[21] = 32'b100101_01000_00001_00000_00000011000;//-- st    r8,r1,24
        _Instaruction_mem[22] = 32'b100101_01001_00001_00000_00000011100;//-- st    r9,r1,28
        _Instaruction_mem[23] = 32'b100101_01010_00001_00000_00000100000;//-- st    r10,r1,32
        _Instaruction_mem[24] = 32'b100101_01011_00001_00000_00000100100;//-- st    r11,r1,36
        _Instaruction_mem[25] = 32'b100000_00001_00000_00000_00000000011;//-- Addi  r1,r0,3
        _Instaruction_mem[26] = 32'b100000_00100_00000_00000_10000000000;//-- Addi  r4,r0,1024
        _Instaruction_mem[27] = 32'b100000_00010_00000_00000_00000000000;//-- Addi  r2,r0,0
        _Instaruction_mem[28] = 32'b100000_00011_00000_00000_00000000001;//-- Addi  r3,r0,1 // GREEN
        _Instaruction_mem[29] = 32'b100000_01001_00000_00000_00000000010;//-- Addi  r9,r0,2 // RED
        _Instaruction_mem[30] = 32'b001010_01000_00011_01001_00000000000;//-- sll   r8,r3,r9
        _Instaruction_mem[31] = 32'b000001_01000_00100_01000_00000000000;//-- Add   r8,r4,r8
        _Instaruction_mem[32] = 32'b100100_00101_01000_00000_00000000000;//-- ld    r5,r8,0
        _Instaruction_mem[33] = 32'b100100_00110_01000_11111_11111111100;//-- ld    r6,r8,-4
        _Instaruction_mem[34] = 32'b000011_01001_00101_00110_00000000000;//-- sub   r9,r5,r6
        _Instaruction_mem[35] = 32'b100000_01010_00000_10000_00000000000;//-- Addi  r10,r0,0x8000
        _Instaruction_mem[36] = 32'b100000_01011_00000_00000_00000010000;//-- Addi  r11,r0,16
        _Instaruction_mem[37] = 32'b001010_01010_01010_01011_00000000000;//-- sll   r10,r10,r11
        _Instaruction_mem[38] = 32'b000101_01001_01001_01010_00000000000;//-- And   r9,r9,r10
        _Instaruction_mem[39] = 32'b101000_00000_01001_00000_00000000010;//-- Bez   r9,2
        _Instaruction_mem[40] = 32'b100101_00101_01000_11111_11111111100;//-- st    r5,r8,-4
        _Instaruction_mem[41] = 32'b100101_00110_01000_00000_00000000000;//-- st    r6,r8,0
        _Instaruction_mem[42] = 32'b100000_00011_00011_00000_00000000001;//-- Addi  r3,r3,1
        _Instaruction_mem[43] = 32'b101001_00011_00001_11111_11111110001;//-- BNE   r3,r1,-15 // RED
        _Instaruction_mem[44] = 32'b100000_00010_00010_00000_00000000001;//-- Addi  r2,r2,1
        _Instaruction_mem[45] = 32'b101001_00010_00001_11111_11111101110;//-- BNE   r2,r1,-18 // GREEN
        _Instaruction_mem[46] = 32'b100000_00001_00000_00000_10000000000;//-- Addi  r1,r0,1024
        _Instaruction_mem[47] = 32'b100100_00010_00001_00000_00000000000;//-- ld    r2,r1,0
        _Instaruction_mem[48] = 32'b100100_00011_00001_00000_00000000100;//-- ld    r3,r1,4
        _Instaruction_mem[49] = 32'b100100_00100_00001_00000_00000001000;//-- ld    r4,r1,8
        _Instaruction_mem[50] = 32'b100100_00101_00001_00000_00000001100;//-- ld    r5,r1,12
        _Instaruction_mem[51] = 32'b100100_00110_00001_00000_00000010000;//-- ld    r6,r1,16
        _Instaruction_mem[52] = 32'b100100_00111_00001_00000_00000010100;//-- ld    r7,r1,20
        _Instaruction_mem[53] = 32'b100100_01000_00001_00000_00000011000;//-- ld    r8,r1,24
        _Instaruction_mem[54] = 32'b100100_01001_00001_00000_00000011100;//-- ld    r9,r1,28
        _Instaruction_mem[55] = 32'b100100_01010_00001_00000_00000100000;//-- ld    r10,r1,32
        _Instaruction_mem[56] = 32'b100100_01011_00001_00000_00000100100;//-- ld    r11,r1,36
        _Instaruction_mem[57] = 32'b101010_00000_00000_11111_11111111111;//-- JMP   -1
    end
    assign instruction = _Instaruction_mem[PC[7:2]];
endmodule