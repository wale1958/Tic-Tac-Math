     1	// Adebowale Ojetola CISC 3110 project1
     2	// inout.cc
     3	#include "inout.h"
     4	#include <iostream>
     5	using namespace std;
     6	//getAMove.cc reads in two integers, one into the address of the number to be
     7	//played and the other into the position it will be played into
     8	void getAMove(int &num, int &pos)
     9	{
    10	    cout<<"Enter a number that you want played (1-9) >";
    11	    cin>>num;
    12	    cout<<num<<endl;
    13	    cout<<"Enter the position that the number should be placed into (0-8)>";
    14	    cin>>pos;
    15	    cout<<pos<<endl;
    16	    return;
    17	}
       
    18	//display.cc receives an array and prints it out as a game board
    19	void display(int arr[])
    20	{
    21	    cout<<"The game board looks like this:"<<endl;
    22	    cout<<arr[0]<<'\t'<<arr[1]<<'\t'<<arr[2]<<endl;
    23	    cout<<arr[3]<<'\t'<<arr[4]<<'\t'<<arr[5]<<endl;
    24	    cout<<arr[6]<<'\t'<<arr[7]<<'\t'<<arr[8]<<endl;
    25	    return;
    26	}
