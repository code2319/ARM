.global _main

_main:
    mov w0, pc
    mov w1, #2
    add w2, w1, w1
    brk #0
    ret
