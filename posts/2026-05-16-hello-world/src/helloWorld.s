# helloWorld.s
.section .data
msg:
  .asciz "hello world\n"
  len = . - msg

.section .text
.global _start
_start:
  movq $1, %rax # syscall 1 is write
  movq $1, %rdi # fd 1 is stdout
  movq $msg, %rsi # pointer to the message
  movq $len, %rdx # the length of the message
  syscall

exit:
  mov $60, %rax
  xor %rdi, %rdi
  syscall
