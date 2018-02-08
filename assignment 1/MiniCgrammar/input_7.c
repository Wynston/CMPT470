#include<stdio.h>
#include<math.h>
#include<time.h>

/* CMPT 470, Assignment 1
   input_7.c
   Wynston Ramsay
   Darvin Zhang
*/
int main()
{
  //variable 
  //declarations
  int i,j,k;
  char a,b,c;
  float x,y,z;

  //nested for loops without braces
  for(i=0;i<100;i++)
     for(j=0;j<100;j++)
        //random comment
        break;

  k = i + j;
  //do while loop
  do
      printf("%d iterations remaining\n",k);
      if(k >= 300)
          break;
      k++;
  while(true);

  //random char assignments
  a = 'a';
  b = 'b';
  c = 'c';

  //random float assignments
  x = 100.5-50.25;
  y = 5.25+10.75;
  z = x/y;
  x = 0;
  y = 0;
  z = 0;

  //random if statements for chars
  if(a == 'a' && b == 'b' && c == 'c'){
    printf("Correct\n");
  }
  else if(a != 'a'){
    printf("a is wrong\n");
  }
  else if(b != 'b'){
    printf("b is wrong\n");
  }
  else if(c != 'c'){
    printf("c is wrong\n");
  }
  else{
    printf("Char Error\n");
  }

  //random if statements for floats
  if(x == 0 && y == 0 && z == 0){
    printf("Correct\n");
  }
  else if(x != 0){
    printf("x is wrong\n");
  }
  else if(y != 0){
    printf("y is wrong\n");
  }
  else if(z != 0){
    printf("z is wrong\n");
  }
  else{
    printf("Float Error\n");
  }

  return 0;
}