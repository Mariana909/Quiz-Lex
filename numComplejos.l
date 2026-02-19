%{
#include <stdio.h>
DIGITO [0-9]
DECIMAL {DIGITO}+\.{DIGITO}+
ENTERO {DIGITO}+
NUMERO ({DECIMAL}|{ENTERO})([eE][+-]?{ENTERO})?
%}
%%
{NUMERO}[iIjJ] {printf("ACEPTA\");/* Complejos Puros*/}
{NUMERO}[+-]{NUMERO}[iIjJ] {printf("ACEPTA\");/* Complejos con parte real*/}
[\t\n] {}
. {printf("NO ACEPTA\n");}
%%
