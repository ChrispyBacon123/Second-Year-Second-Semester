.data 
 saying: .asciiz "This works!\nI am very happy with this!"

.text
.globl main
main:
    li $v0, 4
    la $a0, saying
    syscall

li $v0, 10
syscall
