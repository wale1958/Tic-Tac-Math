// Adebowale Ojetola CISC 3110 project1
// inout.cc
#include "inout.h"
#include <iostream>
using namespace std;
//getAMove.cc reads in two integers, one into the address of the number to be
//played and the other into the position it will be played into
void getAMove(int &num, int &pos)
{
    cout<<"Enter a number that you want played (1-9) >";
    cin>>num;
    cout<<num<<endl;
    cout<<"Enter the position that the number should be placed into (0-8)>";
    cin>>pos;
    cout<<pos<<endl;
    return;
}

//display.cc receives an array and prints it out as a game board
void display(int arr[])
{
    cout<<"The game board looks like this:"<<endl;
    cout<<arr[0]<<'\t'<<arr[1]<<'\t'<<arr[2]<<endl;
    cout<<arr[3]<<'\t'<<arr[4]<<'\t'<<arr[5]<<endl;
    cout<<arr[6]<<'\t'<<arr[7]<<'\t'<<arr[8]<<endl;
    return;
}
