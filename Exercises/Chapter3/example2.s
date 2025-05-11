.data
true_str: .asciiz "true\n"

.text
    # Valores de a, b y c
    li $t0, 11 # a
    li $t1, 20 # b
    li $t2, 15 # c

    # Valores de los condicionales
    li $t8, 10 
    li $t9, 100

    bgt $t0, $t8, do_true # if (a > 10) then goto do_true
    ble $t2, $t9, done_if # if (c <= 100) then goto done_if
    blt $t1, $t2, done_if # if (b < c) then goto done_if

do_true:
    li $v0, 4
    la $a0, true_str
    syscall

done_if:
    ori $t1, $t1, 0xAA # or bit a bit

    li $v0, 10
    syscall