%{
#include <stdio.h>
int yylex();
void yyerror(char *s);
extern FILE *yyin;  /* Variable que Flex usa para la entrada */
%}
DIGITO [0-9]
DECIMAL {DIGITO}+\.{DIGITO}+
ENTERO {DIGITO}+
NUMERO [+-]?({DECIMAL}|{ENTERO})
POTENCIA {NUMERO}?([eE]{NUMERO})?
%%
^{POTENCIA}?[iIjJ]$ {printf("ACEPTA\n");/* Complejos Puros*/}
^[+-]?[iIjJ]$ {printf("ACEPTA\n");/* Complejos Puros*/}
^{POTENCIA}[+-]{POTENCIA}?[iIjJ]$ {printf("ACEPTA\n");/* Complejos con parte real*/}
[\t\n] {}
.*\n {printf("NO ACEPTA\n");}
%%
int main(int argc, char **argv) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            fprintf(stderr, "Error: No se puede abrir el archivo '%s'\n", argv[1]);
            return 1;
        }
        printf("Procesando archivo: %s\n\n", argv[1]);
    } else {
        printf("Numero Complejos - Ctrl+D para salir\n");
        yyin = stdin;
    }
    
    yylex();
    
    if (yyin != stdin) {
        fclose(yyin);
    }
    
    return 0;
}
