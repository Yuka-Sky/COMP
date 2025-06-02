grammar Prob3;

@header {
    package Ex1;
}

FIRST: [a-zA-Z0-9] ;
MIDDLE
    : [a-zA-Z0-9]
    | '-'
    | '_'
    | '.'
    ;
FROM
    : 'gmail'
    | 'outlook'
    | 'mail'
    | 'edu.fe.up'
    | 'up'
    ;
SUFIX
    : 'com'
    | 'org'
    | 'gov'
    | 'jp'
    | 'br'
    | 'pt'
    ;

MAIL: FIRST MIDDLE*'@'FROM'.'SUFIX ;

program: MAIL(', 'MAIL)+ EOF;