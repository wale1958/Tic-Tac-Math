     1	//Adebowale Ojetola CISC 3110 project1
     2	#include "play.h"
     3	#include "confirm.h"
     4	#include "inout.h"
     5	#include <iostream>
     6	using namespace std;
     7	//This program represents my method of implementing the game Tic_Tac_Math
     8	//This game is a modified tic tac toe game. It is played on a 3x3 gird.
     9	//It is a math game where 2 players take turns playing numbers between 1-9
    10	//The winner is determined when either a row, column or diagonal sums up to 15
    11	int main()
    12	{
    13	    int size=9; //size of the array that represents the 3x3 grid.
    14	    int num; //holds the most recent number inputed by the user(1-9)
    15	    int pos; //holds the most recent position inputed by the user.(0-8)
    16	    int arr[size]; //This is the array that represents the 3x3 grid.
    17	    bool turn=false; //If true the variable represents player 1 if false,
    18	    //The variable represents player 2
       
    19	    //About to initialize the game board.
    20	    for (int i=0; i<size; i++){ 
    21	        arr[i]=0; 
    22	    }
       
    23	    //This is the main controller of the game.
    24	    //Continues as long as there is no winner yet and there is still an empty
    25	    //slot on the game board.
    26	    while(!checkForWin(arr, turn) && (arr[0]==0 || arr[1]==0 || arr[2]==0 ||
    27	                                arr[3]==0 || arr[4]==0 || arr[5]==0 ||
    28	                                arr[6]==0 || arr[7]==0 || arr[8]==0)){
       
    29	        getAMove(num, pos);//reads in the value of num and pos
       
    30	        //if the number and position are valid
    31	        if(validate(num, pos, arr, size)){
    32	                playAMove(num, pos, arr);//play the turn
    33	                display(arr);//show the game board
    34	                turn=!turn;
    35	        }
    36	    }
       
    37	        return 0;
    38	}
