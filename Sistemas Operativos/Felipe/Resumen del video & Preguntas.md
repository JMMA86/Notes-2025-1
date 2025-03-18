
![[Preguntas chequeo capítulo 2.pdf]]

# Sección 2.1

1. Servicio de ejecución de programas, Navegación de archivos y directorios, Comunicación local ósea dentro de una maquina propia y entre otros ya sea vía cable o en red, Detección de errores.
2. Asignación de recursos, Protección y seguridad y Contabilidad o la función de Logging que consiste en llevar un registro de las operaciones el también llamado "Log" de cada cosa que se haga como tipo acceso a una carpeta eso llega el LOG.

# Sección 2.2

3. EL CLI (Command Line Interface) y Pantalla tactil (Teléfonos o también computadores tactiles🤑🤑)

# Sección 2.3

4.  Es una manera de como el usuario puede acceder a las distintas funcionalidades de un sistema operativo donde estos pueden ser:
	A. Interfaz de servicios
	B. Funciones en C o C++
	C. Assembler
	D. Accesos mediante a APIs
Ejemplo:
![[Pasted image 20250209144958.png]]
(Aquí el profe menciona que hacemos un programa que permita copíar y pegar de un punto a otro y como se vería el proceso.)

Un system call necesita un paso de parametros estos pueden ser mediante:
- Registros
- Tabla
	- Mediante puntero en registro
	- Pila



Servicios del sistema
- Gestión de archivos
- Información de estado
	- Fecha, memoria libre, numero de usuarios
	- Registryk
- Modificación de archivos
- Soporte a lenguajes de programación
- Carga y ejecución de programas
- Servicios en background
	- Servicios $\to$ Windows (Asi se le llaman en su respectivo sist Op)
	- Subsistemas $\to$ iSeries, os/400, IBM
	- Demons & Demonios $\to$ Linux, Unix, Mac OS

Tipos de System calls
- Control de proceso
- Gestión de archivos
- Gestión de dispositivos (Ej: Montar y desmontar discos)
- Mantenimiento de información
- Comunicación 
- Protección


Enlazadores (Linkers) y cargadores (Loaders):

![[Pasted image 20250209151529.png]]


Formatos de archivos ejecutables
- Unix / Linux - ELF $\to$ Executable & Linking format (.so)
- Windows - PE $\to$ Portable executable (.EXE o .DLL)
- MacOS - Mach-O


# Sección 2.7 (Creo)
(La verdad el profe habla mucha cosa y habla de todo, el orden de como lo dice es como desordenado al como lo pide el PDF, literal anote todo de lo que dijo)


 Como correr un programa en varios sist Op:

- Formato de los binarios
- CPUs
- System calls
- Soluciones
	- Lenguajes interpretados
	- Runtime Environment (Java .NET)
	- Uso de APIs estandar - Recompilacion



Diseño e implementacion de un Sistema Operativo

- Metas de diseño (Requerimientos)
	- Usuario
	- Sistema
- Mecanismos y políticas
	- Politica (Son el QUÉ, se va hacer)
	- Mecanismo (Cómo HACERLO)
- Implementación 
	- Assembler, C, C++, Rust


Assembler por velocidad
C y C++ por la portabilidad
Rust manejo de recursos y seguridad


# Estructura de un sistema operativo

- Monolítica (Ventajas: Rapidez, Desventajas: Problema de mantenibilidad)
	- Windows
	- Unix
- Por capas
	- Interna Hardware
	- Externa Usuario
- Microkernel (Filosofía minimalista, sacar del kernel lo NO esencial el resto de apps corren al nivel Usuario)
	- MacOS
- Arquitectura de Darwin (Tambien es un microkernel)
	
- Módulos ([LKMs^1]) (En tiempos de ejecucion se pueden cargas los modulos)

- Híbridos
	- MacOs, iOS e IpadOs

- [Arquitectura de WSL^2]





[^1]: Loadable kernel modules

[^2]: Windows Subsystem for linux
