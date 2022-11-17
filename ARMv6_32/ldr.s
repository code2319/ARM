.data /* the .data section is dynamically created and its addresses cannot be easily predicted */
var1: .word 3 /* variable 1 in memory */
var2: .word 4 /* variable 2 in memory */

.text /* start of the text(code) section */
.global main

main:
    ldr r0, adr_var1 @ load the memroy address of var1 via label adr_var1 into r0
    ldr r1, adr_var2 @ load the memory address of var2 via label adr_var2 into r1
    ldr r2, [r0] @ load the value (0x03) at memory address found in R0 toregster R2
    str r2, [r1] @ store the value found in R2 (0x03) to the memory address found in R1
    bkpt

adr_var1: .word var1 /* address to var1 stored here */
adr_var2: .word var2 /* address to var2 stored here */
