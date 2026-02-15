; hello.asm
section .data
    message db "Hello, World!", 10
    length equ $ - message

section .text
    global _start

_start:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, message    ; address of message
    mov rdx, length     ; length
    syscall

    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; status 0
    syscall
