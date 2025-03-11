#### SECCIÓN 5.1 

5.1. Los planificadores de CPU están diseñados alrededor de 2 tipos de ráfagas. ¿Cuáles son? 

 - Ráfagas de proceso orientado a CPU (largas)
 - Ráfagas de proceso orientado a I/O (cortas)

5.2. (Verdadero / Falso) Con planificación preemptive, cuando un proceso cambia de estado de ejecución al estado listo, puede perder el control de la CPU. 

Verdadero

---

#### SECCIÓN 5.2 

5.3. Mencione al menos 3 criterios diferentes para diseñar un algoritmo de planificación de 
CPU. 

- Uso de la CPU
- Throughput de procesos
- Tiempo de turnaround
- Tiempo de espera en la cola de listos
- Tiempo de respuesta desde que es sometido hasta la primera respuesta

---

#### SECCIÓN 5.3 

5.4. ¿Cuál algoritmo de planificación asigna la CPU al proceso con la prioridad más alta? 

El algoritmo de planificación por prioridades

- First Come For Served (FCFS): simple, con cola FIFO
- Shortest Job First (SJF): no se puede implementar
- Round Robin: con cola circular
- Planificación por prioridades

5.5. (Verdadero / Falso) El algoritmo de planificación de colas multinivel con feedback permite que los procesos migren entre las diferentes colas. 

Verdadero

5.6. ¿Cuál algoritmo de planificación asigna la CPU al proceso que primero la solicite? 

First Come For Served

5.7. ¿Cuál algoritmo de planificación asigna la CPU a un proceso únicamente por un período fijo de tiempo (quantum)? 

Round Robin

5.8. ¿Cuál algoritmo de planificación asigna la CPU al proceso con la ráfaga más corta? 

Shortest Job First 

---
#### SECCIÓN 5.4 

5.9. Cuando el sistema operativo soporta hilos de kernel, ¿se planifican procesos o hilos? 

cx

---

#### SECCIÓN 5.5 

5.10. ¿Cuáles son las dos formas de afinidad de procesador? Explique brevemente. 

Afinidad Soft y hard

5.11. Los procesadores que manejan varios hilos en hardware soportan dos niveles de 
planificación. Explique brevemente este concepto. 

Como estos procesadores tienen varios hilos de hardware, se tiene que planificar cuál hilo corre en cada CPU lógica y además, cual hilo de hardware se está ejecutando.

---

#### SECCIÓN 5.6 
5.12. ¿Cuáles son los dos tipos generales de planificación en tiempo real? 

- Planificación soft: no hay garantía de cuando se van a planificar los procesos
- Planificación hard: Todo proceso debe ser servido antes de su deadline


---

#### SECCIÓN 5.7 
5.13. Mencione el nombre del algoritmo de planificación por omisión para sistemas Linux. 

Completely Fair Scheduler (CFS)

5.14. (Verdadero / Falso) A un hilo Windows se le asignan una clase de prioridad, y una 
prioridad relativa dentro de dicha clase. 

Verdadero

---

#### SECCIÓN 5.8. 

5.15. (Verdadero / Falso) El modelamiento determinístico y las simulaciones son estrategias 
similares para evaluar los algoritmos de planificación.

Falso, la simulación está más relacionada con la teoría de colas. La simulación complementa el modelo determinista porque tiene en cuenta los casos extremos o excepciones.

