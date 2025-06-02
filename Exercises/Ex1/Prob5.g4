grammar Prob5;

@header {
    package Ex1;
}

WS : [ \t\n\r\f]+ -> skip ;

RANDOM: [0-9][0-9][0-9][0-9][0-9] ;

YEAR
    : '2019'RANDOM
    | '202'[0-4]RANDOM
    ;
NOTA
    : [0-9]
    | '1'[0-9]
    | '20'
    ;

program: YEAR NOTA (', 'YEAR NOTA)* ;
