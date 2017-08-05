global start


section .text

start:

    mov     rax, 0x2000004 	; write call
    mov     rdi, 1 		; stdout
    mov     rsi, msg
    mov     rdx, msg.len
    syscall

    mov     rax, 0x2000001 	; exit call
    mov     rdi, 0
    syscall


section .data

msg:    db      "Hi!", 53
.len:   equ     $ - msg
