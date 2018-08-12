     1	// Adebowale Ojetola CISC 3110 project1
     2	// confirm.cc
     3	#include "confirm.h"
     4	#include <iostream>
     5	using namespace std;
     6	//This function checks that the value num is between 1-9 and is only entered
     7	//once. It also checks if there is not a value in the position received in the
     8	//array "arr" which is of size "size"
     9	bool validate(int num, int pos, int arr[], int size)
    10	{
    11	    bool valid;
       
    12	    //checks the game board to determine if the value in num has already been
    13	    //played
    14	    for (int i=0; i<size; i++){
    15	        if(num==arr[i]){
    16	            cout<<"The number "<<num<<" has already been played"<<endl;
    17	            return false; //Since one of the condition is false, there is no
    18	                              //to continue checking other conditions
    19	        }
    20	        else
    21	            valid=true;
       
    22	    }
       
    23	    //checks if the position has already been filled
    24	    if(arr[pos]!=0){
    25	        cout<<"Position "<<pos<<" has already been filled try again"<<endl;
    26	        return false;
    27	    }
    28	    else
    29	        valid=true;
    30	    return valid;//only returns valid =true at this point
    31	}
       
    32	//This function checks if there is a winner and prints out which player won
    33	bool checkForWin(int arr[], bool turn)
    34	{
    35	    bool winner;
       
    36	    if((arr[0]+arr[1]+arr[2]==15 && (arr[0]!=0 && arr[1]!=0 && arr[2]!=0))
    37	       || (arr[3]+arr[4]+arr[5]==15 && (arr[3]!=0 && arr[4]!=0 && arr[5]!=0))
    38	       || (arr[6]+arr[7]+arr[8]==15 && (arr[6]!=0 && arr[7]!=0 && arr[8]!=0))){
    39	       //Checks if the horizontal values sum up to 15 while not having a 0 value
       
    40	        winner=true;
    41	        if(turn)
    42	            cout<<"congrats player one! you won horizontally"<<endl;
    43	        else
    44	            cout<<"congrats player two! you won horizontally"<<endl;
    45	    }
    46	    else if((arr[0]+arr[4]+arr[8]==15 && (arr[0]!=0 && arr[4]!=0 && arr[8]!=0))
    47	        || (arr[2]+arr[4]+arr[6]==15 && (arr[2]!=0 && arr[4]!=0 && arr[6]!=0))){
    48	        //Checks if the diagonal values sum up to 15 and don't have a 0 value
       
    49	        winner=true;
    50	        if(turn)
    51	            cout<<"Congrats player one! you won diagonally"<<endl;
    52	        else
    53	            cout<<"Congrats player two! you won diagonally"<<endl;
    54	    }
    55	    else if((arr[0]+arr[3]+arr[6]==15 && (arr[0]!=0 && arr[3]!=0 && arr[6]!=0))
    56	       || (arr[1]+arr[4]+arr[7]==15 && (arr[1]!=0 && arr[4]!=0 && arr[7]!=0))
    57	      || (arr[2]+arr[5]+arr[8]==15 && (arr[2]!=0 && arr[5]!=0 && arr[8]!=0))){
    58	//checks if the sum of the values in the columns is 15 and neither has a 0 value
       
    59	        winner=true;
       
    60	        if(turn)
    61	             cout<<"Congrats! Player one is the winner"<<endl;
    62	        else
    63	            cout<<"Congrats! Player two is the winner"<<endl;
    64	    }
    65	    else
    66	        winner=false;
       
    67	    return winner;
    68	}
