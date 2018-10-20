/*
This LEX program to check for
valid identifiers from a
text file "text.txt"
*/

%option noyywrap

%{
	#include<stdio.h>
%}

KeyWord "auto"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"enum"|"register"|"typedef"|"char"|"extern"|"return"|"union"|"const"|"float"|"short"|"unsigned"|"continue"|"for"|"signed"|"void"|"default"|"goto"|"sizeof"|"volatile"|"do"|"if"|"static"|"while"
Alphabet [a-zA-Z]
Number [0-9]
Space [ \t]

%%
{KeyWord} {printf("\n\tIn-Valid => \"%s\"", yytext);}
{Number}.* {printf("\n\tIn-Valid => \"%s\"", yytext);}
.*{Space}.* {printf("\n\tIn-Valid => \"%s\"", yytext);}
(_|{Alphabet})(_|{Alphabet}|{Number}|^{Space})* {printf("\n\t   Valid => \"%s\"", yytext);}
.|[ \n] ;
%%

int main(){
	yyin = fopen("text.txt", "r");
	yylex();
	printf("\n");
	return 0;
}
