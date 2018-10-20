# Lex-FLex

[Compile and Run a Lex Program - stackoverflow](https://stackoverflow.com/questions/8859710/lex-how-to-run-compile-a-lex-program-on-commandline "Lex - How to run / compile a lex program on commandline")

Lex is a program that automatically generates code for scanners. Lex is a computer program that generates lexical analyzers. Lex is commonly used with the yacc parser generator. Lex, originally written by Mike Lesk and Eric Schmidtand described in 1975, is the standard lexical analyzer generator on many UNIX systems, and a tool exhibiting its behaviour is specified as part of the POSIX standard.

Lex reads an input stream specifying the lexical analyzer and outputs source code implementing the lexer in the C programming language. The UNIX utility lex parses a file of characters. It uses regular expression matching; typically, it is used to ‘tokenize’ the contents of the file.

First phase in the compiler development is tokenization. That is, the input or source Program is decomposed into tokens which are also known as lexeme’s (thus this phase is Also called as lexical analysis). Each language will be having its own lexical rules. Only After extracting the tokens, syntactical analysis is carried out to test the validity of the expression in terms of that language specific grammatical rules.

After this, actual transformation to machine language (via assembly language in the case of C language) takes place. Lex library is widely used for lexical analysis.

However, in the recent years, under Free Software Foundation license, [Flex (fast lexical analyzer)](https://github.com/westes/flex "Flex Repository on GitHub") is distributed along with Gnu compiler package which can be effectively used for lexical analysis purpose.
