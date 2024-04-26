%{
    void display(char[], int);
%}

%%
    [a-zA-z]+[\n\t]{
    	int flag = 1;
    	display(yytext, flag);
    	return 0;
	}
	[0-9]+[\n\t] {
        int flag = 2;
        display(yytext, flag);
        return 0;
    }
	.+{
        int flag = 0;
        display(yytext, flag);
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
