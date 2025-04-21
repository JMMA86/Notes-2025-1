## Respuestas a las preguntas de chequeo – Capítulo 9

### 1. ¿Cuál pareja de registros se puede emplear para proporcionar una forma simple de protección de memoria?
R/ La pareja de registros utilizada es el **registro base** y el **registro límite**. El registro base contiene la dirección física inicial del proceso, y el registro límite define el tamaño máximo del proceso. Juntos, protegen el espacio de memoria de un proceso evitando accesos ilegales.

### 2. Mencione los tres tiempos en los que el binding de direcciones puede ocurrir. 
R/  
1. **Tiempo de compilación:** Las direcciones son absolutas y se definen al compilar el programa.  
2. **Tiempo de carga:** Las direcciones son relativas y se asignan cuando el programa se carga en memoria.  
3. **Tiempo de ejecución:** Las direcciones pueden reubicarse dinámicamente durante la ejecución del programa.

### 3. (Verdadero/Falso) A una dirección de memoria generada por la CPU se la conoce como dirección física.  
R/ Falso. La dirección generada por la CPU es una **dirección lógica** (o virtual). La dirección física es la traducción de esta dirección lógica realizada por el MMU (Memory Management Unit).

### 4. ¿Cuál es el dispositivo de hardware que mapea las direcciones virtuales a las físicas?  
R/ El dispositivo es la **MMU (Memory Management Unit)**. Esta unidad traduce direcciones lógicas a físicas utilizando registros como el de relocalización.

### 5. ¿Cuáles son las estrategias para seleccionar un hueco de memoria libre?  
R/  
- **Primer ajuste:** Asigna el primer hueco suficientemente grande.  
- **Mejor ajuste:** Asigna el hueco más pequeño que cumpla con el requerimiento.  
- **Peor ajuste:** Asigna el hueco más grande disponible.

### 6. ¿Cuáles son las dos formas de fragmentación? Explique brevemente.  
R/  
- **Fragmentación externa:** Ocurre cuando hay huecos de memoria libres pero no contiguos, lo que impide asignar memoria a procesos grandes.  
- **Fragmentación interna:** Ocurre cuando la memoria asignada a un proceso es mayor que la solicitada, dejando partes sin usar dentro de las páginas o marcos.

### 7. ¿Cuáles son las dos partes de una dirección generada por la CPU? 
R/ Una dirección generada por la CPU se divide en:  
1. **Número de página (o segmento).**  
2. **Desplazamiento (offset)** dentro de la página o segmento.

### 8. ¿Qué contiene cada entrada de la tabla de páginas?  
R/ Cada entrada contiene:  
- **Número de marco de página** (dirección física).  
- **Bit de válido/inválido** (indica si la página está en memoria).  
- **Bits de protección** (lectura/escritura/ejecución).  
- **Bits de uso** (para algoritmos de reemplazo).

### 9. (Verdadero/Falso) Puede ocurrir fragmentación en un sistema que maneje paginación.  
R/ Verdadero. En sistemas de paginación, puede ocurrir **fragmentación interna** cuando el espacio asignado a una página no se utiliza completamente.

### 10. ¿Cuál es el término que especifica que un número de página no está presente en el TLB?  
R/ Se denomina **"TLB miss"** (fallo en el TLB). Cuando ocurre, el sistema debe consultar la tabla de páginas en memoria principal.

### 11. Si un offset de página es de 13 bits, ¿qué tan grande es la página (en bytes)?  
R/ Un offset de 13 bits puede direccionar \(2^{13} = 8192\) posiciones. Por lo tanto, el tamaño de la página es **8 KB** (8192 bytes).

### 12. ¿En qué consiste la partición/archivo de swap (backing store)?  
R/ Es un espacio en el disco duro reservado para el **swapping**, donde el sistema operativo mueve páginas o procesos completos que no caben en la memoria física. Permite extender la memoria virtual pero con un acceso más lento.

### 13. (Verdadero / Falso) Los sistemas móviles generalmente emplean swapping.  
R/ Falso. Los sistemas móviles suelen evitar el swapping debido a limitaciones de rendimiento y desgaste de almacenamiento flash. En su lugar, usan técnicas como la **compresión de memoria**.