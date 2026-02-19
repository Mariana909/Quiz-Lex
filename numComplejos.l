%{
#include <stdio.h>
%}
DIGITO [0-9]
DECIMAL {DIGITO}+\.{DIGITO}+
ENTERO {DIGITO}+
NUMERO [+-]?({DECIMAL}|{ENTERO})
POTENCIA {NUMERO}?([eE]{NUMERO})?
%%
^{POTENCIA}?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos Puros*/}
^[+-]?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos Puros*/}
^{POTENCIA}[+-]{POTENCIA}?[iIjJ]$ {printf("ACEPTA %s\n",yytext);/* Complejos con parte real*/}
[\t\n] {}
.*\n {printf("NO ACEPTA %s\n",yytext);}
%%
