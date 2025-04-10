section .data
    hello_world: ; nuevo símbolo
        db "Hello, world!", 10, 0 ; Mensaje con salto de línea y terminador nulo

section .text
    global _start


_start:
    ; sys_write
    mov rax, 1 ; syscall: sys_write (número 1)
    mov rdi, 1 ; file descriptor: 1 (stdout)
    lea rsi, [hello_world] ; dirección del mensaje
    mov rdx, 14 ; longitud del buffer 
    syscall ; Llamada al sistema

    ; sys_exit
    mov rax, 60 ; syscall: sys_exit (número 60)
    mov rdi, 69 ; código de salida 69
    syscall

