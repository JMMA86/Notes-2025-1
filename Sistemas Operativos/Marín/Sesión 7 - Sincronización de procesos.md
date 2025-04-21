## Respuestas a las preguntas de chequeo – Capítulos 6 y 7

### 1. ¿En qué consiste una condición de carrera?
R/ Una condición de carrera ocurre cuando dos o más procesos intentan acceder y modificar una variable compartida al mismo tiempo, generando resultados inconsistentes debido al entrelazamiento de sus ejecuciones.

### 2. ¿Qué es una sección crítica? ¿En qué consiste el problema de la sección crítica?
R/ Una **sección crítica** es la parte del código donde un proceso accede a recursos compartidos que pueden ser modificados simultáneamente por otros procesos.  
El **problema de la sección crítica** consiste en diseñar un mecanismo que garantice que solo un proceso pueda ejecutar su sección crítica a la vez, evitando condiciones de carrera.

### 3. ¿Cuáles son las tres condiciones de solución del problema de la sección crítica?
R/ Las tres condiciones son:
- **Exclusión mutua**: Solo un proceso a la vez puede acceder a la sección crítica.
- **Progreso**: Si varios procesos desean entrar a la sección crítica, se debe garantizar que alguno de ellos pueda hacerlo en un tiempo finito.
- **Espera acotada**: Ningún proceso debe esperar indefinidamente para entrar a su sección crítica.

### 4. Describa brevemente la solución de Peterson al problema de la sección crítica.
R/ La **solución de Peterson** es un algoritmo para garantizar la sincronización entre dos procesos. Cada proceso indica su intención de entrar a la sección crítica con una variable `flag`, y un turno compartido (`turn`) decide cuál proceso entra primero. Aunque cumple las condiciones necesarias, no es viable en procesadores modernos debido a la reorganización de instrucciones por el compilador o el hardware.

### 5. ¿Cuáles son los tres apoyos de hardware a la sincronización? Descríbalos brevemente.
R/
- **Barreras de memoria**: Aseguran que las instrucciones se ejecuten en un orden específico.
- **Instrucciones atómicas de intercambio (compare-and-swap)**: Permiten modificar valores en memoria sin interrupciones.
- **Variables atómicas**: Garantizan que solo un proceso pueda modificar un valor hasta que termine su operación.

### 6. ¿Qué es un cerrojo de exclusión mutua (mutex lock)? ¿Cuáles son sus instrucciones primitivas?
R/ Un **mutex (Mutual Exclusion Lock)** es un mecanismo de sincronización que impide que más de un proceso acceda simultáneamente a la sección crítica.  
Sus instrucciones primitivas son:
- **Acquire**: Bloquea el recurso si está disponible; de lo contrario, el proceso espera.
- **Release**: Libera el recurso para que otros procesos puedan acceder.

### 7. ¿Qué es un semáforo? ¿Cuáles son sus instrucciones primitivas?
R/ Un **semáforo** es una estructura de datos utilizada para la sincronización de procesos, basada en un contador.  
Sus instrucciones primitivas son:
- **Wait (P o down)**: Disminuye el valor del semáforo. Si el valor es cero o negativo, el proceso espera.
- **Signal (V o up)**: Incrementa el valor del semáforo, permitiendo que otro proceso continúe.

### 8. ¿Cuál es la diferencia entre un semáforo contador y un semáforo binario?
R/
- **Semáforo contador**: Puede tomar valores mayores que uno, permitiendo que varios procesos accedan simultáneamente.
- **Semáforo binario**: Solo puede tomar valores 0 o 1, funcionando de manera similar a un mutex.

### 9. Describa brevemente la utilidad de un monitor.
R/ Un **monitor** es una abstracción de sincronización que encapsula variables compartidas y garantiza que solo un proceso pueda ejecutarlas simultáneamente. En lenguajes como Java, los métodos `synchronized` son un ejemplo de monitores.

### 10. Describa el problema del buffer limitado (productores y consumidores).
R/ En este problema, un **productor** genera datos y los almacena en un buffer compartido, mientras que un **consumidor** los extrae. Se requiere sincronización para evitar que el consumidor lea datos inexistentes o que el productor sobrescriba datos antes de ser consumidos.

### 11. Describa el problema de los lectores y escritores.
R/ Este problema ocurre cuando múltiples **lectores** quieren acceder a un recurso simultáneamente, pero los **escritores** requieren acceso exclusivo. Se utilizan mecanismos como semáforos para evitar condiciones de carrera y priorizar lectores o escritores según el caso.

### 12. ¿Cuáles mecanismos tiene el lenguaje Java como apoyo a la sincronización de procesos?
R/ Java ofrece varios mecanismos:
- **`synchronized`**: Para métodos y bloques críticos.
- **`Lock` (de `java.util.concurrent.locks`)**: Permite mayor control que `synchronized`.
- **Semáforos (`Semaphore`)**: Para controlar acceso concurrente con múltiples permisos.
- **`AtomicVariables`**: Variables que garantizan operaciones atómicas sin bloqueos.
