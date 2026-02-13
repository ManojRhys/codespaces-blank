.section .data
msg:
    .ascii "Hello, How are you doing!\n"
len = . - msg

.section .text
.global _start
_start:
    mov $1, %rax          # syscall: write
    mov $1, %rdi          # fd = 1 (stdout)
    lea msg(%rip), %rsi   # buf = &msg
    mov $len, %rdx        # count = len
    syscall

    mov $60, %rax         # syscall: exit
    mov $0, %rdi          # status = 0
    syscall
