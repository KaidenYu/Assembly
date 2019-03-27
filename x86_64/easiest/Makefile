
#makefile default $(AS) is as, so the folloing line is not necessary
AS = as

#same as AS	
CC = gcc

#same as AS
LD = ld


ASRC = easiest.s
OBJS = easiest.o
PROG = easiest

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



#need to add -f after rm or error message will show
.PHONY: clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG) 
	@echo
