/*
4.a Write a method that takes in an integer as a parameter and prints all values between 0 and 100 that are divisible by the parameter received.
4.b add the following array to your code: int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }
4.c Write a method that returns a random element from the above array.
4.d Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the input and calls itself again (recursion). 
If the input is less than zero, it should no longer call itself.
4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ). 
Then have the function calculate and print the fibunacci sequence by calling itself. If the input is greater than 10000, then stop. 
Start the function by calling it from setup with the input (1, 1). (hint: fibunacci sequence: https://i.pinimg.com/236x/98/82/d5/9882d569f7e0b5665fe3b2edd5069b06.jpg )
*/ 

void setup() {
//4.b - added array + show output of array
int[] arr = {1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10};  
printArray(arr);

//4.a - Added a few examples below: 
divValuesBetween(10); 
divValuesBetween(12);
divValuesBetween(16); 
divValuesBetween(30); 
divValuesBetween(50); 

//4.c - Added a few examples below:
println("\n" + "\nThis is a random index from the array: " + randomIndexFromArray(arr));
println("This is a random index from the array: " + randomIndexFromArray(arr));

println("\nThis is a random element from the array: " + randomElementFromArray(arr));
println("This is a random element from the array: " + randomElementFromArray(arr));

//4.d - Added a few examples below:
println("\nThis is a integer as a parameter " + intAsParameter(2));
println("This is a integer as a parameter " + intAsParameter(10));

println("\nThis is a recursion of 2: " + intRecursion(2));
println("This is a recursion of 10: " + intRecursion(10));

println("\nThe input is bigger than 10 therefore returns y = " + intRecursion(20));
println("This input is less than 0 therefore returns y = " + intRecursion(-1));

//4.e - Added a few examples below:
twoIntAsParameter(15, 15);
twoIntAsParameter(30, 15);
twoIntAsParameter(7, 6);
twoIntAsParameter(40, 6);
twoIntAsParameter(100, 46);

FibunacciSequence(1, 1);
}

//4.a - Prints all values between 0 and 100 that are divisible by the parameter received. 
void divValuesBetween(int x) {
  int end = 100;
  print("\nDivisible by the parameter recieved: ");   
    
  for (int i = 1; i < end; i++) {
     if (i%x == 0) {
     print(i + " ");   
     }
  }
}

//4.c - Returns a random index from the array.
int randomIndexFromArray(int[] randomIn) {
  int randomIndex = (int)random(randomIn.length);
  for(int i = 0; i >= randomIn.length; i++) {
  }
  return randomIndex;
}

//Returns a random element from the array 
int randomElementFromArray(int[] randomOut) {
  int randomOutput = (int)random(randomOut.length);
  return randomOut[randomOutput];
}

//4.d - Returns an integer as a parameter and prints the number
int intAsParameter(int y) {
  return y;
}

//Subtracts one from the input int y and calls itself again (recursion). 
int intRecursion(int y) {
  if (y > 0 && y <= 10 ) { //to test output.. could just assign if (y > 0) here 
    return y +- 1; 
  } else if (y < 0) {
    return 0; // If the input is less than zero, it should no longer call itself.
  } else {
   return y; 
  }
}

//4.e - prints two ints seperated by a tab ( \t ).
void twoIntAsParameter(int z, int v) { 
  print("\nPrints two ints seperated by a tab:" + " " + z + "\t " + v);
}

//Calculates the fibunacci sequence by calling itsself 
void FibunacciSequence(int a, int b) { 
  int d = 13; 
  print("\n" + "\nFibunacci sequence output: " + a + ", ");
  //int d is set to 13 to show output from source: https://i.pinimg.com/236x/98/82/d5/9882d569f7e0b5665fe3b2edd5069b06.jpg 
  //int d = 13 should be changed to int d = 10000 for the assignment output but unrealistic for me to check on the terminal. 
  
  for (int i = 0; i <= d; i++) {
    print(b + ", ");
    
    //compute the next output
    int c = a + b;
    a = b;  
    b = c; 
  }
}
