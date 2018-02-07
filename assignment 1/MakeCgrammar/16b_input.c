int main()
{
   int i,times, x;
   scanf("%d",&times);
   i = 0;
   do
   {
      i++;
      printf("%d\n",i);
      x = i + 1;
      if (x == times){
         printf("Only one more iteration left\n");
         printf("Lets make the most of it\n");
      }
   }
   while (i <= times);
   return 0;
}