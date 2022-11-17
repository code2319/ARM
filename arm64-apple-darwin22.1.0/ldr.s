.data
var1: .word 123
var2: .word 456

.text
.global _main

_main:
    ldr x0, addr_var1
    ldr x1, addr_var2
    ldr x2, [x0]
    str x2, [x1, #2]
    str x2, [x1, #4]!
    ldr x3, [x1], #4
    brk #0

addr_var1: .word var1
addr_var2: .word var2
