%{
#include <stdio.h>
#include<string.h>
int lines=0,num=0,flag1=-4,j=0,flag2=0;
char ch;
%}

%%
. { 
	/*if(lines==flag1+1)
	{
		ch=yytext[0];		
		printf("%c",ch);
	}*/
	if(lines==flag1+2)
	{
		printf("\n");
		flag1=0;
	}
	if(flag2==1 && lines==flag1+1)
	{
		num=num+1;
		if(num>2)
		{
			ch=yytext[0];      
                	printf("%c",ch);
		}
	}
}
\n { 
	lines++;}
"Currently"	{
	flag1=lines;
}
[0-9][0-9]	{
	if(lines==flag1+1)
	{
		printf("\n");
		printf("%s *C",yytext);
	}
}
"cond"	{
	flag2++;
}
"</span>"	{
	if(flag2==1)
		flag2=-5;
}
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

