section .data
    x dw '7'
    y dw '2'
    z dw '1'
    msg db  "Resultado de restar 7, 2 y 1 es:", 10
    len equ $ - msg

segment .bss

    result resb 1

section .text
    global _start

_start:
    mov     eax, [x] ; Asignar x a eax
    sub     eax, '0'
    mov     ebx, [y] ; Asignar y a ebx
    sub     ebx, '0'
    sub     eax, ebx ; Realizar resta x - y
    add     eax, '0'

    mov     [result], eax ; Asignar valor de la operacion a result

    mov     eax, [result]
    mov     ebx, [z]
    sub     ebx, '0'
    sub     eax, ebx

    mov [result], eax

    mov     ecx, msg
    mov     edx, len
    mov     ebx, 1
    mov     eax, 4
    int     0x80 ; Mostrar primer mensaje de resta

    mov     ecx, result
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80 ; Mostrar resultado de la operacion

    mov     eax, 1
    int     0x80 ; Salir del programa


