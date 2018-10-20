/*
This LEX program will count the number
of Alphabets, Spaces and Lines in a 
text file "text.txt"
*/

%option noyywrap

%{
	#include<stdio.h>
	int V=0, C=0;
%}

Vow [aeiouAEIOU]
Con [a-zA-Z]

%%
{Vow} {V++;}
{Con} {C++;}
(.|[ \t\n]) {;}
%%

int main(){
	yyin = fopen("text.txt", "r");
	yylex();
	printf("\n\tVowels = %d", V);
	printf("\n\tConsonents = %d\n", C);
	return 0;
}
