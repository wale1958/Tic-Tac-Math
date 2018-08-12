#Adebowale Ojetola CISC 3110 Project1
TicTacMath: main.o inout.o confirm.o play.o
	g++ main.o inout.o confirm.o play.o -o TicTacMath

main.o: main.cc
	g++ -c main.cc

inout.o: inout.cc inout.h
	g++ -c inout.cc

confirm.o: confirm.cc confirm.h
	g++ -c confirm.cc

play.o: play.cc play.h
	g++ -c play.cc

clean:
	rm *.o TicTacMath
