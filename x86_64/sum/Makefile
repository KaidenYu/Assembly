AS = as
CC = gcc
LD = ld

PROG = sum
CSRC = $(wildcard *.c)
ASRC = $(wildcard *.s)
OBJS = $(CSRC:%.c=%.o) $(ASRC:%.s=%.o) # no space between ":"" and "%"


.PHONY:all
all:$(PROG)


$(PROG):$(OBJS) #can't replace $(OBJS) with %.o in any case?
	@echo "### generating" $(PROG) "###"
	$(CC) $(OBJS) -o $(PROG) 
	@echo 



%.o:%.s #the second line below can be replaced with "$(CC) -c $< -o $@"
	@echo "### generating" $@ "###" 	
	$(CC) -c $^ -o $@
	@echo

%.o:%.c
	@echo "### generating" $@ "###" 	
	$(CC) -c $^ -o $@
	@echo	

.PHONY: clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG) $(PROG_INT)
	@echo

.PHONY: print
print:
	@echo "CSRC = " $(CSRC)
	@echo "ASRC = " $(ASRC)
	@echo "OBJS = " $(OBJS)