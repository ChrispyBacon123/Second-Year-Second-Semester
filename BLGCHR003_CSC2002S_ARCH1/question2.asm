.data 
    heading: .asciiz "Enter a dividend and divisor:\n"
    quotient: .asciiz "Quotient:\n"
    remainder: .asciiz "Remainder:\n"
    newLine: .asciiz "\n"
    PerfectDiv: .asciiz "\nThe numbers are perfect factor!"
    WrongLbl: .asciiz "You can't divide by 0!\n"

.text 
.globl main 
main:


    li $v0,4
    la $a0, heading
    syscall

    li $v0,5
    syscall

    move $t0, $v0

    li $v0,5
    syscall

    move $t1, $v0

   
    div $t0, $t1
    mflo $t3
    mfhi $t4

    li $v0,4
    la $a0, quotient
    syscall

    li $v0,1
    add $a0, $zero, $t3
    syscall

    li $v0,4
    la $a0, newLine
    syscall

    li $v0,4
    la $a0, remainder
    syscall

    li $v0,1
    add $a0, $zero, $t4
    syscall



li $v0,10
syscall

Perfect: 
    li $v0,4
    la $a0, PerfectDiv
    syscall
    
    li $v0,10
    syscall

Wrong:
    li $v0 ,4 
    la $a0, WrongLbl
    syscall

    li $v0,10
    syscall



