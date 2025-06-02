grammar Prob4;

@header {
    package Ex1;
}

WS : [ \t\n\r\f]+ -> skip ;

VAR : 'var' ;

TYPES
    : 'integer'
    | 'real'
    ;

VARIAB : [a-z][0-9a-zA-Z]* | [a-z][0-9a-zA-Z]*'['[0-9]+']' ;

valid : VAR VARIAB (',' VARIAB)* ':' TYPES ';' ;

program: valid ('\n'valid)* EOF ;