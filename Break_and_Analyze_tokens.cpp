/*
This C++ programs takes a line of C++ code
as input and breaks down the tokens
*/

#include<iostream>
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<ctype.h>

using namespace std;

int Pattern(char Inp[], int start, int end){
	
	if(end-start == 1){
		if(Inp[start] == '+' || Inp[start] == '-' || Inp[start] == '*' || Inp[start] == '/' || Inp[start] == '=')
			cout<<"Operator";
		else if(Inp[start] == '(' || Inp[start] == ')' || Inp[start] == '{' || Inp[start] == '}' || Inp[start] == '[' || Inp[start] == ']')
			cout<<"Bracket";
		else if(Inp[start] == '#') cout<<"Pre-Processor";
		else if(Inp[start] == ';' || Inp[start] == ',' || Inp[start] == '\'' || Inp[start] == '\"')
			cout<<"Other";
		else{
			if(isalpha(Inp[start]) || Inp[start]=='_') cout<<"Identifier";
			else if(isdigit(Inp[start])) cout<<"Number";
			else cout<<"Unknown";
		}
		return 0;
	}
	
	char *Sub = new char[end-start+1];
	for(int i=start; i<end; i++) Sub[i-start] = Inp[i];
	Sub[start-end]='\0';
	
	char KeyWords[38][11]={"auto", "double", "int", "struct", "break", "else", "long", "switch", "case", "enum", "register", "typedef", "char", "extern", "return", "union", "const", "float", "short", "unsigned", "continue", "for", "signed", "void", "default", "goto", "sizeof", "volatile", "do", "if", "static", "while"};
	for(int i=0; i<38; i++){
		if(strcmp(KeyWords[i], Sub) == 0){
			cout<<"Keyword";
			return 0;
		}
	}
	
	if(Sub[0]=='_' || isalpha(Sub[0])) cout<<"Identifier";
	else cout<<"Number";
	return 0;
}

void Print(char Inp[], int start, int end){
	cout<<"\n\t";
	for(int i=0; i<=8-(end-start); i++) cout<<" ";
	for(int i=start; i<end; i++) cout<<Inp[i];
	cout<<" | ";
	Pattern(Inp, start, end);
}

int Type(char ch){
	if(isalnum(ch) || ch=='_') return 0;
	else if(ch == '+' || ch == '-' || ch == '*' || ch == '/' || ch == '=') return 1;
	else if(ch == ';' || ch == ',') return 2;
	return 3;
}

int main(){
	
	cout<<"...";getchar();
	system("clear");
	
	char Inp[50];
	cout<<"\n\tEnter a line of code : "; cin.getline(Inp, 50);
	
	cout<<"\n\t    Lexem | Type\n\t-----------------------";
	int i=0, FS=0, end;
	while(Inp[i]!='\0' && FS!=10){
		if(Inp[i] != ' '){
			end = i+1;
			while( Type(Inp[i]) == Type(Inp[end])) end++;
			Print(Inp, i, end);
			i = end;
		}
		else i++;
	}
	
	getchar();
	return 0;
}
