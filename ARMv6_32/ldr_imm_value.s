.section .text
.global main

main:
    mov r0, #256 @ 1 ror 24 = 256, so it's valid
    add r0, #255 @ 255 ror 0 = 255, valid. r0 = 256+255=511
    ldr r1, =511 @ load 511 from the liter pool using LDR
    bkpt
