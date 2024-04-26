%{
  int c1 = 0, c2 = 0, c3 = 0;
%}

%%
\$ return 0;
\n c1++;
([a-zA-Z0-9])+ {c2++; c3 += yyleng;}
%%

int main() {
  yylex();
  printf("%d %d %d", c1, c2, c3);
}
