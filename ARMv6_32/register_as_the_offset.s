.data
var1: .word 3
var2: .word 4

.text
.global main

main:
    ldr r0, adr_var1 @load the memroy addr of var1 via label adr_var1 to R0
    ldr r1, adr_var2
    ldr r2, [r0] @ load the value at memory addr found in R0 to R2
    str r2, [r1, r2] @ addr mode: offset. Store the value found in R2 to the memory addr found in R1 with the offset R2. Base register unmodified
    str r2, [r1, r2]! @ addr mode: pre-indexed. Store value found in R2 to the memory addr found in R1 with the offset R2. Base register modified: R1 = R1+R2
    str r2, [r1], r2 @ addr mode: post-indexed. Load value at memory addr found in R1 to register R3. Then modify base register: R1 = R1+R2
    bx lr

adr_var1: .word var1
adr_var2: .word var2
