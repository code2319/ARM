.data
var1: .word 3
var2: .word 4

.text
.global main

main:
    ldr r0, adr_var1 @ load the memory address of var1 via label adr_var1 into R0
    ldr r1, adr_var2
    ldr r2, [r0] @ load the value at memory address found in R0 to register R2
    str r2, [r1, #2] @ address mode: offset. Store the value found in R2 to the memory address found in *R1 plus 2*. Base register (R1) unmodified.
    str r2, [r1, #4]! @ address mode: pre-indexed. Store the value found in R2 (0x03) to the memory address found in *R1 plus 4*. Base register (R1) modified: R1 = R1+4
    ldr r3, [r1], #4 @ address mode: post-indexed. Load the value at memory address found in R1 to register *R3*. Base register (R1) modified: R1 = R1+4
    bkpt

adr_var1: .word var1
adr_var2: .word var2
