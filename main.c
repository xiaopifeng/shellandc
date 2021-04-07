#include <stdio.h> 

int main(int argc, char **argv)
{
	double money;
	double temp = 0.0;
	FILE *fp;
	if ((fp = fopen((argv[1]),"r+")) == NULL )
	{	
		printf("Can't open file: %s \n",argv[1]);
		return 1; 
	}
	while(fscanf(fp,"%lf",&money) != EOF)
	{
		temp = temp + money;
	}
	fclose(fp);
	printf("This month %s%f\n",argv[2], temp);	
	return 0;
}
