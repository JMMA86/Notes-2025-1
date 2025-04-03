## Respuestas a las preguntas de chequeo – Capítulo 10

### 1. (Verdadero/Falso) Un programa no requiere estar completo en memoria para poderse ejecutar.  
R/ Verdadero. En sistemas de **paginación por demanda**, solo se cargan las páginas necesarias en memoria durante la ejecución.

### 2. (Verdadero/Falso) El espacio de direcciones físicas es cuando menos tan grande como el espacio de direcciones virtuales.  
R/ Falso. El espacio de direcciones **virtuales** puede ser mucho mayor que el físico, ya que incluye páginas almacenadas en el backing store.

### 3. ¿Cuándo ocurre un fallo de página?  
R/ Ocurre cuando un proceso intenta acceder a una página que está marcada como **inválida** en la tabla de páginas (no está en memoria física), lo que obliga al sistema a cargarla desde el disco.

### 4. (Verdadero/Falso) En un sistema de paginación pura por demanda, una página no se sube a memoria sino hasta que se la necesita.  
R/ Verdadero. La paginación por demanda carga páginas solo cuando son referenciadas, optimizando el uso de memoria.

### 5. ¿Cuál es el algoritmo más sencillo de reemplazo de páginas?  
R/ El algoritmo **FIFO (First-In, First-Out)**, que reemplaza la página que lleva más tiempo en memoria.

### 6. ¿Cuál es el nombre del algoritmo de reemplazo de páginas que reemplaza la página que no será usada por el período más largo de tiempo?  
R/ El algoritmo **Óptimo (OPT)**, que requiere conocimiento futuro de las referencias a páginas (es teórico).

### 7. ¿Cuál algoritmo de reemplazo de páginas se puede implementar empleando una pila, o contadores?  
R/ El algoritmo **LRU (Least Recently Used)**, que puede implementarse con una pila para trackear el orden de uso o contadores para registrar el tiempo desde el último acceso.

### 8. (Verdadero/Falso) Cuando se implementa LRU, casi siempre se emplean algoritmos de aproximación.  
R/ Verdadero. Implementar LRU exacto es costoso, por lo que se usan aproximaciones como **LRU con bits de referencia** o **algoritmos de envejecimiento**.

### 9. ¿Cuál es la diferencia fundamental entre reemplazo local y global de páginas?  
R/  
- **Reemplazo local:** Solo considera las páginas del proceso que generó el fallo.  
- **Reemplazo global:** Considera todas las páginas en memoria, independientemente del proceso.

### 10. ¿Cuál término se emplea para describir la situación en la que un proceso pasa más tiempo paginando que ejecutándose?  
R/ Se llama **"thrashing"** (sobrepaginación). Ocurre cuando el sistema está sobrecargado y dedica más tiempo a intercambiar páginas que a ejecutar código útil.

### 11. ¿Cuál término se emplea para describir el conjunto de páginas que está referenciando un proceso actualmente? 
R/ Se denomina **"working set"** (conjunto de trabajo). Representa las páginas activamente usadas por un proceso en un intervalo de tiempo.

### 12. (Verdadero/Falso) En la paginación pura por demanda, la tasa inicial de fallos de página es muy alta.  
R/ Verdadero. Al inicio, el proceso no tiene páginas en memoria, lo que genera múltiples fallos hasta cargar su working set inicial.