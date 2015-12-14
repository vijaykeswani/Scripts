%{
#include <stdio.h>
#include<string.h>
int lines=0,num=0,flag1=-4,j=0,flag2=0,flag3=0,flag4=0;
char ch;
%}

%%
. { 
	ch = yytext[0];
	if(flag1==lines || flag1==lines-1)
	{
		//printf("%c",yytext[0]);
		if(flag2==1)
		{
			num=num+1;
			if(num>=3)
				printf("%c",ch);
		}
	}
	if(flag3==1 && flag4==1)
		printf("%c",ch);
			
}
"Headlines</div>"	{
	flag1=lines;
}
"_parent"	{
	flag2=1;
	printf("\t");
}
"</a>"	{
	if(flag2==1)
		printf("\n");
	flag2=0;
	num=0;	
}
"<div><h3>"	{
	//if(flag1!=lines)
	//{
	printf("\n");
	flag3=1;
	flag4=1;
	//}
}
"</h3></div>"	{
	if(flag4==1)
		printf("\n");
	flag4=0;
}
"<title1>"	{
	if(flag3==1)
		flag4=1;
}
"</title1>"	{
	//flag3=0;
	if(flag4==1)
                printf("\n");
	flag4=0;
}
"</a></li></ul></td></tr></table></td></tr><tr>"	{
	flag3=0;
	if(flag4==1)
                printf("\n");
	flag4=0;
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

