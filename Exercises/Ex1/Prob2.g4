grammar Prob2;

@header {
    package Ex1;
}

REG
    : 'x'[0-9]
    | 'x'[1-2][0-9]
    | 'x3'[0-2]
    ;

NUMB
    : '0'
    | [1-9]
    | [1-9][0-9]
    | [1-9][0-9][0-9]
    | '1'[0-9][0-9][0-9]
    | '20'[0-3][0-9]
    | '204'[0-8]
    | '-'[1-9]
    | '-'[1-9][0-9]
    | '-'[1-9][0-9][0-9]
    | '-1'[0-9][0-9][0-9]
    | '-20'[0-3][0-9]
    | '-204'[0-7]
    ;

OFFSET: NUMB'('REG')' ;

VALID
    : 'add 'REG', 'REG', 'REG
    | 'addi 'REG', 'REG', 'NUMB
    | 'lw 'REG', 'OFFSET
    | 'sw 'REG', 'OFFSET
    ;

program
    : VALID EOF
    | VALID('\n'VALID) EOF
    ;