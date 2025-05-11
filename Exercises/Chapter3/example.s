.data
a: .half 10

.text
main:

    la $t0, a         # Dirección de 'a'
    lh $t1, 0($t0)    # Cargar valor de 'a'

    ble $t1, $0, skip_increment
    addi $t1, $t1, 1  # a++

skip_increment:
    sll $t1, $t1, 1   # a *= 2
    sh  $t1, 0($t0)   # Guardar resultado en 'a'

    li $v0, 1         # syscall para imprimir entero
    move $a0, $t1     # pasar valor a imprimir
    syscall

    li $v0, 10        # salir
    syscall
