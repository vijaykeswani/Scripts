%{
#include <stdio.h>
#include<string.h>
int lines=0,num=0,flag1=-4,j=0,flag2=0,flag3=0,flag4=0;
char ch;
%}

%%
. { 
	ch = yytext[0];
	if(flag2==1)
		printf("%c",ch);		
}
"<title>"	{	
	flag2=1;
	printf("\t");
}
"</title>"	{
	if(flag2==1)
		printf("\n");
	flag2=0;
	num=0;	
}
\n { 
	lines++;}
%%

int yywrap()
{
return;
}
int main()
{
        yylex();
        return 0;
}

