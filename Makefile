bc: infixexpreval.o functions.o integerstack.o numberlist.o 
	gcc functions.o infixexpreval.o  integerstack.o numberlist.o  -o bc
infixexpreval.o : infixexpreval.c 
		gcc -c infixexpreval.c -Wall 
functions.o : functions.c functions.h
		gcc -c functions.c -Wall 
integerstack.o : integerstack.c integerstack.h
		gcc -c integerstack.c -Wall
numberlist.o : numberlist.c numberlist.h
		gcc -c numberlist.c -Wall
clean:
		rm *.o