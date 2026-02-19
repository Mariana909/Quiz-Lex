%{
#include <stdio.h>
DIGITO [0-9]
DECIMAL {DIGITO}+\.{DIGITO}+
ENTERO {DIGITO}+
NUMERO ({DECIMAL}|{ENTERO})([eE][+-]?{ENTERO})?
%}
%%
{NUMERO}[iIjJ] {printf("ACEPTA\n");/* Complejos Puros*/}
{NUMERO}[+-]{NUMERO}[iIjJ] {printf("ACEPTA\n");/* Complejos con parte real*/}
[\t\n] {}
. {printf("NO ACEPTA\n");}
%%
