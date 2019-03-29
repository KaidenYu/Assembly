Usage
===
- build program directly, which means make system call through "syscall"
```
make (make all)
./hello
```

- build program with --defsym USE_INT=123, which means make system call through "int" 
> USE_INT=123 where 123 is just a random number, this let .ifdef USE_INT int hello.s to be true
```
make all_int
./hello_int
```

- remove *.o and program built
```
make clean
```

Note
===
- hello.s

.def doesn't work, can use "USE_INT:" or ".set USE_INT, 123" instead(first and second line of hello.s)

- Makefile
> .phony:
>
> means that the target is not an actual file                                      
> PHONY 目標並非實際的文件名：只是在顯式請求時執行命令的名字。有兩種理由需要使用PHONY 目標：避免和同名文件衝突，改善性能。
> 如果編寫一個規則，並不產生目標文件，則其命令在每次make 該目標時都執行。

