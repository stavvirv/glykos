#include <stdio.h>
#include <math.h>
#include <string.h>
int main()

{
float con;
float length;
char seq[5000];
con = 0;
int i;
scanf("%s", seq ); 

length = strlen ( seq );
for (i = 0 ; i < length ; i++)	
{
	if (seq[i] == 'c' || seq[i] == 'C' || seq[i] == 'g' || seq[i] == 'G')
		{
		con++;
		}

}
	printf("The gc content is %f \n", 100*con/length);







}
