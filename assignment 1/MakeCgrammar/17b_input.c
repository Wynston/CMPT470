int main()
{
   int i, j;
   while (i < 10)
   {
      i++;
      j = i + 100;
      if (i == 5)
         break;
      else 
      	 printf("%d",j);
   }
   return 0;
}
