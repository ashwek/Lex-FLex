/*
This LEX program will count the number
of Alphabets, Spaces and Lines in a 
text file "text.txt"
*/

%option noyywrap

%{
	#include<stdio.h>
	int S=0, L=1, A=0;
%}

Alpha [a-zA-Z]
Space [ ]
Line [\n]

%%
{Alpha} {A++;}
{Space} {S++;}
{Line} {L++;}
. ;
%%

int main(){
	yyin = fopen("text.txt", "r");
	yylex();
	printf("\n\tAlphabets = %d", A);
	printf("\n\t   Spaces = %d", S);
	printf("\n\t    Lines = %d\n", L);
	return 0;
}
