AS = as
CC = gcc
LD = ld

PROG = maxofthree
OBJS = $(PROG).o call$(PROG).o #use the line below instead.faster
#-----------------------------------------------------------------
#OBJS = $(wildcard *.o) 
# wildcard is a function of makefile
# if you use it then make or make all won't work
# because while you do "$(PROG):$(OBJS)" the .o file haven't been generated yet
# so $(wildcard *.o) is empty -> gcc   -o maxofthree 
# but if you generate all the .o file first, it work
#-----------------------------------------------------------------




.PHONY: all
all: $(PROG)

$(PROG):$(OBJS) #can't replace $(OBJS) with %.o in any case?
	@echo "### generating" $(PROG) "###"
	$(CC) $(OBJS) -o $(PROG) 
	@echo 


#-----------------------------------------------------------------
#在一些 make 中常使用自動化變數來簡寫規則（讓 makefile 難讀的兇手之一QQ）：

#    $@：目前的目標項目名稱。
#    $<：代表目前的相依性項目。
#    $^：代表all相依性項目。
#    $*：代表目前的相依性項目，但不含副檔名。
#    $?：代表需要重建（被修改）的相依性項目。
#
#	 另外在 makefile 規則中所用的萬用配對字元是%
#-----------------------------------------------------------------

ifeq (A,B) #not true for sure
# %.o:%.c %.s ----------------------------------------------------
# build all object file for all .c and .s
# if src.c and src.s both exist this will fail
# it will become "gcc -c A.c A.s -o A.o" -> error
# but will it be possible that A.c A.s both exist?
# since the object file might 
#-----------------------------------------------------------------
%.o:%.c %.s 
	@echo "### generating" $(OBJS) "###" 	# won't print.dont know why
	$(CC) -c $^ -o $@
	@echo 									# won't print.dont know why

else
# %.o:%.s and %.o:%.c---------------------------------------------
# build all object file for all .c
# then build all object file for all .s
# if src.c and src.s both exist this might fail too
# cause $(PROG):$(OBJS) in this Makefile imply that you only need
# one src.o so if you compile src.c and generate src.o
# src.s won't be compiled(assembled)...blah blah blah
# To conlude, if you have .s and .c with same name
# you need to make sure that they generate .o file with different name
# for example, src.s.o and src.c.o
# 
#-----------------------------------------------------------------
%.o:%.s #the second line below can be replaced with "$(CC) -c $< -o $@"
	@echo "### generating" $@ "###" 	
	$(CC) -c $^ -o $@
	@echo

%.o:%.c
	@echo "### generating" $@ "###" 	
	$(CC) -c $^ -o $@
	@echo						

endif

#need to add -f after rm or error message will show
.PHONY: clean
clean:
	@echo "### removing all relative files ###" 
	rm -f *.o $(PROG) $(PROG_INT)
	@echo