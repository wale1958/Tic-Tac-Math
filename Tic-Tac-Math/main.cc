//Adebowale Ojetola CISC 3110 project1
#include "play.h"
#include "confirm.h"
#include "inout.h"
#include <iostream>
using namespace std;
//This program represents my method of implementing the game Tic_Tac_Math
//This game is a modified tic tac toe game. It is played on a 3x3 gird.
//It is a math game where 2 players take turns playing numbers between 1-9
//The winner is determined when either a row, column or diagonal sums up to 15
int main()
{
    int size=9; //size of the array that represents the 3x3 grid.
    int num; //holds the most recent number inputed by the user(1-9)
    int pos; //holds the most recent position inputed by the user.(0-8)
    int arr[size]; //This is the array that represents the 3x3 grid.
    bool turn=false; //If true the variable represents player 1 if false,
    //The variable represents player 2

    //About to initialize the game board.
    for (int i=0; i<size; i++){ 
        arr[i]=0; 
    }

    //This is the main controller of the game.
    //Continues as long as there is no winner yet and there is still an empty
    //slot on the game board.
    while(!checkForWin(arr, turn) && (arr[0]==0 || arr[1]==0 || arr[2]==0 ||
                                arr[3]==0 || arr[4]==0 || arr[5]==0 ||
                                arr[6]==0 || arr[7]==0 || arr[8]==0)){

        getAMove(num, pos);//reads in the value of num and pos

        //if the number and position are valid
        if(validate(num, pos, arr, size)){
                playAMove(num, pos, arr);//play the turn
                display(arr);//show the game board
                turn=!turn;
        }
    }

        return 0;
}
