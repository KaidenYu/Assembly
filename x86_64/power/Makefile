CC = gcc
AS = as 
LD = ld 


PROG = power
OBJS = $(PROG).o
ASRC = $(PROG).s

.PHONY:all
all: $(PROG)


$(PROG):$(OBJS)
	@echo "### generating" $(PROG) "###"
	$(CC) $(OBJS) -o $(PROG)
	@echo

$(OBJS):$(ASRC)
	@echo "### generating" $(OBJS) "###"
	$(CC) -c $(ASRC) -o $(OBJS)
	@echo 

.PHONY:clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG)
	@echo
