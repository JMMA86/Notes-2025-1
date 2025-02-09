# Preguntas de Chequeo - Capítulo 2

Link del video: [Sistemas Operacionales - Estructuras del sistema operativo](https://www.youtube.com/watch?v=7V6rKGKMfrU&t=7s)

## Sección 2.1

### 1. Mencione tres servicios del sistema operativo útiles para los usuarios.
- **Ejecución de programas**: Cargar y ejecutar aplicaciones fácilmente.  
- **Gestión de archivos**: Crear, modificar, eliminar y organizar archivos.  
- **Comunicación entre procesos**: Permitir la comunicación entre programas locales o en red. 

### 2. Mencione tres funciones del sistema operativo que permiten operar eficientemente.
- **Asignación de recursos**: Administrar memoria, CPU y almacenamiento.  
- **Protección y seguridad**: Aislar procesos y gestionar permisos de usuario.  
- **Registro de eventos (Logging)**: Mantener registros de operaciones y auditoría del sistema. 

## Sección 2.2

### 3. ¿Cuáles son los dos tipos principales de interfaz de usuario?
- **Línea de comandos (CLI)**: Permite ingresar comandos manualmente.  
- **Interfaz gráfica de usuario (GUI)**: Usa iconos, ventanas y botones para interactuar.  

## Sección 2.3

### 4. Defina qué es un *system call*.
Es una interfaz que permite a los programas solicitar servicios del sistema operativo, como acceso a archivos o gestión de procesos.  

### 5. Defina qué es una *API*.
Es un conjunto de funciones que facilita el acceso a los *system calls* desde programas de alto nivel.  

### 6. ¿Qué estructura de datos del kernel se puede emplear para el paso de parámetros a un *system call*?
- **Registros del procesador** (cuando hay pocos parámetros).  
- **Tabla de parámetros** (cuando son más y se pasa un puntero).  
- **Pila del sistema** (empujando los parámetros en memoria).  

### 7. Mencione tres tipos principales de *system calls*.
- **Control de procesos**: `fork()`, `exit()`, `wait()`.  
- **Gestión de archivos**: `open()`, `read()`, `write()`, `close()`.  
- **Comunicación**: `socket()`, `send()`, `recv()`.  

## Sección 2.7

### 8. ¿Cuáles son los dos grupos de metas al diseñar un sistema operativo?
- **Metas del usuario**: Facilidad de uso, confiabilidad y eficiencia.  
- **Metas del sistema**: Mantenimiento, flexibilidad, rendimiento y seguridad.  

### 9. ¿Cuál es la diferencia entre política y mecanismo?
- **Política**: Define *qué* se debe hacer (ejemplo: asignar CPU a procesos).  
- **Mecanismo**: Define *cómo* se implementa (ejemplo: usar planificación por turnos).  

## Sección 2.8

### 10. Mencione tres formas de estructurar un sistema operativo.
- **Monolítico**: Todo el kernel en un solo bloque (ejemplo: Linux, Windows).  
- **Microkernel**: Funcionalidad mínima en el kernel, con servicios en modo usuario (ejemplo: macOS).  
- **Modular**: Permite cargar y descargar módulos en tiempo de ejecución (ejemplo: Linux con LKMs).  

### 11. Mencione dos sistemas operativos híbridos.
- **Windows**: Mezcla de kernel monolítico con módulos cargables.  
- **macOS**: Basado en un microkernel con extensiones.  

### 12. ¿Qué técnica emplean los microkernels para la comunicación entre servicios?
- **Paso de mensajes (Message Passing)**: Envía y recibe datos entre procesos de usuario y el kernel.  
