.data
points: .space 6000         # 500 puntos * 12 bytes (cada punto tiene 3 floats)

.text
.globl main # accesible fuera del archivo
main:
    li $t1, 3               # Cargar el índice i = 3 (por ejemplo) t es registro temporal
    
    li $t2, 12              # Cada struct point ocupa 12 bytes (3 floats)
    mul $t3, $t1, $t2       # offset = i * 12

    la $t0, points          # $t0 = dirección base del array
    add $t0, $t0, $t3       # $t0 ahora apunta a points[i]

    lwc1 $f0, 0($t0)        # Cargar x en $f0, load world c1 (coma flotante)
    lwc1 $f1, 4($t0)        # Cargar y en $f1
    lwc1 $f2, 8($t0)        # Cargar z en $f2

    # Aquí podrías usar x, y, z en $f0, $f1, $f2

    # Bucle infinito para evitar terminar el programa (en QtSPIM o Mars)
end:
    j end
