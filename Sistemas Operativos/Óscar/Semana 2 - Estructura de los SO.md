#Oscar #SO #Oscar 

# Sesión 3
# Estructuras del sistema operativo
## Servicios del sistema operativo
![[Pasted image 20250209172436.png]]
### Útiles para el usuario
- Program execution
- I/O Operations
- File systems
- Communication
- Error detection
### Operación eficiente del SO
- Resource allocation
- Accounting
- Protection and security
## System calls
- Interfaz de servicios
- Escritas en C/C++ o Assembler
- Se accede a través  de APIs
### Tipos de systems calls
- Control de procesos
- Gestión de archivos
- Gestión de dispositivos
- Mantenimiento de información
- Comunicación
- Protección

![[Pasted image 20250209220554.png]]
## Servicios del sistema
- Gestión de archivos
- Información de estado
	- Fecha, memoria libre, número de usuarios...
	- Registry
- Modificación de archivos
- Soporte de lenguajes de programación
- Carga y ejecución de programas
### Comunicaciones
- Entre procesos
- Entre equipos
### Servicios en background
- Servicios
- Subsistemas
	- Iseries
	- 05/400
	- IBM
- Demonios
## Enlazadores (linkers) y Cargadores (loaders)
![[Pasted image 20250209221608.png]]

## Formatos de archivos ejecutables
- Unix/Linux - ELF (Executable & Linking Format)
	- .so
- Windows - PE (Portable Executable)
	- .exe
	- .dll
- MacOS - Mach-O

## ¿Cómo correr un programa en varios sistemas operativos?
### Problemas:
- Formato de los binarios
- CPUs
- Systems calls
### Soluciones:
- Lenguajes interpretados (Python, Ruby)
- Runtime Environment (Java, .NET)
- Uso de APIs estándar - Recompilación
	- C
	- POSIX
## Diseño e implementación de un sistema operativo
- Metas de diseño
	- Usuario
	- Sistema
- Mecanismos y políticas
	- Políticas: QUÉ
	- Mecanismos: CÓMO HACERLO
- Implementación
	- Assembler
	- C/C++
	- ***RUST***
## Estructuras de un sistema operativo
- Monolítica
	- Todo está montado sobre un solo ejecutable que es el que se encarga de ver y administrar los recursos
	- Ventajas:
		- Rápidos
	- Deventajas:
		- Difíciles de mantener
	- ![[Pasted image 20250209222655.png]]
- Por capas
	- La capa más interna es el hardware y la más externa es el usuario, se usa más en redes, como con el modelo OSI o el protocolo TCP/IP
	- Desventajas:
		- Tiene dificultad de definición de las interfaces
	- ![[Pasted image 20250209222941.png]]
- Microkernel
	- Filosofía minimalista, se saca todo lo que no es esencial (Usado en MacOS), todo corre en modo usuario.
	- ![[Pasted image 20250209223127.png]]
- Módulos (LKMs)
	- Loadable kernel modules, tienen la capacidad actualizarse o modificarse en tiempo de ejecución sin necesidad de recompilar
	- ![[Pasted image 20250209223619.png]]
- Híbridos
## Arquitectura de MacOS, iOS e iPadOS
Todos funcionan bajo el mismo kernel
![[Pasted image 20250209223801.png]]

### Arquitecturas de Darwin
![[Pasted image 20250209223840.png]]
## Arquitectura de Android
Una versión de Linux >:)
![[Pasted image 20250209223938.png]]
## Arquitectura de WSL
Correr Linux dentro de windows.
![[Pasted image 20250209224134.png]]

# Powershell
```powershell
Get-Process | convertto-html | Out-File clase.html
```

