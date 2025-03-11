# Capítulo 1
## SECCIÓN 1.1
1. **¿Cuáles son los cuatro componentes de un sistema de cómputo?**  
- Hardware, sistema operativo, programas de aplicación y usuarios.

2. **Mencione al menos tres recursos que el sistema operativo asigna.**  
- Memoria, procesador (CPU) y dispositivos de entrada/salida.

3. **¿Cuál es el nombre común que se emplea para referirse al programa principal del sistema operativo?**  
- Kernel o núcleo.

4. **¿Qué incluyen generalmente los sistemas operativos móviles, además del núcleo del sistema operativo?**  
- Aplicaciones integradas, una interfaz de usuario optimizada y controladores para gestionar sensores y conectividad.

## SECCIÓN 1.2
5. **¿Qué es una interrupción?**
- Es un mecanismo que permite a los dispositivos de hardware notificar al procesador que requieren atención.

6. **¿Cuál es el mecanismo de disparo de una interrupción?**  
- Se genera cuando un dispositivo o proceso necesita la atención del CPU y este suspende temporalmente su ejecución para atenderla.

7. **¿Cuál es una ventaja de emplear una unidad de estado sólido en lugar de un disco magnético?**  
- Mayor velocidad de acceso a los datos y menor consumo de energía.

8. **¿Cuál es la diferencia entre almacenamiento volátil y no volátil?**  
- El almacenamiento volátil pierde los datos cuando se apaga el sistema, mientras que el no volátil los conserva.

## SECCIÓN 1.3
9. **Mencione al menos dos ventajas de los sistemas multiprocesador.**  

- Mayor rendimiento y tolerancia a fallos.

10. **(Verdadero o falso) El sistema multiprocesador más común emplea multiprocesamiento asimétrico.**  

- Falso, el multiprocesamiento simétrico es más común. Osea tanto tareas del sistema y otras de tareas de usuario

11. **¿Cuál es el nombre de un sistema multiprocesador que emplea múltiples núcleos de computación?**  
- Sistema multinúcleo.

12. **¿Cómo difiere un sistema en clúster de un sistema multinúcleo?**  
- Un sistema en clúster consiste en múltiples computadoras interconectadas, mientras que un sistema multinúcleo tiene varios núcleos dentro de un solo procesador.

## SECCIÓN 1.4
13. **¿Cómo incrementa la multiprogramación el uso de la CPU?**  
- Permitiendo que múltiples procesos compartan el tiempo de CPU, evitando que esta permanezca inactiva.

14. **¿Cómo se denomina un programa que ha sido cargado y se está ejecutando?**  
- Proceso.

15. **¿Cuál parte del sistema operativo toma la decisión de qué trabajo va a ejecutarse?**  
- El planificador del sistema operativo.

16. **¿Cuáles son los dos modos de operación de un sistema operativo?**  
- Modo usuario y modo supervisor.

17. **¿Cuál es el modo del sistema en el momento del arranque (boot)?**  
- Modo supervisor.

18. **¿Cuál es el modo del sistema cuando el sistema operativo obtiene el control?**  
- Modo supervisor.

19. **¿Cuál es el modo del sistema cuando se está ejecutando un programa de usuario?**  
- Modo usuario.

## SECCIÓN 1.5
20. **Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de la memoria.**  
- Asignación de memoria a procesos y liberación de memoria cuando ya no se necesita.

21. **(Verdadero o falso) La gestión de archivos es uno de los aspectos más visibles de un sistema operativo.**  
- Verdadero.

22. **Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de los archivos.**  
- Creación y eliminación de archivos.

23. **Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de los discos.**  
- Asignación de espacio en disco y organización de los archivos almacenados.

24. **Ordene los siguientes medios de almacenamiento del más rápido al más lento, según el tiempo de acceso:**  
- Registros, caché, memoria principal, unidad de estado sólido, discos magnéticos.

## SECCIÓN 1.6
25. **¿Cuál es la diferencia entre protección y seguridad?**  
- Protección impide que los procesos interfieran entre sí, mientras que seguridad protege los datos del acceso no autorizado.

## SECCIÓN 1.7
26. **Mencione en qué consiste la virtualización.**  
- Consiste en ejecutar múltiples sistemas operativos en una misma máquina mediante el uso de hipervisores.

## SECCIÓN 1.8
27. **Mencione en qué consiste un sistema distribuido.**  
- Es un conjunto de computadoras interconectadas que comparten recursos y operan como un solo sistema.

## SECCIÓN 1.9
28. **Mencione al menos 4 estructuras de datos empleadas comúnmente en un sistema operativo.**  
- Tablas de procesos, listas de espera, colas y bitmaps.

29. **(Verdadero o falso) Un bitmap de N bits puede ser empleado para representar el estado de 2^N ítems.**  
- Falso.

## SECCIÓN 1.10
30. **Mencione al menos cinco tipos diferentes de ambientes de computación.**  
- Computación tradicional, sistemas móviles, cliente-servidor, computación en la nube y sistemas embebidos.

## SECCIÓN 1.11
31. **Dé un ejemplo de un sistema operativo de código abierto.**  
- Linux.

# Capítulo 2
## Sección 2.1
**1. Mencione tres servicios del sistema operativo útiles para los usuarios.**
- **Ejecución de programas**: Cargar y ejecutar aplicaciones fácilmente.  
- **Gestión de archivos**: Crear, modificar, eliminar y organizar archivos.  
- **Comunicación entre procesos**: Permitir la comunicación entre programas locales o en red. 

**2. Mencione tres funciones del sistema operativo que permiten operar eficientemente.**
- **Asignación de recursos**: Administrar memoria, CPU y almacenamiento.  
- **Protección y seguridad**: Aislar procesos y gestionar permisos de usuario.  
- **Registro de eventos (Logging)**: Mantener registros de operaciones y auditoría del sistema. 

## Sección 2.2
**3. ¿Cuáles son los dos tipos principales de interfaz de usuario?**
- **Línea de comandos (CLI)**: Permite ingresar comandos manualmente.  
- **Interfaz gráfica de usuario (GUI)**: Usa iconos, ventanas y botones para interactuar.  

## Sección 2.3
**4. Defina qué es un *system call*.**
Es una interfaz que permite a los programas solicitar servicios del sistema operativo, como acceso a archivos o gestión de procesos.  

**5. Defina qué es una *API*.**
Es una interfaz que facilita el acceso a los *system calls* desde programas de alto nivel.  

**6. ¿Qué estructura de datos del kernel se puede emplear para el paso de parámetros a un *system call*?**
- **Registros del procesador** (cuando hay pocos parámetros).  
- **Tabla de parámetros** (cuando son más y se pasa un puntero).  
- **Pila del sistema** (empujando los parámetros en memoria).  

Respuesta corta: Pila.

**7. Mencione tres tipos principales de *system calls*.**
- **Control de procesos**: `fork()`, `exit()`, `wait()`.  
- **Gestión de archivos**: `open()`, `read()`, `write()`, `close()`.  
- **Comunicación**: `socket()`, `send()`, `recv()`.  

## Sección 2.7
**8. ¿Cuáles son los dos grupos de metas al diseñar un sistema operativo?**
- **Metas del usuario**: Facilidad de uso, confiabilidad y eficiencia.  
- **Metas del sistema**: Mantenimiento, flexibilidad, rendimiento y seguridad.  

**9. ¿Cuál es la diferencia entre política y mecanismo?**
- **Política**: Define *qué* se debe hacer (ejemplo: asignar CPU a procesos).  
- **Mecanismo**: Define *cómo* se implementa (ejemplo: usar planificación por turnos).  

## Sección 2.8
**10. Mencione tres formas de estructurar un sistema operativo.**
- **Monolítico**: Todo el kernel en un solo bloque (ejemplo: Linux, Windows).  
- **Microkernel**: Funcionalidad mínima en el kernel, con servicios en modo usuario (ejemplo: macOS).  
- **Modular**: Permite cargar y descargar módulos en tiempo de ejecución (ejemplo: Linux con LKMs).  

**11. Mencione dos sistemas operativos híbridos.**
- **Windows**: Mezcla de kernel monolítico con módulos cargables.  
- **macOS**: Basado en un microkernel con extensiones.  

**12. ¿Qué técnica emplean los microkernels para la comunicación entre servicios?**
Utilizan IPC (Inter-Process Communication), que es un conjunto de mecanismos y técnicas que permiten a los procesos en un sistema operativo intercambiar datos e información. Uno de los mecanismos comunes es el **Paso de mensajes (Message Passing)**, el cual envía y recibe datos entre procesos de usuario y el kernel.

# Capítulo 3
**1. ¿Cuáles son los 4 componentes de un proceso?**
- Text: código máquina
- Data: memoria global
- Heap: memoria dinámica
- Stack: llamados a funciones y paso de datos

**2. Mencione al menos tres estados en los que un proceso pueda estar.**
![[Pasted image 20250215074526.png | 500]]
- New
- Ready
- Running
- Waiting
- Terminated

**3. Defina qué es un bloque de control de proceso (PCB).**
Es una etructura que contiene información sobre un proceso:
- State
- Number (ID)
- Program Counter
- Registers
- Memory Limits
- Open files list
- Thread list

**4. ¿Cuál es otro nombre para un proceso?**
También se le conoce como *tarea* o *job* en ciertos contextos.

**5. (Verdadero / Falso) La mayoría de los sistemas operativos permiten que un proceso posea múltiples hilos.**
Verdadero, esto es permitido en la mayoría de los SO, incluyendo Windows, Linux, MacOS y Unix.

### Sección 3.2
**6. Explique el papel del planificador (scheduler) de procesos.**
El scheduler gestiona los procesos que se están ejecutando o interrumpidos, manteniendolos en una cola. Este decide cuales procesos deben ejecutarse en cada momento, asegurando que la CPU se mantiene siempre ocupada.

**7. Explique en qué consiste el grado de multiprogramación.**
Se refiere a la rapidez con que cambia el procesador entre distintos programas, dando la ilusión de que se están corriendo en paralelo, a esto último se le llama multitarea.

**8. ¿Cuál es la expresión para referirse a grabar el estado de un proceso y restaurar el estado de otro?**
Cambio de contexto, se guarda toda la información del proceso en el PCB dle proceso actual y se restaura la información del PCB del proceso siguiente.

### SECCIÓN 3.3
**9. Explique qué es un identificador de proceso (PID).**
Un número único asignado por el SO a cada proceso en ejecución, este se usa para rastrear y gestionar los procesos en el sistema.

**10. ¿Cuál es el system call que crea un proceso en UNIX/Linux?**
El System Call `fork()`, que crea una copia exacta del proceso que realizó la llamada.

**11. ¿Cuál es el system call que crea un proceso en Windows?**
El System Call `CreateProcess()`, este no crea una copia exacta, pues pide más información como un ejecutable, argumentos y configuraciones de entorno para crear un proceso independiente.

**12. ¿Cuál es el system call que finaliza un proceso en UNIX/Linux?**
`exit()` termina la ejecución y libera la memoria del proceso en linux.

**13. ¿Cuál es el nombre del proceso que UNIX/Linux establecen como el nuevo padre de los procesos huérfanos?**
El proceso que se convierte en el nuevo padre es `init` o `systemd` sistemas modernos basados en UNIX. Este tiene PID=1 y es el proceso que se ejecuta durante el arranque.

### SECCIÓN 3.4
**14. ¿Cuáles son los dos modelos fundamentales de comunicación interprocesos?**
- Paso de mensajes (Message Passing): los procesos se coomunican con un canal directo y mensajes explícitos usando pipes sockets o colas de mensajes.
- Memoria compartida (Shared Memory): Los procesos comparten una región de memoria común donde pueden leer y escribir datos.

**15. ¿Cuáles son los dos system calls que se emplean en sistemas de paso de mensajes?**
Se usan `send()` y `receive()`.

**16. (Verdadero/Falso) El paso de mensajes es típicamente más rápido que la memoria compartida.**
Falso, esto sucede porque en el paso de mensajes se requiere copiar los datos, serializarlos y, en ocasiones, pasarlos a través de una red, lo que añade latencia. En la memoria compartida se accede directamente al espacio reservado.  
- Mach Traps
- POSIX

### SECCIÓN 3.7
**17. ¿Qué es un pipe? Mencione los dos tipos de pipes.**
Es un mecanismo de comunicación entre procesos (IPC), unidireccional y sin almacenamiento persistente
- Pipes normales: unidireccional
- Pipes nombradas: unidireccional

### SECCIÓN 3.8
**18. Mencione al menos dos tipos de mecanismos de comunicación en sistemas cliente/servidor.**
- Sockets: Es un mecanismo que permite transferencia de datos entre dispositivos mediante una API, se requiere la información del puerto en la solicitud.
- RPC (Remote Procedure Call): Recibe las solicitudes sin que el puerto esté especificado, localiza el servicio y devuelve el puerto para que luego se haga la conexión directa entre cliente y servdor.

**19. ¿Los sockets TCP son orientados a conexión, o sin conexión? Explique.**
Son orientados a conexión, pues para transmitir la información se realiza un proceso conocido como "three-way handshake" que asegura que los datos se pasen de forma confiable.

**20. ¿Los sockets UDP son orientados a conexión, o sin conexión? Explique.**
No son orientados a conexión, se usan datagramas independientes, que solo incluyen la información del destinatario. No se garantiza que lleguen, y si llegan, tampoco asegura que lleguen en el orden correcto.