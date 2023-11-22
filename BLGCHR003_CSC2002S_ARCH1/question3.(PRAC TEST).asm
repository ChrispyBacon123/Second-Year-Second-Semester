# Program to take in a string, split it in 2 and then conbine the strings with alternating characters
# doggies -> dgoiges

.data
    inhead: .asciiz "Enter a string:\n"
    outhead: .asciiz "The result is:\n"
    input: .space 200
    result: .space 200
    word1: .space 200
    word2: .space 200


.text
main:
    #Input
    li $v0, 4
    la $a0, inhead
    syscall

    li $v0, 8
    la $a0, input 
    li $a1, 200
    syscall

    la $s0, input

loopCount:
    lb $t3, ($s0)
    beqz $t3, endLoopCount
    addi $t4, $t4, 1
    addi $s0, $s0,1
    j loopCount

endLoopCount:
    sub $t4, $t4,1
    div $t5, $t4,2
    la $s0, input
    la $s1, word1
    la $s2, word2
    
    sub $t3, $t3, $t3






getWord1: 
    beq $t7, $t5, endWord1
    lb $t3, ($s0)
    addi $t7,$t7,1
    sb $t3, ($s1)
    addi $s1, $s1, 1
    addi $s0, $s0, 1
    j getWord1

endWord1:
    move $t3, $t5
    sub $t4, $t4,1
    sub $t7, $t7,1


getWord2:
    beq $t7, $t4, endWord2
    lb $t3, ($s0)
    addi $t7,$t7,1
    sb $t3, ($s2)
    addi $s2, $s2, 1
    addi $s0, $s0, 1
    j getWord2

endWord2:
    sub $t7, $t7,$t7
    sub $t3, $t3, $t3
    addi $t5, $t5, 10
    la $s3, result
    la $s1, word1
    la $s2, word2


combine:
    beq $t7, $t5, outp
    addi $t7,$t7,1
    lb $t3, ($s2)
    sb $t3, ($s3) 
    addi $s2, $s2, 1
    addi $s3, $s3, 1

    lb $t3, ($s1)
    sb $t3, ($s3) 
    addi $s1, $s1, 1
    addi $s3, $s3, 1

    j combine











outp:
    li $v0, 4
    la $a0, outhead
    syscall

    li $v0, 4
    la $a0, result
    syscall








li $v0,10
syscall