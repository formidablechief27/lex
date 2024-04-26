%{
  int c1 = 0, c2 = 0, c3 = 0;
%}

%%
\$   return 0;
\n   c1++;
if|else|switch|public|void|static {printf("Keyword %s", yytext);}
[+|-|*|%|/] {printf("Operator %s", yytext);}
%%

int yywrap(){return 1;}

int main() {
  yylex();
}
