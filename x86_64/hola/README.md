use 
```
gcc hola.o -o hola
```

instead of
```
ld hola.o -o hola
```


cause use ld shit happens
```
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/hola$ ld hola.o -o hola
ld: warning: cannot find entry symbol _start; defaulting to 00000000004000b0
hola.o: In function `main':
(.text+0x8): undefined reference to `puts'

```



