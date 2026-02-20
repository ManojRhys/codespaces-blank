.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram          # Make function visible to C program

fill_ram:
    mov $ram, %edi
    add $0x50, %rdi        

    movb $0xFF, (%rdi)     # RAM[0x50]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x51]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x52]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x53]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x54]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x55]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x56]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x57]
    inc %rdi

    movb $0xFF, (%rdi)     # RAM[0x58]

    ret                    # Return to C

.section .note.GNU-stack,"",@progbits