%{
#include <stdio.h>
%}
%%
^-?(\d+(\.\d+)?|\.\d+)([+-]?\d+(\.\d+)?|\.\d+)?i$ {printf("ACEPTA");}
. {printf("NO ACEPTA");}
%%
