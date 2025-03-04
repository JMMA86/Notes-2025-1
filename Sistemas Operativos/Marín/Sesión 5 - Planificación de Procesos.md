## **Sección 5.1**
### 5.1. Los planificadores de CPU están diseñados alrededor de 2 tipos de ráfagas. ¿Cuáles son?
Los dos tipos de ráfagas son:
- **Ráfagas de CPU:** Cuando el proceso está ejecutando instrucciones en la CPU.
- **Ráfagas de I/O:** Cuando el proceso espera la finalización de una operación de entrada/salida.

### 5.2. (Verdadero / Falso) Con planificación preemptive, cuando un proceso cambia de estado de ejecución al estado listo, puede perder el control de la CPU.
**Verdadero.** En la planificación preemptive, un proceso en ejecución puede ser interrumpido y enviado a la cola de listos si otro proceso con mayor prioridad necesita la CPU.

---

## **Sección 5.2**
### 5.3. Mencione al menos 3 criterios diferentes para diseñar un algoritmo de planificación de CPU.
1. **Uso de CPU:** Mantener la CPU ocupada en un rango óptimo (40%-90%).
2. **Throughput:** Número de procesos completados por unidad de tiempo.
3. **Tiempo de espera:** Tiempo total que un proceso permanece en la cola de listos antes de ser ejecutado.

---

## **Sección 5.3**
### 5.4. ¿Cuál algoritmo de planificación asigna la CPU al proceso con la prioridad más alta?
El **algoritmo de planificación por prioridades** asigna la CPU al proceso con la prioridad más alta.

### 5.5. (Verdadero / Falso) El algoritmo de planificación de colas multinivel con feedback permite que los procesos migren entre las diferentes colas.
**Verdadero.** En este esquema, los procesos pueden moverse entre colas de diferentes prioridades según su comportamiento y tiempo de espera.

### 5.6. ¿Cuál algoritmo de planificación asigna la CPU al proceso que primero la solicite?
El **algoritmo First Come, First Served (FCFS)** asigna la CPU al primer proceso en la cola de listos.

### 5.7. ¿Cuál algoritmo de planificación asigna la CPU a un proceso únicamente por un período fijo de tiempo (quantum)?
El **algoritmo Round Robin (RR)** asigna la CPU a cada proceso durante un intervalo de tiempo fijo (quantum).

### 5.8. ¿Cuál algoritmo de planificación asigna la CPU al proceso con la ráfaga más corta?
El **algoritmo Shortest Job First (SJF)** asigna la CPU al proceso con la ráfaga de CPU más corta.

---

## **Sección 5.4**
### 5.9. Cuando el sistema operativo soporta hilos de kernel, ¿se planifican procesos o hilos?
Se planifican **hilos de kernel**, ya que estos representan las unidades de ejecución dentro del sistema operativo.

---

## **Sección 5.5**
### 5.10. ¿Cuáles son las dos formas de afinidad de procesador? Explique brevemente.
1. **Afinidad suave (soft affinity):** El sistema operativo intenta mantener un proceso en el mismo núcleo, pero sin garantizarlo.
2. **Afinidad estricta (hard affinity):** El proceso está obligado a ejecutarse en un núcleo específico para aprovechar mejor la caché.

### 5.11. Los procesadores que manejan varios hilos en hardware soportan dos niveles de planificación. Explique brevemente este concepto.
1. **Planificación de hilos en CPU lógica:** Se decide qué hilo de ejecución se asigna a cada CPU lógica.
2. **Planificación dentro de un núcleo con múltiples hilos:** Se elige qué hilo de hardware ejecutará instrucciones en un momento dado, evitando esperas innecesarias por acceso a memoria.

---

## **Sección 5.6**
### 5.12. ¿Cuáles son los dos tipos generales de planificación en tiempo real?
1. **Planificación en tiempo real suave (soft real-time):** No garantiza que las tareas se ejecuten antes de su deadline, pero trata de priorizarlas.
2. **Planificación en tiempo real estricta (hard real-time):** Garantiza que las tareas críticas se ejecuten antes del deadline. Si no se cumple, el sistema falla.

---

## **Sección 5.7**
### 5.13. Mencione el nombre del algoritmo de planificación por omisión para sistemas Linux.
El algoritmo de planificación por defecto en Linux es **Completely Fair Scheduler (CFS)**.

### 5.14. (Verdadero / Falso) A un hilo Windows se le asignan una clase de prioridad, y una prioridad relativa dentro de dicha clase.
**Verdadero.** Windows asigna a cada hilo una **clase de prioridad** y una **prioridad relativa** dentro de la clase, con valores de 1 a 31.

---

## **Sección 5.8**
### 5.15. (Verdadero / Falso) El modelamiento determinístico y las simulaciones son estrategias similares para evaluar los algoritmos de planificación.
**Falso.** El modelamiento determinístico usa fórmulas predefinidas, mientras que las simulaciones permiten evaluar el comportamiento en condiciones más realistas utilizando teoría de colas y modelos probabilísticos.
