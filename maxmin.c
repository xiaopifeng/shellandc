#include <stdio.h>
#include <unistd.h>
int main(int argc, char **argv)
{
	int max,min;
	int get;
	char str[10];
	FILE* pFile;
	int flag = 0;
	pFile = fopen((argv[1]),"r+");
	while((fscanf(pFile,"%d%s\n",&get,str)) != EOF)
	{		 
		if(get >= max) 
		{
			max = get;
			if(get >= min && flag == 0)
			{ 
				min = get;
				flag = 1;
			}
		}
		if(get >= max) max = get;
		if(get <= min) min = get;
	}

	fclose(pFile);
	
	printf("CPU Core x temp MAX= %d and MIN= %d in 24hrs! \n",max,min);
	return 0;
}
