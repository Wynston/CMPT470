#include<stdio.h>
#include<math.h>
#include<time.h>

int main()
{
   int i;
   while (i < 10)
   {
      i++;
      continue;
      printf("Hello\n");
      if(i > 10)
         break;
   }
   return 0;
}