%{
#include <stdio.h>
%}
DIGITO [0-9]
DECIMAL {DIGITO}+\.{DIGITO}+
ENTERO {DIGITO}+
NUMERO ({DECIMAL}|{ENTERO})([eE][+-]?{DECIMAL | ENTERO})?
%%
^{NUMERO}?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos Puros*/}
^[+-]?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos Puros*/}
^{NUMERO}[+-]{NUMERO}?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos con parte real*/}
[\t\n] {}
.*\n {printf("NO ACEPTA %s\n",yytext);}
%%
