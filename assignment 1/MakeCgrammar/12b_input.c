int main()
{
   int a,b;
   int x,y;
   scanf("%d",&a);
   scanf("%d",&b);
   scanf("%d",&x);
   scanf("%d",&y);
   if (a > 0 && b > 0)
      printf("Both numbers are positive\n");
   if (a == 0 || b == 0)
      printf("At least one of the numbers = 0\n");
   if (!(a > 0) && !(b > 0))
      printf("Both numbers are negative\n");
   if (x == 1 && y == 1)
      printf("Both x and y are on.\n");
   if (x == 0 && y == 0)
      printf("Both x and y are off.\n");
   if (x == 2 || y == 2)
      printf("Either x or y have errors. \n");
   return 0;
}
