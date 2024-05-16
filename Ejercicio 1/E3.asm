section .data
    x dd 6
    z dd 2
    msg db  "La division de x & z es "
    len equ $ - msg
    result dd 0

segment .bss

section .text
    global _start

_start:
    mov     ah, [x] ; Asignar x a ax
    
    mov     cx, [z] ; Asignar z a cx
    
    div     cx ; Realizar division ah * cx

    add     ah, 48
    mov     [result], ah ; Asignar valor de la operacion a result

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


