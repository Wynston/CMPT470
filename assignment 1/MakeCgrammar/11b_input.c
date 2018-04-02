int main()
{
   int mark, scholarship;
   char pass;
   scanf("%d",&mark);
   if (mark > 40)
   {
      pass = 'y';
      printf("You passed");
   }
   else
   {
      pass = 'n';
      printf("You failed");
   }
   if (mark > 90)
   {
      scholarship = 1;
      printf("Congrats, you got a scholarship!");
   }
   else
   {
      scholarship = 0;
      printf("Sorry, you did not get a scholarship.");
   }
   return 0;
}