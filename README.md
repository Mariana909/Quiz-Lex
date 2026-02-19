# Números Complejos con Flex

Reconocedor léxico de números complejos implementado con Flex.

## Requisitos

- **Flex** — generador de analizadores léxicos

### Instalación de Flex
```bash
sudo apt update
sudo apt install flex
```

---

## Versión Explícita (`numComplejos.l`)

Muestra cada expresión evaluada e indica si es aceptada o no.

### Compilación
```bash
flex numComplejos.l
gcc lex.yy.c -o numC -lfl
```

### Ejecución

**Desde un archivo:**
```bash
# Con redireccionamiento
./numC < entrada.txt
```

**Desde la terminal (entrada manual):**
```bash
./numC
```

### Ejemplo

| Entrada  | Salida            |
|----------|-------------------|
| `2+7i`   | `ACEPTA 2+7i`     |

---

## Versión Implícita (`numComplejosI.l`)

Indica por cada expresión si es aceptada o no, **sin mostrar explícitamente** cuál expresión fue procesada.

### Compilación
```bash
flex numComplejosI.l
gcc lex.yy.c -o numCI -lfl
```

### Ejecución

**Desde un archivo:**
```bash
./numCI entrada.txt
# o con redireccionamiento
./numCI < entrada.txt
```

**Desde la terminal (entrada manual):**
```bash
./numCI
```

### Ejemplo

| Entrada | Salida      |
|---------|-------------|
| `2+7i`  | `ACEPTA`    |
