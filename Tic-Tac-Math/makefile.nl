     1	#Adebowale Ojetola CISC 3110 Project1
     2	TicTacMath: main.o inout.o confirm.o play.o
     3		g++ main.o inout.o confirm.o play.o -o TicTacMath
       
     4	main.o: main.cc
     5		g++ -c main.cc
       
     6	inout.o: inout.cc inout.h
     7		g++ -c inout.cc
       
     8	confirm.o: confirm.cc confirm.h
     9		g++ -c confirm.cc
       
    10	play.o: play.cc play.h
    11		g++ -c play.cc
       
    12	clean:
    13		rm *.o TicTacMath
