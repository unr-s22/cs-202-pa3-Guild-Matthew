all: main.o money.o account.o
	g++ main.o money.o account.o -o pa3
	make cleanbin

main.o: main.cpp
	g++ -g -c main.cpp

Money.o: money.cpp money.h
	g++ -g -c money.cpp

Account.o: account.cpp account.h
	g++ -g -c account.cpp

clean: cleanbin
	rm pa3

cleanbin:
	rm *.o
