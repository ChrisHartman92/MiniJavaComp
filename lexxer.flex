import java_cup.runtime.Symbol;

%%

%public
%class lexxer
%cup
%implements sym
%line
%column
%ignorecase
%eofclose

%{
	private void error(String message)
	{
		System.err.println("Error at line " + (yyline+1) + ", column " + (yycolumn+1) + " : " + message);
	}
%}

%eofval{
%eofval}

Identifier = [a-zA-Z_][a-zA-Z0-9_]*
Integer = 0 | -?[1-9][0-9]*
WhiteSpace = [\r\n\z\t\f ]

%%

//keywords

"class"		{return new Symbol(CLASS,yyline+1,yycolumn+1);}
"public"	{return new Symbol(PUBLIC,yyline+1,yycolumn+1);}	
"static"	{return new Symbol(STATIC,yyline+1,yycolumn+1);}
"void"		{return new Symbol(VOID,yyline+1,yycolumn+1);}
"main"		{return new Symbol(MAIN,yyline+1,yycolumn+1);}
"String"	{return new Symbol(STRING,yyline+1,yycolumn+1);}
"extends"	{return new Symbol(EXTENDS,yyline+1,yycolumn+1);}
"return"	{return new Symbol(RETURN,yyline+1,yycolumn+1);}
"int"		{return new Symbol(INT,yyline+1,yycolumn+1);}
"boolean"	{return new Symbol(BOOL,yyline+1,yycolumn+1);}
"if"		{return new Symbol(IF,yyline+1,yycolumn+1);}
"else"		{return new Symbol(ELSE,yyline+1,yycolumn+1);}
"while"		{return new Symbol(WHILE,yyline+1,yycolumn+1);}
"System.out.println"	{return new Symbol(PRINT,yyline+1,yycolumn+1);}
"true"		{return new Symbol(TRUE,yyline+1,yycolumn+1);}
"false"		{return new Symbol(FALSE,yyline+1,yycolumn+1);}
"this"		{return new Symbol(THIS,yyline+1,yycolumn+1);}
"new"		{return new Symbol(NEW,yyline+1,yycolumn+1);}
"!"		{return new Symbol(EXCL,yyline+1,yycolumn+1);}
"="		{return new Symbol(EQUALS,yyline+1,yycolumn+1);}
"&&"		{return new Symbol(AND,yyline+1,yycolumn+1);}
"<"		{return new Symbol(LESS,yyline+1,yycolumn+1);}
"+"		{return new Symbol(PLUS,yyline+1,yycolumn+1);}
"-"		{return new Symbol(MINUS,yyline+1,yycolumn+1);}
"*"		{return new Symbol(TIMES,yyline+1,yycolumn+1);}
","		{return new Symbol(COMMA,yyline+1,yycolumn+1);}
";"		{return new Symbol(SEMI,yyline+1,yycolumn+1);}
"{"		{return new Symbol(LBRACE,yyline+1,yycolumn+1);}
"}"		{return new Symbol(RBRACE,yyline+1,yycolumn+1);}
"("		{return new Symbol(LPAR,yyline+1,yycolumn+1);}
")"		{return new Symbol(RPAR,yyline+1,yycolumn+1);}
"["		{return new Symbol(LBRACK,yyline+1,yycolumn+1);}
"]"		{return new Symbol(RBRACK,yyline+1,yycolumn+1);}
{Identifier}	{return new Symbol(CLASS,yyline+1,yycolumn+1,yytext());}
{Integer}	{return new Symbol(CLASS,yyline+1,yycolumn+1, yytext());}
{WhiteSpace}	{}
.|\n		{}
