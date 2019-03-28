AS = as
CC = gcc
LD = ld

PROG = hello
ASRC = $(PROG).s
OBJS = $(PROG).o

PROG_INT = hello_int
OBJS_INT = $(PROG)_int.o



.PHONY: all
all: $(PROG)

$(PROG): $(OBJS)
	@echo "### generating" $(PROG) "###"
	$(LD) $(OBJS) -o $(PROG)
	@echo 


$(OBJS): $(ASRC)
	@echo "### generating" $(OBJS) "###"
	$(AS) $(ASRC) -o $(OBJS)
	@echo 


.PHONY: all_int
all_int: $(PROG_INT)

$(PROG_INT): $(OBJS_INT)
	@echo "### generating" $(PROG_INT) "###"
	$(LD) $(OBJS_INT) -o $(PROG_INT)
	@echo 



$(OBJS_INT): $(ASRC)
	@echo "### generating" $(OBJS_INT) "###"
	$(AS) $(ASRC) --defsym USE_INT=123 -o $(OBJS_INT)
	@echo 

#need to add -f after rm or error message will show
.PHONY: clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG) $(PROG_INT)
	@echo
