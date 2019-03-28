#USE_INT:
#.set USE_INT,1
#----------------------------------------------------------------------------------------
# aaa .def .endef doesn't work for me, remove comment of any one of the above two lines will
# build a program using int. leave both of the above two lines commented will build one
# using syscall 
#----------------------------------------------------------------------------------------

.section .data
msg_int: .ascii "Hello World int!\n"
msg_syscall: .ascii "Hello World syscall!\n"

.section .text

	.global _start

.ifdef USE_INT 
#use int
_start:
	movl $4, %eax   # use the write syscall
    movl $1, %ebx   #write to stdout
    movl $msg_int, %ecx #use string "Hello World"
    movl $17, %edx  #write 13 characters
    int $0x80       #make syscall
    
    movl $1, %eax   #use the _exit syscall
    movl $1, %ebx   #error code 1
    int $0x80       #make syscall

.else

_start:
#use syscall
    movq $1, %rax   #use the write syscall
    movq $1, %rdi   #write to stdout
    movq $msg_syscall, %rsi #use string "Hello World"
    movq $21, %rdx  #write 13 characters
    syscall         #make syscall
    
    movq $60, %rax  #use the _exit syscall
    movq $2, %rdi   #error code 2
    syscall         #make syscall

.endif