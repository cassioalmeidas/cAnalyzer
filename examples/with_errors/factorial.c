// source from http://www.programmingsimplified.com/c-program-find-factorial

/* Factorial */
 
int main()
{
  int c, n, fact = 1
 
  printf("Enter a number to calculate it's factorial\n");
  scanf("%d", &n);
 
  for (c = 1; c <= n; c++)
    fact = fact * c;
 
  printf("Factorial of %d = %d\n", n, fact);
 
  return 0;
}