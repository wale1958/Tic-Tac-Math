// Adebowale Ojetola CISC 3110 project1
// confirm.cc
#include "confirm.h"
#include <iostream>
using namespace std;
//This function checks that the value num is between 1-9 and is only entered
//once. It also checks if there is not a value in the position received in the
//array "arr" which is of size "size"
bool validate(int num, int pos, int arr[], int size)
{
    bool valid;

    //checks the game board to determine if the value in num has already been
    //played
    for (int i=0; i<size; i++){
        if(num==arr[i]){
            cout<<"The number "<<num<<" has already been played"<<endl;
            return false; //Since one of the condition is false, there is no
                              //to continue checking other conditions
        }
        else
            valid=true;

    }

    //checks if the position has already been filled
    if(arr[pos]!=0){
        cout<<"Position "<<pos<<" has already been filled try again"<<endl;
        return false;
    }
    else
        valid=true;
    return valid;//only returns valid =true at this point
}

//This function checks if there is a winner and prints out which player won
bool checkForWin(int arr[], bool turn)
{
    bool winner;

    if((arr[0]+arr[1]+arr[2]==15 && (arr[0]!=0 && arr[1]!=0 && arr[2]!=0))
       || (arr[3]+arr[4]+arr[5]==15 && (arr[3]!=0 && arr[4]!=0 && arr[5]!=0))
       || (arr[6]+arr[7]+arr[8]==15 && (arr[6]!=0 && arr[7]!=0 && arr[8]!=0))){
       //Checks if the horizontal values sum up to 15 while not having a 0 value

        winner=true;
        if(turn)
            cout<<"congrats player one! you won horizontally"<<endl;
        else
            cout<<"congrats player two! you won horizontally"<<endl;
    }
    else if((arr[0]+arr[4]+arr[8]==15 && (arr[0]!=0 && arr[4]!=0 && arr[8]!=0))
        || (arr[2]+arr[4]+arr[6]==15 && (arr[2]!=0 && arr[4]!=0 && arr[6]!=0))){
        //Checks if the diagonal values sum up to 15 and don't have a 0 value

        winner=true;
        if(turn)
            cout<<"Congrats player one! you won diagonally"<<endl;
        else
            cout<<"Congrats player two! you won diagonally"<<endl;
    }
    else if((arr[0]+arr[3]+arr[6]==15 && (arr[0]!=0 && arr[3]!=0 && arr[6]!=0))
       || (arr[1]+arr[4]+arr[7]==15 && (arr[1]!=0 && arr[4]!=0 && arr[7]!=0))
      || (arr[2]+arr[5]+arr[8]==15 && (arr[2]!=0 && arr[5]!=0 && arr[8]!=0))){
//checks if the sum of the values in the columns is 15 and neither has a 0 value

        winner=true;

        if(turn)
             cout<<"Congrats! Player one is the winner"<<endl;
        else
            cout<<"Congrats! Player two is the winner"<<endl;
    }
    else
        winner=false;

    return winner;
}
