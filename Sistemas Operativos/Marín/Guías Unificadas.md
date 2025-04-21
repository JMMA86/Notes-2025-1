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

## Capítulo 4

PREGUNTAS DE CHEQUEO – CAPÍTULO 4

SECCIÓN 4.1

4.1. ¿Cuántos hilos maneja un proceso tradicional (heavyweight)?

RPTA:

En la computación tradicional, un proceso tiene un solo hilo de ejecución, y por eso se le llama un proceso "peso pesado". Este único hilo incluye registros, contador de programas, pila, código, datos y archivos abiertos.

4.2. Mencione al menos tres beneficios de la programación multihilo.

RPTA:

Tres beneficios de la programación multihilo son:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif) **Mayor capacidad de respuesta** Si un hilo se bloquea en una operación de entrada/salida (I/O), los otros hilos pueden seguir ejecutándose, mejorando la respuesta de la aplicación.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif) **Compartir recursos** Es más rápido compartir información entre hilos que entre procesos, ya que los hilos dentro de un proceso comparten secciones de código, datos y archivos abiertos.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image002.gif) **Economía** Crear un hilo requiere menos recursos en comparación con la creación de un proceso completo. Esto se debe a que no es necesario reservar todas las zonas de memoria. Además, las aplicaciones que utilizan hilos son más escalables que las que utilizan múltiples procesos.

SECCIÓN 4.2

4.3. (Verdadero / Falso) La concurrencia solamente es posible con paralelismo.

RPTA:

La afirmación "La concurrencia solamente es posible con paralelismo" es **falsa**.

El video explica que **puede haber concurrencia sin necesidad de paralelismo**. En un sistema con un solo núcleo, los procesos pueden ejecutarse de forma concurrente, donde el sistema operativo cambia entre las tareas, dando la apariencia de que progresan simultáneamente. Sin embargo, el paralelismo implica que varios hilos se ejecutan simultáneamente en diferentes núcleos de procesamiento, lo que mejora la concurrencia al permitir que los hilos avancen más rápidamente.

4.4. (Verdadero / Falso) La ley de Amdahl se refiere al efecto desproporcionado de la porción serial de un programa.

RPTA:

La afirmación "La ley de Amdahl se refiere al efecto desproporcionado de la porción serial de un programa" es **Verdadera**.

La ley de Amdahl muestra el efecto desproporcionado que tiene sobre la aceleración del sistema el hecho de que los procesos tengan partes que se tienen que ejecutar en serie. No todas las tareas que vaya a ejecutar un proceso o un hilo se pueden hacer en paralelo, sino que a veces hay tareas que son seguidas y esas se ejecutan en un solo hilo.

La fórmula de la ley de Amdahl indica que la aceleración que se puede obtener en un proceso es menor o igual que una expresión donde n es el número de núcleos y s es el porcentaje de la tarea que es serial.

Por ejemplo, si el 5% de las tareas de un proceso deben ejecutarse de manera serial, la aceleración se reduce dramáticamente. Con dos núcleos, la velocidad se duplica, pero con cuatro núcleos, ya no es cuatro veces más rápida, sino alrededor de 3.8 veces. Con 10 núcleos, la aceleración es de siete, no 10 veces, y con 16 núcleos, la velocidad de ejecución se multiplica por nueve. Si el 50% de la tarea es serial, no se puede obtener una aceleración mayor que dos.

4.5. Mencione al menos tres retos de la programación en sistemas multicore.

RPTA:

Tres retos de la programación en sistemas multinúcleo son:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image005.gif) **Identificar tareas que se puedan dividir y ejecutar de manera concurrente**. Este es el primer reto a la hora de programar aplicaciones en un sistema multinúcleo.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image006.gif) **Equilibrio en la paralelización**. Hay tareas que no se benefician mucho de la paralelización, por lo que no vale la pena el esfuerzo de paralelizar partes de la aplicación que no aporten mucho al desempeño.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif) **División de datos**. Al paralelizar, es necesario dividir los datos, ya que cada hilo puede emplear datos diferentes. Es importante considerar qué porción de los datos necesita cada hilo para evitar problemas de comunicación y lentitud.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image007.gif) **Pruebas y depuración**. Hacer pruebas y depurar una aplicación multihilo es más difícil que hacerlo con una aplicación de un solo hilo, debido a la posibilidad de múltiples caminos de ejecución y problemas de sincronización.

4.6. ¿Cuáles son los dos tipos generales de paralelismo?

RPTA:

Los dos tipos generales de paralelismo son **paralelismo de datos** y **paralelismo de tareas**.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image008.gif) **Paralelismo de datos:** Implica particionar los datos y hacer que cada núcleo realice una tarea determinada sobre su porción de datos. Por ejemplo, un algoritmo de ordenamiento donde cada núcleo ordena una parte de los datos y luego se reúnen los resultados.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image009.gif) **Paralelismo de tareas:** Implica realizar varias tareas sobre los mismos datos. Por ejemplo, calcular la media, la desviación estándar, la moda, el valor máximo y el valor mínimo de un vector simultáneamente en diferentes núcleos.

Estos dos métodos no son excluyentes y se puede emplear un híbrido entre ambos.

SECCIÓN 4.3

4.7. Enuncie tres maneras comunes de mapear hilos de usuario a hilos de kernel.

RPTA:

Tres maneras comunes de mapear hilos de usuario a hilos de kernel son:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image010.gif) **Muchos a uno** Múltiples hilos de usuario se mapean a un solo hilo de kernel. Si uno de los hilos de usuario se bloquea, bloquea el progreso de todos los hilos. Este esquema era común en sistemas que no eran _multicore_.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image011.gif) **Uno a uno** Por cada hilo de usuario, hay un hilo de kernel correspondiente. El número de hilos que se pueden crear puede estar restringido por la capacidad del kernel. Windows y Linux emplean este esquema, donde cada hilo en el espacio de usuario se mapea inmediatamente a un hilo en el espacio del kernel.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image005.gif) **Muchos a muchos** Múltiples hilos de usuario pueden ser mapeados a múltiples hilos de kernel simultáneamente. Un hilo de usuario podría estar corriendo en varios hilos de kernel al mismo tiempo, sin las restricciones del modelo muchos a uno. La programación de este esquema es muy complicada y no es muy común. Aunque no es común, se puede lograr en Windows instalando un paquete llamado _threat fiber_.

SECCIÓN 4.4

4.8. ¿Cuáles son los dos métodos para implementar una librería de hilos?

RPTA:

El video explica que existen **dos métodos principales para implementar una librería de hilos**: **Hilos de usuario** e **Hilos de kernel**.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image002.gif) **Hilos de usuario**: Son los hilos que se programan en las aplicaciones, utilizando librerías como las Pthreads para sistemas Unix/Linux/macOS, la librería propia de hilos de Java, o la API de hilos de Windows. Los hilos de usuario son manipulados directamente por el programador al crear un programa.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image012.gif) **Hilos de kernel**: Son gestionados por el núcleo del sistema operativo y se encargan de ejecutar las tareas de los hilos de usuario. Existe una comunicación entre los hilos de usuario y los hilos de kernel.

Además, el video describe **diferentes maneras de mapear los hilos de usuario a los hilos de kernel**:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image013.gif)**Muchos a uno**: Múltiples hilos de usuario se mapean a un solo hilo de kernel.

**Uno a uno**: Por cada hilo de usuario, hay un hilo de kernel correspondiente.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image009.gif) **Muchos a muchos**: Múltiples hilos de usuario pueden ser mapeados a múltiples hilos de kernel simultáneamente.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image014.gif) **Modelo de dos niveles**: Un hilo de usuario podría estar corriendo en varios hilos de kernel, pero a la vez se puede configurar que un hilo en particular esté mapeado a un solo hilo de kernel.

4.9. Enuncie las tres principales librerías de hilos que se emplean en la actualidad.

RPTA:

Las tres principales librerías de hilos que se emplean en la actualidad, según el video, son:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image015.gif)Para sistemas Unix, Linux o macOS, se emplea una librería llamada **Pthreads**.

**Java** tiene su propia librería de hilos.

**Windows** también maneja su propia API de hilos.

SECCIÓN 4.5

4.10. Enuncie al menos dos técnicas para soporte de threading implícito.

RPTA:

Dos técnicas para el soporte de **threading implícito** que se mencionan en el video son:

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image002.gif) **Thread pools de Java**: Permite definir un "pool" de hilos que las distintas tareas dentro del proceso pueden utilizar. Cuando una tarea termina, el hilo se libera de nuevo al pool. El programador no tiene que preocuparse por crear, borrar o gestionar los hilos.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image008.gif) **Paralelismo "fork-join" en Unix**: Se le da al compilador la instrucción de que parta la tarea en dos procesos y que luego una los resultados.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image006.gif) **OpenMP**: Permite marcar secciones del código como paralelizadas mediante directivas de compilador especiales llamadas "pragma". El compilador se encarga del resto, haciendo que el uso de hilos sea transparente para el programador.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image014.gif) **Grand Central Dispatch en macOS e iOS**: Similar a OpenMP, este esquema permite marcar partes del código como paralelizadas y el sistema operativo se encarga del resto.

![](file:///C:/Users/crist/AppData/Local/Temp/msohtmlclip1/01/clip_image014.gif) **Intel Thread Building Blocks**: De manera similar a los anteriores, permite marcar ciertas partes del código como paralelizadas, delegando al sistema operativo la gestión de los hilos.

El **threading implícito** permite que el programador identifique tareas que puedan ejecutarse simultáneamente y las marque en el código, sin necesidad de gestionar los hilos directamente. El compilador o el sistema operativo se encargan de crear, gestionar y eliminar los hilos, simplificando el proceso de programación.

## Capítulo 5
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
**Verdadero (Son similares).** El modelamiento determinístico usa fórmulas predefinidas, mientras que las simulaciones permiten evaluar el comportamiento en condiciones más realistas utilizando teoría de colas y modelos probabilísticos.
