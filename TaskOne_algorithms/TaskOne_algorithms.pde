/*
 1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 }
 1.b implement your own sorting algorithm for the int[] array, by creating a method that takes in the int[] array and loops through it with a for loop.
 for every step in the for loop, you must compare the values of array[i] and array[i + 1] and swap them if [i] is greater than [i + 1].
 1.c call the method created in 1.b in a while loop from setup(), until the list is sorted.
 1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.
 */

boolean sorted = false; //1.d
int[] sortedArray;

void setup() {  
  //1.a - added integer array + output
  int[] myArray = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2}; 
  printArray(myArray);

  //1.b - calls the method
  //sortingAlgorithm((myArray));

  //1.c - while loop to sort the array
    while (!sorted) {
      sortedArray = sortingAlgorithm(myArray);
    }
    printArray(sortedArray); // 8 1 5 9 11 7 4 6 3 12 10 2 13
    println("It has been sorted - YAY :D");
}

//1.b sorting algorithm method for the array
int[] sortingAlgorithm(int[] mySortingArray) {   // i = 9,  i+1 = 1
  int tmp = 0;

    for (int i = 0; i < mySortingArray.length; i++) {
      if (i == mySortingArray.length-1) {
        break; 
      }
        if (mySortingArray[i] > mySortingArray[i+1]) { 
          println(mySortingArray[i] + " is bigger than " + mySortingArray[i+1] + " ");
          
          tmp = mySortingArray[i];  
          mySortingArray[i] = mySortingArray[i+1]; 
          mySortingArray[i+1] = tmp;  

        
        } else if (mySortingArray[i] < mySortingArray[i+1]) { 
        println(mySortingArray[i] + " is not bigger than " + mySortingArray[i+1] + " "); 
        }
      }
      
      //printArray(mySortingArray); // 8 1 5 9 11 7 4 6 3 12 10 2 13
      sorted = true; 
      return mySortingArray; 
  }
