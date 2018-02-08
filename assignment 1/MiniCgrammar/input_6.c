#include<stdio.h>
#include<math.h>
#include<time.h>

/* CMPT 470, Assignment 1
   input_6.c
   Wynston Ramsay - WCR723
   Darvin Zhang   - DDZ369
*/
int main()
{
   int i,j,k,x,y,z;
   char input;

   printf("Which type of iteration method is your favourite to implement:");
   printf("1) For-Loop");
   printf("2) While-Loop");
   printf("3) Do-While-Loop");
   printf("4) Recursion");
   scanf("%c", input);

   switch (input)
   {
      case '1':
         printf("For-Loop was chosen\n");
         for(i=0;i<100;i++){
            x = i * 3;
            printf("x:%d", x);
         }
         break;
      case '2':
         printf("While-Loop was chosen\n");
            j = 0;
            while(j<200){
               y = j + 42;
               printf("y:%d", y);
               j++;
            }
         break;
      case '3':
         printf("Do-While-Loop was chosen\n");
         k=0;
         do{
            z = x + y;
            printf("z:%d",z);
            k++;
         }while(k<300);
         break;
      case '4':
         printf("Recursion was chosen\n");
         printf("Which type of iteration method is your favourite to implement:");
         printf("1) For-Loop");
         printf("2) While-Loop");
         printf("3) Do-While-Loop");
         printf("4) Recursion");
         scanf("%c", input);

         switch (input)
         {
            case '1':
               printf("For-Loop was chosen\n");
               for(i=0;i<100;i++){
                  x = i * 3;
                  printf("x:%d", x);
               }
               break;
            case '2':
               printf("While-Loop was chosen\n");
                  j = 0;
                  while(j<200){
                     y = j + 42;
                     printf("y:%d", y);
                     j++;
                  }
               break;
            case '3':
               printf("Do-While-Loop was chosen\n");
               k=0;
               do{
                  z = x + y;
                  printf("z:%d",z);
                  k++;
               }while(k<300);
               break;
            case '4':
               printf("Recursion was chosen\n");
               break;
            default:
               printf("You entered an invalid choice\n");
         }
         break;
      default:
         printf("You entered an invalid choice\n");
   }
   return 0;
}