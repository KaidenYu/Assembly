Usage
===

```
make
./sum
```

the makefile of this example use function "$(wildcard *.xxx)" and "$(VAR:%.c=%.o)"
so a phony "print" is added to check the variable in makefile

```
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/sum$ make print
CSRC =  callsum.c
ASRC =  sum.s
OBJS =  callsum.o sum.o
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/sum$ 
```
