%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token A B NL

%%
stmt:	A A A S B B NL {printf("Valid String\n");
						exit(0);
						}
S:	A S B |
;
%%



int yyerror(char *msg)
{
	printf("Invalid String\n");
	exit(0);
}


int main()
{
	printf("Enter the string\n");
	yyparse();
	return 0;
}