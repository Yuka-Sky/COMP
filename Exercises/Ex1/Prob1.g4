grammar Prob1;

@header {
    package Ex1;
}

CONTENT
    : [0-9]
    | [1-9][0-9]
    | '1'[0-9][0-9]
    | '2'[0-4][0-9]
    | '25'[0-5]
;
IP: CONTENT'.'CONTENT'.'CONTENT'.'CONTENT;
WS : [ \t\n\r\f]+ -> skip ;

parsing
    : IP EOF
    | IP('\n'IP) EOF
    ;