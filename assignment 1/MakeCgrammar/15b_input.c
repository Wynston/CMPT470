int main()
{
   int i,times;
   char num;
   scanf("%d",&times);
   i = 0;
   while (i <= times)
   {
      i++;
      printf("%d\n",i);
      printf("Pick any number between 1 and 5:\n");
      printf("1\n");
      printf("2\n");
      printf("3\n");
      printf("4\n");
      printf("5\n");
      scanf("%c",&num);
      switch (num)
      {
         case '1':
            printf("You chose 1\n");
            break;
         case '2':
            printf("You chose 2\n");
            break;
         case '3':
            printf("You chose 3\n");
            break;
         case '4':
            printf("You chose 4\n");
            break;
         case '5':
            printf("You chose 5\n");
            break;
         default:
            printf("You entered an invalid choice\n");
      }
   }
   return 0;
}
