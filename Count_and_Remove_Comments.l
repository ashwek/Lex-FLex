/*
This LEX program will count & Remove
comments from a text file "text.txt"
*/

%option noyywrap

%{
	#include<stdio.h>
	int S=0, M=0;
%}

%s COMMENT

%%
"/*" {BEGIN COMMENT;}
<COMMENT>. ;
<COMMENT>"*/" {M++; BEGIN INITIAL;}
"//".* {S++;}
%%

int main(){
	yyin = fopen("text.txt", "r");
	yyout = fopen("New.txt", "w");
	yylex();
	printf("\n\tSingle Line Comment = %d", S);
	printf("\n\tMulti  Line Comment = %d\n", M);
	return 0;
}
