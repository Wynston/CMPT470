int main()
{
   int mark, scholarship;
   char pass;
   scanf("%d",&mark);
   if (mark > 40)
      pass = 'y';
   else
      pass = 'n';
   if (mark > 90)
      scholarship = 1;
   else
      scholarship = 0;
   return 0;
}
