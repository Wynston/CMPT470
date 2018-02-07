int main()
{
   char fruit, vegetable;
   printf("Which one is your favourite fruit:\n");
   printf("a) Apples\n");
   printf("b) Bananas\n");
   printf("c) Cherries\n");
   printf("d) Oranges\n");
   scanf("%c",&fruit);
   switch (fruit)
   {
      case 'a':
         printf("You like apples\n");
         break;
      case 'b':
         printf("You like bananas\n");
         break;
      case 'c':
         printf("You like cherries\n");
         break;
      case 'd':
         printf("You like oranges\n");
         break;
      default:
         printf("You entered an invalid choice\n");
   }
   printf("Which one is your favourite vegetable:\n");
   printf("a) asparagus\n");
   printf("b) broccoli\n");
   printf("c) carrots\n");
   printf("d) I don't like vegetables\n");
   scanf("%c",&vegetable);
   switch (vegetable)
   {
      case 'a':
         printf("You like asparagus\n");
         break;
      case 'b':
         printf("You like broccoli\n");
         break;
      case 'c':
         printf("You like carrots\n");
         break;
      case 'd':
         printf("You don't like vegetables\n");
         break;
      default:
         printf("You entered an invalid choice\n");
   }
   return 0;
}