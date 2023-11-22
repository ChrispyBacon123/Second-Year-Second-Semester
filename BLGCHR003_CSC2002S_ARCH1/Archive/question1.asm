.data
    firstLine: .asciiz "Enter three lines of text:\n"
    secondLine: .asciiz "The lines reversed are:\n"
    inp1: .space 100
    inp2: .space 100
    inp3: .space 100


.text 
.globl main
main:

    #Displaying input prompt
    li $v0, 4
    la $a0, firstLine
    syscall

    #Inputting data
    li $v0,8
    la $a0, inp1
    li $a1, 100
    syscall

    li $v0,8
    la $a0, inp2
    li $a1, 100
    syscall

    li $v0,8
    la $a0, inp3
    li $a1, 100
    syscall


    #Outputting data 
    li $v0, 4
    la $a0, secondLine
    syscall

    li $v0, 4
    la $a0, inp3
    syscall

    li $v0, 4
    la $a0, inp2
    syscall

    li $v0, 4
    la $a0, inp1
    syscall

li $v0, 10
syscall