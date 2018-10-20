/*
This LEX program will count 
Positive and Negative numbers
in a text file "text.txt"
*/

%option noyywrap

%{
	#include<stdio.h>
	int P=0, PF=0, N=0, NF=0;
%}

%%
[+]?[0-9]+ {P++;}
[+]?[0-9]*\.[0-9]+ {PF++;}
[-][0-9]+ {N++;}
[-][0-9]*\.[0-9]+ {NF++;}
.|[ \t\n] {;}
%%

int main(){
	yyin = fopen("text.txt", "r");
	yylex();
	printf("\n\t          Positive = %d", P);
	printf("\n\tPositive Fractions = %d", PF);
	printf("\n\t          Negative = %d", N);
	printf("\n\tNegative Fractions = %d\n", NF);
	return 0;
}
