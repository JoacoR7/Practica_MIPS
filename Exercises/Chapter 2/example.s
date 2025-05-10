.data


name: .space 50
name_question: .asciiz "What's yout name? "
hello: .asciiz "Hello "
age_question: .asciiz "How old are you? "
height_question: .asciiz "Enter your height in cm: "
ageplusheight: .asciiz "Your age + height = "

.text
main:
    li $v0, 4 # Print string syscall
    la $a0, name_question
    syscall

    li $v0, 8 # Read string
    la $a0, name
    li $a1, 50 # Le aclaro la cantidad de bytes
    syscall

    li $v0, 4
    la $a0, hello
    syscall

    la $a0, name # v0 sigue en 4 (print string)
    syscall

    la $a0, age_question
    syscall

    li $v0, 5 # Read integer
    syscall

    move $t0, $v0 #guardar edad en t0

    li $v0, 4
    la $a0, height_question
    syscall

    li $v0, 5
    syscall

    add $t0, $t0, $v0 # t0 += height
    
    li $v0, 4
    la $a0, ageplusheight
    syscall

    li $v0, 1 # Print integer
    move $a0, $t0
    syscall

    li $v0, 11 # Print char
    li $a0, 10 # valor ascii de \n
    syscall

    li $v0, 10 # exit
    syscall
