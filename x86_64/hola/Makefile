AS = as
CC = gcc
LD = ld

PROG = hola
ASRC = $(PROG).s
OBJS = $(PROG).o



.PHONY: all
all: $(PROG)

$(PROG): $(OBJS)
	@echo "### generating" $(PROG) "###"
	$(CC) $(OBJS) -o $(PROG) #use gcc instead of ld
	@echo 


$(OBJS): $(ASRC)
	@echo "### generating" $(OBJS) "###"
	$(AS) $(ASRC) -o $(OBJS)
	@echo 


#need to add -f after rm or error message will show
.PHONY: clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG) $(PROG_INT)
	@echo
