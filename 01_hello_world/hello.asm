section .data
    msg:
        db   "hello world!", 0      ; ends with NULL
section .bss
section .text
    global _main
_main:
    mov     rax, 0x2000004                 ; macOS write syscall
    mov     rdi, 1                         ; stdout
    mov     rsi, msg                       ; the message address
    mov     rdx, 12                        ; the message length
    syscall                                ; display the message
    mov     rax, 0x2000001                 ; macOS exit syscall
    mov     rdi, 0                         ; exit code is zero
    syscall
