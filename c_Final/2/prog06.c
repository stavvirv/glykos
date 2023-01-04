#include <stdio.h>
#include <math.h>

int main()

{
float total;
char	k;
float seq;
float n;
total = 0;
seq = 0;
n = 0;
while (scanf("%c", &k) ==1) 

{
seq = seq + 1 ;
if (k == 'C' || k == 'c' || k == 'g' || k == 'G')
	{
	total = total + 1 ;
	}
n = total/seq;
}
printf("The total number of G + C  is %f.  The total number of nucleotides is %f. The gc content is %f\n", total , seq, n);
}
