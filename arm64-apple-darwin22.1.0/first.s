.data          /* the .data section is dynamically created and its addresses cannot be easily predicted */
var1: .word 3  /* variable 1 in memory */
var2: .word 4  /* variable 2 in memory */

.text          /* start of the text (code) section */ 
.global _main

_main:
    ldr x0, adr_var1  //@ load the memory address of var1 via label adr_var1 into R0 
    ldr x1, adr_var2  //@ load the memory address of var2 via label adr_var2 into R1 
    ldr x2, [x0]      //@ load the value (0x03) at memory address found in R0 to register R2  
    str x2, [x1]      //@ store the value found in R2 (0x03) to the memory address found in R1 
//    bkpt             

adr_var1: .word var1  /* address to var1 stored here */
adr_var2: .word var2  /* address to var2 stored here */
