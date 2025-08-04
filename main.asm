BITS 64

GLOBAL _start
SECTION .data
    msg DB "Hello, World!", 0xA
    msg_len EQU $ - msg

SECTION .text
_start:
    MOV RAX, 1 ; sys_write
    MOV RDX, 1
    MOV RSI, msg
    MOV RDX, msg_len
    SYSCALL

    MOV RAX, 60 ; sys_exit
    MOV RDX, 0
    SYSCALL