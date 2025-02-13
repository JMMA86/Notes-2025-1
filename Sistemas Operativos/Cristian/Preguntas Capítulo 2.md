##### SECCIÓN 2.1

###### 1. Mencione por lo menos tres servicios del sistema operativo que sean útiles para los usuarios
- Ejecución de programas
- Operaciones de I/O
- Relacionados con File Systems
- Comunicaciones
- Detección de errores

###### 2. Mencione por lo menos tres funciones del sistema operativo que permiten que el sistema opere eficientemente.
- Asignación de recursos
- Protección y seguridad
- Logging o accounting

##### SECCIÓN 2.2

###### 3. ¿Cuáles son los dos tipos principales de interfaz de usuario?
- CLI (Command Line Interface)
- GUI (Graphical User Interface)
- Extra: Pantalla táctil

##### SECCIÓN 2.3

###### 4. Defina qué es un system call.
Son pasos en las funciones que se acceden a través de la interfaz de servicios, están escritos en C, C++ o Assembler.

###### 5. Defina qué es una API.
Una API es una interfaz que permite acceder a los servicios de un programa de forma sencilla, sin tener en cuenta la implementación de este.

###### 6. ¿Cuál estructura de datos del kernel se puede emplear para una técnica de paso de parámetros a un system call?
Si los parámetros son cortos o pocos se ponen en los registros, cuando hay más se pasa un puntero a la pila, donde se hace pop sucesivamente hasta tener todos los parámetros.

###### 7. Mencione por lo menos tres tipos principales de system calls.
- Control de procesos
- Gestión de archivos
- Gestion de dispositivos
- Mantenimiento de información 
- Comunicación
- Protección

##### SECCIÓN 2.7

###### 8. ¿Cuáles son los dos grupos diferentes de metas que se deben considerar cuando se diseña un sistema operativo?
- Metas de usuario
- Metas de sistema

###### 9. ¿Cuál es la diferencia entre política y mecanismo?
- Política se refiere a qué se quiere lograr con el sistema
- Mecanismo a cómo se va a hacer

##### SECCIÓN 2.8

###### 10. Mencione al menos 3 formas diferentes de estructurar un sistema operativo.
- Monolítica
- Por capas
- Microkernel
- Kernels modulares (Loadable Kernel Modules)

###### 11. Mencione al menos dos sistemas operativos híbridos diferentes.
- Windows NT
- MacOS

###### 12. ¿Cuál técnica emplean los microkernels para la comunicación entre servicios?
Utiliza la técnica de Inter-Process Communication (IPC) para ejecutar los servicios del sistema operativo como procesos separados en modo usuario, por fuera del núcleo.