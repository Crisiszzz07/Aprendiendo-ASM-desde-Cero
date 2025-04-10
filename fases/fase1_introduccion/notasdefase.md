### **Fase 1: Introducción suave y segura**  
#### **Proyecto: Hello, world!**

Comparando la syscall para el sys_exist entre [El primer código](/fases/fase1_introduccion/hola.asm) y el [segundo](/fases/fase1_introduccion/helloworld2.asm) noto que:

1. En [helloworld2.asm](/fases/fase1_introduccion/helloworld2.asm):
```nasm
mov rax, 60 ; syscall: sys_exit (número 60)
mov rdi, 69 ; syscall: sys_msgsnd (número 69)
syscall
```
- El registro `rdi` se coloca a 69 antes de llamar al `sys_exit`. Eso sinifica que el problema va a hacer el exit con un código de `69`.
- El código de exit es usualmente usado para indicar el estado de terminación de un programa, donde el `0` suele indicar que el programa terminó con un éxito, y valores que no seean 0, indican errores o condiciones específicas. El `69` es un exit code personalizado. En [Syscall Linux table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/) indica sys_msgsnd.

2. En [hola.asm](/fases/fase1_introduccion/hola.asm)
```nasm
mov rax, 60     ; syscall: sys_exit (número 60)
xor rdi, rdi    ; Código de salida 0
syscall
```
- Se usa `xor rdi, rdi` para configurar el registro `rdi` como `0` antes de llamar al `sys_exit`. Eso significa que el programa va a terminar con un exit code de 0, que convencionalmente indica éxito en su ejecución.


### Resumen:

- En [helloworld2.asm](/fases/fase1_introduccion/helloworld2.asm), el código de salida se establece explícitamente en 69.  
- En [hola.asm](/fases/fase1_introduccion/hola.asm), el código de salida se configura en 0 utilizando `xor rdi, rdi`, que es una forma común y eficiente de indicar éxito.

---
#### Errores notados:

1. Usé en [helloworld2.asm](/fases/fase1_introduccion/helloworld2.asm) `asciz`, NASM no reconoce la directiva .asciz. Esa es una directiva usada en GAS (GNU Assembler), no en NASM.

    Solución:

    ```nasm
    hello_world:
    db "Hello, world!", 10, 0
    ```
    En NASM, para declarar una cadena terminada en null (\0), debes hacerlo con db (define byte) y añadir manualmente el null al final:

    - `10`: salto de línea (\n)
    - `0` es el byte nulo (\0) para terminar la cadena.

### Contenido que visité:
- [Assembly programming](https://www.tutorialspoint.com/assembly_programming/assembly_introduction.html)