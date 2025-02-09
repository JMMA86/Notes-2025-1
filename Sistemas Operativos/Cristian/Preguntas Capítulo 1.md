
### Sección 1.1.

#### 1.1 ¿Cuáles son los cuatro componentes de un sistema de cómputo?

- Usuario
- Aplicaciones
-  Sistema Operativo
- Hardware

#### 1.2 Mencione al menos tres recursos que el sistema operativo asigna.

Disco, memoria, pantalla

#### 1.3 ¿Cuál es el nombre común que se emplea para referirse al programa principal del sistema operativo?

- Kernel o núcleo
- Programas de sistema
- Programas de Aplicación
- Middleware

### 1.4 ¿Qué incluyen generalmente los sistemas operativos móviles, además del núcleo del sistema operativo?

Controladores de acelerómetro, GPS, y demás funciones que tiene un dispositivo móvil y generalmente un computador de escritorio no.

#### 1.5 ¿Qué es una interrupción?

La solicitud de datos que hace un dispositivo para que el OS le asigne recursos, si es enmascarable se puede posponer

#### 1.6 ¿Cuál es el mecanismo de disparo de una interrupción?

El driver del dispositivo inicializa el I/O, para que cuando sea necesario leer los datos, el dispositivo realiza la solicitud de interrupción que será procesada según el vector de interrupciones para luego volver a su funcionamiento normal.

#### 1.7 ¿Cuál es una ventaja de emplear una unidad de estado sólido en lugar de un disco magnético?

El acceso a la información es más rápido

#### 1.8 ¿Cuál es la diferencia entre almacenamiento volátil y no volátil?

El volátil es más rápido, pero pierde la información cuando deja de circular corriente.

#### 1.9 Mencione al menos dos ventajas de los sistemas multiprocesador.

- Permite escalar horizontalmente 
- Mejora la eficiencia de procesamiento

#### 1.10 El sistema multiprocesador más común emplea multiprocesamiento asimétrico.

Falso, los sistemas multiprocesador son más comunes en servidores, donde se usan SMP

#### 1.11 ¿Cuál es el nombre de un sistema multiprocesador que emplea múltiples núcleos de computación?

Multicore
#### 1.12 ¿Cómo difiere un sistema en clúster de un sistema multinúcleo?

menor acoplamiento, están agrupados en red, son más disponibles y cuando falla uno el resto no se ve afectado.

#### 1.13 ¿Cómo incrementa la multiprogramación el uso de la CPU?

Hace que la CPU se mantenga en continuo funcionamiento, pasando de un proceso a otro

#### 1.14. ¿Cómo se denomina un programa que ha sido cargado y se está ejecutando? 

Proceso

#### 1.15. ¿Cuál parte del sistema operativo toma la decisión de qué trabajo va a ejecutarse?

El scheduler, que puede ser de corto, mediano y largo plazo

#### 1.16. ¿Cuáles son los dos modos de operación de un sistema operativo?

Dual (usuario y kernel) y multimodo

#### 1.17. ¿Cuál es el modo del sistema en el momento del arranque (boot)?

Modo real
#### 1.18. ¿Cuál es el modo del sistema cuando el sistema operativo obtiene el control?

Modo supervisor bit = 0
#### 1.19. ¿Cuál es el modo del sistema cuando se está ejecutando un programa de usuario?

Modo usuario bit = 1

#### 1.20 Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de la memoria

- Ver que proceso está usando cada parte de la memoria
- Asignar y librerar
- Swapping

#### 1.21. (Verdadero o falso) La gestión de archivos es uno de los aspectos más visibles de un sistema operativo

Verdadero

#### 1.22. Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de los archivos.

- Operaciones primitivas (crear, borrar, etc)
- Respaldar datos

### 1.23. Mencione al menos dos actividades que realiza el sistema operativo con relación a la gestión de los discos.

- Montaje desmontaje,
- Gestión del espacio
- Planificación
- Particionamiento
- Protección

#### 1.24 Ordene los siguientes medios de almacenamiento del más rápido al más lento, según el tiempo de acceso: Memoria principal, discos magnéticos, registros, unidad de estado sólido, caché.

1. Registros
2. Caché
3. Memoria principal
4. Unidad de estado Sólido
5. Discos magnéticos


#### 1.25 ¿Cuál es la diferencia entre protección y seguridad?

Protección es asegurar que los procesos concurrentes no intervienen entre sí, seguridad que los procesos solo puedan acceder a los recursos con privilegios

#### 1.26 Mencione en qué consiste la virtualización.

consiste en ejecutar distintos kernels en un mismo hardware mediante contenedores o máquinas virtuales

#### 1.27 Mencione en qué consiste un sistema distribuido.

Un sistema que está conformado por varios dispositivos que actúan con un fin común, como si se tratara de un solo computador.

#### 1.28 Mencione al menos 4 estructuras de datos empleadas comúnmente en un sistema operativo. 

Queues
Stacks
Maps
Arreglos

#### 1.29. (Verdadero o falso) Un bitmap de N bits puede ser empleado para representar el estado de 2N ítems.

Si, se asigna un número a cada estadoy se representa la cantidad de subconjuntos de un bitmap, que es $2^{n}$

#### 1.30 Mencione al menos cinco tipos diferentes de ambientes de computación.

- Tradicional
- Móvil
- Peer to Peer
- Nube
- Embebidos en tiempo real
- Cliente servidor

#### 1.31 Dé un ejemplo de un sistema operativo de código abierto.

GNU / Linux