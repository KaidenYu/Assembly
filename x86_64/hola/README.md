use 
```
gcc hola.o -o hola
```

instead of
```
ld hola.o -o hola
```


cuz use ld shit happens
```
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/hola$ ld hola.o -o hola
ld: warning: cannot find entry symbol _start; defaulting to 00000000004000b0
hola.o: In function `main':
(.text+0x8): undefined reference to `puts'

```

if you want to do the linking with ld, you need to add a lot of things(paths and stuff) like following
```
ld -static -o hello -L`gcc -print-file-name=` /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crt1.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crti.o hello.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crtn.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/crtbeginT.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/crtend.o --start-group -lc -lgcc -lgcc_eh --end-grou
```
you can find out wat to add by using gcc -v
```
gcc -static -o a.out hello.o -v
```

### [--- a post dicussing ld and gcc ---](https://stackoverflow.com/questions/6754259/how-to-call-the-c-library-from-assembly-code-on-linux)

---
## using as and gcc -c
- as
```
as hola.s -o hola_as.o
objdump -Slz hola_as.o
```
```
hola_as.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
main():
   0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   7:	e8 00 00 00 00       	callq  c <main+0xc>
   c:	c3                   	retq  
```
- gcc -c
```
gcc -c hola.s -o hola_gcc.o
objdump -Slz hola_gcc.o
```
```
hola_gcc.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
main():
   0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   7:	e8 00 00 00 00       	callq  c <main+0xc>
   c:	c3                   	retq 
```

the results are identical

---
about 
```
ld: warning: cannot find entry symbol _start; defaulting to 00000000004000b0
```
we can see that there is no _start in hola.s(only main)
the default entry point of the default linker script is _start

how to check default linker script
```javascript
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/hola$ ld --verbose
GNU ld (GNU Binutils for Ubuntu) 2.26.1
  Supported emulations:
   elf_x86_64
   elf32_x86_64
   elf_i386
   elf_iamcu
   i386linux
   elf_l1om
   elf_k1om
   i386pep
   i386pe
using internal linker script:
==================================================
/* Script for -z combreloc: combine and sort reloc sections */
/* Copyright (C) 2014-2015 Free Software Foundation, Inc.
   Copying and distribution of this script, with or without modification,
   are permitted in any medium without royalty provided the copyright
   notice and this notice are preserved.  */
OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64",
	      "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)
SEARCH_DIR("=/usr/local/lib/x86_64-linux-gnu"); SEARCH_DIR("=/lib/x86_64-linux-gnu"); SEARCH_DIR("=/usr/lib/x86_64-linux-gnu"); SEARCH_DIR("=/usr/local/lib64"); SEARCH_DIR("=/lib64"); SEARCH_DIR("=/usr/lib64"); SEARCH_DIR("=/usr/local/lib"); SEARCH_DIR("=/lib"); SEARCH_DIR("=/usr/lib"); SEARCH_DIR("=/usr/x86_64-linux-gnu/lib64"); SEARCH_DIR("=/usr/x86_64-linux-gnu/lib");
SECTIONS
{
  /* Read-only sections, merged into text segment: */
  ...
  ...
  ...
}
```



