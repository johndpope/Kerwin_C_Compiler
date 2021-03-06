#include <stdio.h>
#include <stdlib.h>
//                                                                       Last Change:  2016-12-22 22:12:59
#include <memory.h>
#include <string.h>

//这个单独做成一个程序是因为这个是四则运算
/**
<expr> ::= <term> <expr_tail>
<expr_tail> ::= + <term> <expr_tail>
              | - <term> <expr_tail>
              | <empty>
<term> ::= <factor> <term_tail>
<term_tail> ::= * <factor> <term_tail>
              | / <factor> <term_tail>
              | <empty>
<factor> ::= ( <expr> )
           | Num

**/
//
//
enum {Num};
int token;
int token_val;
char *line = NULL;
char *src = NULL;

int expr();
void match(int tk);
int factor() {
    int value = 0;
    if (token == '(') {
        match('(');
        value = expr();
        match(')');
    } else {
        value = token_val;
        match(Num);
    }
    return value;
}
int term_tail(int lvalue) {
    if (token == '*') {
        match('*');
        int value = lvalue * factor();
        return term_tail(value);
    } else if (token == '/') {
        match('/');
        int value = lvalue / factor();
        return term_tail(value);
    } else {
        return lvalue;
    }
}
int term() {
    int lvalue = factor();
    return term_tail(lvalue);
}
int expr_tail(int lvalue) {
    if (token == '+') {
        match('+');
        int value = lvalue + term();
        return expr_tail(value);
    } else if (token == '-') {
        match('-');
        int value = lvalue - term();
        return expr_tail(value);
    } else {
        return lvalue;
    }
}
int expr() {
    int lvalue = term();
    return expr_tail(lvalue);
}


void next() {

    // skip white space
    while (*src == ' ' || *src == '\t') {
        src ++;
    }
    token = *src++;
    if (token >= '0' && token <= '9' ) {
        token_val = token - '0';
        token = Num;
        while (*src >= '0' && *src <= '9') {
            token_val = token_val*10 + *src - '0';
            src ++;
        }
        return;
    }
}
void match(int tk) {
    if (token != tk) {
        printf("expected token: %d(%c), got: %d(%c)\n", tk, tk, token, token);
        exit(-1);
    }
    next();
}

int main(int argc, char *argv[])
{
    size_t linecap = 0;
    size_t linelen;
    src="4+2*3";
    next();
    printf("%d\n", expr());
    /**
    while ((linelen = getline(&line, &linecap, stdin)) > 0) {
        src = line;
        next();
        printf("%d\n", expr());
    }
    **/
    return 0;
}
