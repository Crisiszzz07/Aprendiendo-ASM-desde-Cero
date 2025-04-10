# Aprendiendo-ASM-desde-Cero

Este repositorio es mi bitácora de aprendizaje de lenguaje ensamblador (NASM) enfocado en Linux estructurado en fases para facilitar el seguimiento.

## Estructura del repo

- `fases/`: actividades, notas y programas por cada etapa de aprendizaje.
- `proyectos/`: proyectos complementarios para reforzar lógica, visualización y conexión con mis otros desarrollos.
- `extras/`: resúmenes visuales, scripts de automatización y cheatsheets útiles.

## Fases

- **Fase 1 - Introducción Suave y Segura**  
  Fundamentos de ensamblador, primeras líneas de código y syscalls básicas.
- **Fase 2 - Syscalls y Sistemas Operativos**  
  Relación con SO, entrada/salida, interoperabilidad con C.
- **Fase 3 - Hackear sin Romper**  
  Seguridad, debugging, exploits controlados.

## Estado actual

- [ ] Fase 1 completada
- [ ] Fase 2 en progreso
- [ ] Fase 3 pendiente

## Herramientas

- Ubuntu, VSCode, NASM
- Python para automatización
- GDB, objdump, `strace`
- [Syscall Linux table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)

## Cómo ejecutar un ejemplo

```bash
nasm -f elf64 ejemplo.asm -o ejemplo.o
ld ejemplo.o -o ejemplo
./ejemplo
```
