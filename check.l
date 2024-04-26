%{
    #include <stdio.h>
    void display(char[], int);
%}

%%
    [a-zA-z]+{
    	display(yytext, 1);
    	return 0;
	}
	[0-9]+{
        display(yytext, 2);
        return 0;
    }
	.+{
        display(yytext, 0);
        return 0;
    }
%%

void display(char a[], int flag) {
    if(flag == 1) printf("It is a word %s", a);
    else if(flag == 2) printf("It is a number %s", a);
    else printf("It is a string %s", a);
}

int main () {
    yylex();
}
