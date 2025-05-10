.data
ask_name: .asciiz "What's your name? "
hello: .asciiz "Hello "
name: .space 50

.text
main:
    li $v0, 4
    la $a0, ask_name
    syscall

    li $v0, 8 #Read string
    la $a0, name
    li $a1, 50
    syscall
    
    li $v0, 4
    la $a0, hello
    syscall

    la $a0, name
    syscall

    li $v0, 10
    syscall