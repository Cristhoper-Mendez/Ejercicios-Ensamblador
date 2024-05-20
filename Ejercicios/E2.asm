section .data
    x db 3
    z db 2
    msg db  "La multiplicacion de x & z es "
    len equ $ - msg
    result db 0

segment .bss

section .text
    global _start

_start:
    mov     ax, [x] ; Asignar x a ax
    
    mov     cx, [z] ; Asignar z a cx
    
    mul     cx ; Realizar multiplicacion x * z

    add     ax, 48
    mov     [result], ax ; Asignar valor de la operacion a result

    mov     ecx, msg
    mov     edx, len
    mov     ebx, 1
    mov     eax, 4
    int     0x80 ; Mostrar primer mensaje

    mov     ecx, result
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80 ; Mostrar resultado de la operacion

    mov     eax, 1
    int     0x80 ; Salir del programa


