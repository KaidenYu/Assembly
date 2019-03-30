Usage
===

```
make
./factorial
```

the makefile of this example use function "$(wildcard *.xxx)" and "$(VAR:%.c=%.o)"
so a phony "print" is added to check the variable in makefile

```
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/factorial$ make print
CSRC =  callfactorial.c
ASRC =  factorial.s
OBJS =  callfactorial.o factorial.o
kaiden@kaiden-X556UR:/home/assembly/Assembly/x86_64/factorial$ 
```
