/* 
In this task you will create an integer array with 2 dimensions, that holds values of 0, 1, 0, 1, etc. The instructions below will help you get started. 
What has been left out, is how to assign the alternating value of 0's and 1's.
5.a Create a double int called board[][] with the length of 8 in both arrays. 
5.b In setup() set the size to 350, 350 
5.c In setup() create a double for loop that loops through the board and alternates between assigning the value of 0 and 1 (e.g. board[x][y] = 0;). 
5.d In draw() create a double for loop that loops through the board and draws a rect for each element with the sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); ) 
5.e Before drawing the rect in the previous step, add a fill() statement, that fills with the value of 0 if the board[x][y] == 0.
*/

int first = 8; 
int second = 8; 
int[][] board = new int[first][second]; //5.a 
int sideLength = 40;

void setup() {
  size(350, 350); //5.b
  
  //5.c
  for (int i = 0; i < board.length; i++) {
    for (int j = 0; j < board.length; j++) {
      board[i][j] = 0;
    }
  }
}
  
void draw() {
  rectMode(CORNER);
  background(0);
  
  //5.d 
  for (int i = 0; i <= board.length; i++) {
    for (int j = 0; j <= board.length; j++) {
      if ((i + j) % 2 == 0) {
        fill(0);  // 5.e
        rect(i * sideLength, j * sideLength, sideLength, sideLength);
      } else {
        fill(#D076E5); //adds purple color
        rect(i * sideLength, j * sideLength, sideLength, sideLength);
      }
    }
  }
}
