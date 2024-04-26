consonant[b-df-h-np-tv-zB-DF-HJ-NP-TV-Z]
vowel[aeiouAEIOU]
%{
  #include <stdio.h>
%}

%%
^{vowel}  printf("Vowel");
^{consonant} printf("Consonant");
%%

int main() {
  yylex();
}
