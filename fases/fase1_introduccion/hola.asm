section .data
    mensaje db "Hola, mundo", 10  ; Mensaje con salto de línea
    len equ $ - mensaje            ; Longitud del mensaje

section .text
    global _start

_start:
    ; Llamada al sistema sys_write (imprimir en pantalla)
    mov rax, 1      ; syscall: sys_write (número 1)
    mov rdi, 1      ; file descriptor: 1 (stdout)
    mov rsi, mensaje ; dirección del mensaje
    mov rdx, len    ; longitud del mensaje
    syscall         ; Llamada al sistema

    ; Llamada al sistema sys_exit (terminar programa)
    mov rax, 60     ; syscall: sys_exit (número 60)
    xor rdi, rdi    ; Código de salida 0
    syscall         ; Llamada al sistema para salir
