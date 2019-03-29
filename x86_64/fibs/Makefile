AS = as
CC = gcc
LD = ld

PROG = fibs
OBJS = $(PROG).o
ASRC = $(PROG).s

.PHONY:all
all: $(PROG)

$(PROG): $(OBJS)
	@echo "### generating" $(PROG) "###"
	$(CC) $(OBJS) -o $(PROG) #use gcc instead of ld
	@echo

$(OBJS): $(ASRC)
	@echo
	$(AS) $(ASRC) -o $(OBJS)
	@echo


#need to add -f after rm or error message will show
.PHONY:clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG)
	@echo
