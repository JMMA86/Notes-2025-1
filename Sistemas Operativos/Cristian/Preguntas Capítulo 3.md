#####  3.1. ¿Cuáles son los 4 componentes de un proceso?

- Text: código máquina
- Data: memoria global
- Heap: memoria dinámica
- Stack: llamados a funciones y paso de datos

#####  3.2. Mencione al menos tres estados en los que un proceso pueda estar.

![[Pasted image 20250215074526.png | 500]]

- New
- Ready
- Running
- Waiting
- Terminated

#####  3.3. Defina qué es un bloque de control de proceso (PCB).

Es una etructura que contiene información sobre un proceso:
- State
- Number (ID)
- Program Counter
- Registers
- Memory Limits
- Open files list
- Thread list

#####  3.4. ¿Cuál es otro nombre para un proceso?

También se le conoce como *tarea* o *job* en ciertos contextos.

##### 3.5. (Verdadero / Falso) La mayoría de los sistemas operativos permiten que un proceso posea múltiples hilos.

Verdadero, esto es permitido en la mayoría de los SO, incluyendo Windows, Linux, MacOS y Unix.

### Sección 3.2

##### 3.6. Explique el papel del planificador (scheduler) de procesos.

El scheduler gestiona los procesos que se están ejecutando o interrumpidos, manteniendolos en una cola. Este decide cuales procesos deben ejecutarse en cada momento, asegurando que la CPU se mantiene siempre ocupada.

##### 3.7. Explique en qué consiste el grado de multiprogramación.

Se refiere a la rapidez con que cambia el procesador entre distintos programas, dando la ilusión de que se están corriendo en paralelo, a esto último se le llama multitarea.

##### 3.8. ¿Cuál es la expresión para referirse a grabar el estado de un proceso y restaurar el estado de otro?

Cambio de contexto, se guarda toda la información del proceso en el PCB dle proceso actual y se restaura la información del PCB del proceso siguiente.

### SECCIÓN 3.3

##### 3.9. Explique qué es un identificador de proceso (PID).

Un número único asignado por el SO a cada proceso en ejecución, este se usa para rastrear y gestionar los procesos en el sistema.

##### 3.10. ¿Cuál es el system call que crea un proceso en UNIX/Linux?

El System Call `fork()`, que crea una copia exacta del proceso que realizó la llamada.

##### 3.11. ¿Cuál es el system call que crea un proceso en Windows?

El System Call `CreateProcess()`, este no crea una copia exacta, pues pide más información como un ejecutable, argumentos y configuraciones de entorno para crear un proceso independiente.

##### 3.12. ¿Cuál es el system call que finaliza un proceso en UNIX/Linux?

`exit()` termina la ejecución y libera la memoria del proceso en linux.

##### 3.13. ¿Cuál es el nombre del proceso que UNIX/Linux establecen como el nuevo padre de los procesos huérfanos?

El proceso que se convierte en el nuevo padre es `init` o `systemd` sistemas modernos basados en UNIX. Este tiene PID=1 y es el proceso que se ejecuta durante el arranque.

### SECCIÓN 3.4

##### 3.14. ¿Cuáles son los dos modelos fundamentales de comunicación interprocesos?

- Paso de mensajes (Message Passing): los procesos se coomunican con un canal directo y mensajes explícitos usando pipes sockets o colas de mensajes.
- Memoria compartida (Shared Memory): Los procesos comparten una región de memoria común donde pueden leer y escribir datos.

##### 3.15. ¿Cuáles son los dos system calls que se emplean en sistemas de paso de mensajes? 

Se usan `send()` y `receive()`.

#####  3.16. (Verdadero/Falso) El paso de mensajes es típicamente más rápido que la memoria compartida.

Falso, esto sucede porque en el paso de mensajes se requiere copiar los datos, serializarlos y, en ocasiones, pasarlos a través de una red, lo que añade latencia. En la memoria compartida se accede directamente al espacio reservado.  
- Mach Traps
- POSIX

### SECCIÓN 3.7

##### 3.17. ¿Qué es un pipe? Mencione los dos tipos de pipes.

Es un mecanismo de comunicación entre procesos (IPC), unidireccional y sin almacenamiento persistente
- Pipes normales: unidireccional
- Pipes nombradas: unidireccional

### SECCIÓN 3.8

##### 3.18. Mencione al menos dos tipos de mecanismos de comunicación en sistemas cliente/servidor.

- Sockets: Es un mecanismo que permite transferencia de datos entre dispositivos mediante una API, se requiere la información del puerto en la solicitud.
- RPC (Remote Procedure Call): Recibe las solicitudes sin que el puerto esté especificado, localiza el servicio y devuelve el puerto para que luego se haga la conexión directa entre cliente y servdor.

##### 3.19. ¿Los sockets TCP son orientados a conexión, o sin conexión? Explique.

Son orientados a conexión, pues para transmitir la información se realiza un proceso conocido como "three-way handshake" que asegura que los datos se pasen de forma confiable
##### 3.20. ¿Los sockets UDP son orientados a conexión, o sin conexión? Explique.

No son orientados a conexión, se usan datagramas independientes, que solo incluyen la información del destinatario. No se garantiza que lleguen, y si llegan, tampoco asegura que lleguen en el orden correcto.