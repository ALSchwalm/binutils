#source: load1.s
#as: --x32
#ld: -melf32_x86_64
#objdump: -dw --sym
#target: x86_64-*-nacl*

.*: +file format .*

SYMBOL TABLE:
#...
10030090 l     O .data	0+1 bar
#...
10030091 g     O .data	0+1 foo
#...

Disassembly of section .text:

0+20000 <_start>:
 +[a-f0-9]+:	81 d0 90 00 03 10    	adc    \$0x10030090,%eax
 +[a-f0-9]+:	81 c3 90 00 03 10    	add    \$0x10030090,%ebx
 +[a-f0-9]+:	81 e1 90 00 03 10    	and    \$0x10030090,%ecx
 +[a-f0-9]+:	81 fa 90 00 03 10    	cmp    \$0x10030090,%edx
 +[a-f0-9]+:	81 ce 90 00 03 10    	or     \$0x10030090,%esi
 +[a-f0-9]+:	81 df 90 00 03 10    	sbb    \$0x10030090,%edi
 +[a-f0-9]+:	81 ed 90 00 03 10    	sub    \$0x10030090,%ebp
 +[a-f0-9]+:	41 81 f0 90 00 03 10 	xor    \$0x10030090,%r8d
 +[a-f0-9]+:	41 f7 c7 90 00 03 10 	test   \$0x10030090,%r15d
 +[a-f0-9]+:	48 81 d0 90 00 03 10 	adc    \$0x10030090,%rax
 +[a-f0-9]+:	48 81 c3 90 00 03 10 	add    \$0x10030090,%rbx
 +[a-f0-9]+:	48 81 e1 90 00 03 10 	and    \$0x10030090,%rcx
 +[a-f0-9]+:	48 81 fa 90 00 03 10 	cmp    \$0x10030090,%rdx
 +[a-f0-9]+:	48 81 cf 90 00 03 10 	or     \$0x10030090,%rdi
 +[a-f0-9]+:	48 81 de 90 00 03 10 	sbb    \$0x10030090,%rsi
 +[a-f0-9]+:	48 81 ed 90 00 03 10 	sub    \$0x10030090,%rbp
 +[a-f0-9]+:	49 81 f0 90 00 03 10 	xor    \$0x10030090,%r8
 +[a-f0-9]+:	49 f7 c7 90 00 03 10 	test   \$0x10030090,%r15
 +[a-f0-9]+:	81 d0 91 00 03 10    	adc    \$0x10030091,%eax
 +[a-f0-9]+:	81 c3 91 00 03 10    	add    \$0x10030091,%ebx
 +[a-f0-9]+:	81 e1 91 00 03 10    	and    \$0x10030091,%ecx
 +[a-f0-9]+:	81 fa 91 00 03 10    	cmp    \$0x10030091,%edx
 +[a-f0-9]+:	81 ce 91 00 03 10    	or     \$0x10030091,%esi
 +[a-f0-9]+:	81 df 91 00 03 10    	sbb    \$0x10030091,%edi
 +[a-f0-9]+:	81 ed 91 00 03 10    	sub    \$0x10030091,%ebp
 +[a-f0-9]+:	41 81 f0 91 00 03 10 	xor    \$0x10030091,%r8d
 +[a-f0-9]+:	41 f7 c7 91 00 03 10 	test   \$0x10030091,%r15d
 +[a-f0-9]+:	48 81 d0 91 00 03 10 	adc    \$0x10030091,%rax
 +[a-f0-9]+:	48 81 c3 91 00 03 10 	add    \$0x10030091,%rbx
 +[a-f0-9]+:	48 81 e1 91 00 03 10 	and    \$0x10030091,%rcx
 +[a-f0-9]+:	48 81 fa 91 00 03 10 	cmp    \$0x10030091,%rdx
 +[a-f0-9]+:	48 81 cf 91 00 03 10 	or     \$0x10030091,%rdi
 +[a-f0-9]+:	48 81 de 91 00 03 10 	sbb    \$0x10030091,%rsi
 +[a-f0-9]+:	48 81 ed 91 00 03 10 	sub    \$0x10030091,%rbp
 +[a-f0-9]+:	49 81 f0 91 00 03 10 	xor    \$0x10030091,%r8
 +[a-f0-9]+:	49 f7 c7 91 00 03 10 	test   \$0x10030091,%r15
#pass
