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

if you want to linking with ld, you need to add things like following
```
ld -static -o hello -L`gcc -print-file-name=` /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crt1.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crti.o hello.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/../../../x86_64-linux-gnu/crtn.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/crtbeginT.o /usr/lib/gcc/x86_64-linux-gnu/4.4.7/crtend.o --start-group -lc -lgcc -lgcc_eh --end-grou
```
you can find out wat to add by using gcc -v
```
gcc -static -o a.out hello.o -v
```

# [ a post dicussing ld and gcc ](https://stackoverflow.com/questions/6754259/how-to-call-the-c-library-from-assembly-code-on-linux)
