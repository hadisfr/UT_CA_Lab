Addi r1,r0,10
Add  r2,r0,r1
sub r3,r0,r1
And r4,r2,r3
Subi r5,r0,564
or r5,r5,r3
nor  r6,r5,r0
xor r0,r5,r1
xor r7,r5,r0 
sla r7,r4,r2 
sll r8,r3,r2 
sra r9,r6,r2 
srl r10,r6,r2 
Addi  r1,r0,1024 
st r2,r1,0 
ld r11,r1,0 
st r3,r1,4 
st r4,r1,8 
st r5,r1,12 
st r6,r1,16 
st r7,r1,20 
st r8,r1,24 
st r9,r1,28 
st r10,r1,32 
st r11,r1,36 
Addi  r1,r0,3 
Addi r4,r0,1024 
Addi  r2,r0,0 
Addi  r3,r0,1 
Addi  r9,r0,2 
sll r8,r3,r9 
Add  r8,r4,r8 
ld r5,r8,0 
ld r6,r8,-4 
sub  r9,r5,r6 
Addi  r10,r0,0x8000 
Addi r11,r0,16 
sll r10,r10,r11 
And  r9,r9,r10 
Bez r9,2 
st r5,r8,-4 
st r6,r8,0 
Addi  r3,r3,1 
BNE r3,r1,-15 
Addi  r2,r2,1 
BNE r2,r1,-18 
Addi  r1,r0,1024 
ld r2,r1,0 
ld r3,r1,4 
ld r4,r1,8 
ld r5,r1,12 
ld r6,r1,16 
ld r7,r1,20 
ld r8,r1,24 
ld r9,r1,28 
ld r10,r1,32 
ld r11,r1,36 
JMP  -4