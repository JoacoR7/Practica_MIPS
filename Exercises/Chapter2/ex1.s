.data
golden: .float 1.618
gas_price: .asciiz "Enter what the price of gas was last time you filled up: "
expensive: .asciiz " is too expensive!"
golden_ratio: .asciiz "The golden ratio is roughly "
integer_return: .asciiz "Enter an integer for the program to return "

.text
main:
    li $v0, 4
    la $a0, gas_price
    syscall

    li $v0, 5
    syscall

    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 4
    la $a0, expensive
    syscall

    li $v0, 11
    la $a0, 10
    syscall

    li $v0, 4
    la $a0, golden_ratio
    syscall

    la $t0, golden        # Cargar la dirección de 'golden'
    l.s $f12, 0($t0)      # Cargar el valor de 'golden' en el registro flotante

    li $v0, 2             # Syscall para imprimir un float
    syscall

    li $v0, 11
    la $a0, 10
    syscall

    li $v0, 4
    la $a0, integer_return
    syscall

    li $v0, 5
    syscall

    move $a0, $v0
    li $v0, 1
    syscall

    # Terminar el programa
    li $v0, 10            # Código de salida del programa
    syscall