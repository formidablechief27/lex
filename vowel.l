%{
  #include <stdio.h>
%}

%%
^[aeiouAEIOU]  { printf("Vowel\n"); }
^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] { printf("Consonant\n"); }
%%

int main() {
  yylex();
}
