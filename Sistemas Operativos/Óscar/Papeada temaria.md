### **Tabla de Temario Ajustado (Febrero 4 - Junio 17)**
| **Semana** | **Fecha**         | **Tema Teórico (2h)**                         | **Laboratorio (2h)**                              | **Notas**                                     |
| ---------- | ----------------- | --------------------------------------------- | ------------------------------------------------- | --------------------------------------------- |
| **1**      | Feb 4 (Lunes)     | **C1**: Introducción a SO y PowerShell        | **M1**: Cmdlets básicos (procesos, servicios)     | Introducción a shells y su relevancia.        |
|            | Feb 6 (Miércoles) | **C2**: Estructuras de un SO                  | **M2**: Gestión de procesos en PowerShell         | Ejercicios: `Get-Process`, `Stop-Process`.    |
| **2**      | Feb 11            | **C3**: Hilos y concurrencia                  | **M3**: Sincronización con jobs en PowerShell     | Uso de `Start-Job`, `Wait-Job`.               |
|            | Feb 13            | **C4**: Planificación de CPU                  | **M4**: Simulación de planificación (PowerShell)  | Script para priorizar procesos.               |
| **3**      | Feb 18            | **C5**: Deadlocks y condiciones de carrera    | **M5**: Detección de deadlocks (simulación)       | Análisis de logs con `Get-WinEvent`.          |
|            | Feb 20            | **C6**: Gestión de memoria                    | **M6**: Memoria virtual en Windows (PowerShell)   | Uso de `Get-WmiObject Win32_PageFile`.        |
| **4**      | Feb 25            | **C7**: Sistemas de archivos                  | **M7**: Permisos NTFS y auditoría                 | Cmdlets: `Get-Acl`, `Set-Acl`.                |
|            | Feb 27            | **C8**: Seguridad en SO                       | **M8**: Mitigación de malware (PowerShell)        | Scripts de detección de procesos sospechosos. |
| **5**      | Mar 4             | **Examen Parcial 1** (PowerShell + Teoría)    |                                                   |                                               |
| **6**      | Mar 6             | **C9**: Introducción a Bash y Linux           | **M9**: Comandos básicos (procesos, archivos)     | Comparación con PowerShell.                   |
| **7**      | Mar 11            | **C10**: Concurrencia en Bash                 | **M10**: Sincronización con señales y `bash`      | Uso de `kill`, `trap`.                        |
|            | Mar 13            | **C11**: Planificación en Linux               | **M11**: Simulación con `cron` y `nice`           | Configuración de tareas programadas.          |
| **8**      | Mar 18            | **C12**: Memoria virtual en Linux             | **M12**: Análisis de memoria con `vmstat`         | Scripts para monitoreo.                       |
|            | Mar 20            | **C13**: Sistemas de archivos en Linux        | **M13**: Permisos y ACLs en ext4                  | Uso de `chmod`, `getfacl`.                    |
| **9**      | Mar 25            | **C14**: Seguridad en Linux                   | **M14**: Hardening con `seccomp` y `AppArmor`     | Configuración de perfiles restrictivos.       |
|            | Mar 27            | **C15**: **Kernel Modules y Drivers**         | **M15**: Compilación de módulos simples           | Uso de `insmod`, `rmmod`.                     |
| **10**     | Abr 1             | **Festivo** (Semana Santa)                    |                                                   |                                               |
| **11**     | Abr 3             | **Examen Parcial 2** (Bash + Teoría)          |                                                   |                                               |
| **12**     | Abr 8             | **C16**: Virtualización (KVM/Docker)          | **M16**: Despliegue de contenedores (Bash)        | Uso de `docker run`, `kubectl`.               |
|            | Abr 10            | **C17**: **Sistemas Embebidos y RTOS**        | **M17**: Simulación de tiempo real con `cron`     | Ejemplos de planificación rígida.             |
| **13**     | Abr 15            | **C18**: Rendimiento y profiling              | **M18**: `perf` y `htop` en Linux                 | Análisis de cuellos de botella.               |
|            | Abr 17            | **C19**: Ética y privacidad en SO             | **M19**: Auditoría de logs con `journalctl`       | Caso práctico: GDPR y registros.              |
| **14**     | Abr 22            | **C20**: **Núcleos Modernos (Rust vs C)**     | **M20**: Ejemplos de código en Rust               | Comparación con C.                            |
|            | Abr 24            | **C21**: **Proyecto Integrador (Separado)**   | **M21**: Scripts independientes (Bash/PowerShell) | *Ver detalles abajo*.                         |
| **15**     | Abr 29            | **Examen Parcial 3** (Contenedores + Híbrido) |                                                   |                                               |
| **16**     | May 1             | **Festivo** (Día del Trabajo)                 |                                                   |                                               |
| **17**     | May 6             | **Proyecto Final**: Presentación              |                                                   | Entrega de scripts y documentación.           |
| **18**     | May 8             | **Repaso y dudas**                            |                                                   |                                               |
| **19**     | May 13–Jun 13     | **Exámenes Finales**                          |                                                   |                                               |
| **20**     | Jun 17            | **Último día para notas**                     |                                                   |                                               |

---

### **Cambios Clave y Explicaciones**
1. **Reemplazo de C15 (Redes)**:
   - Se eliminó el tema de redes/sockets (ya visto en otra materia) y se reemplazó por **"Kernel Modules y Drivers"**, un tema avanzado que profundiza en el núcleo de Linux y su interacción con hardware. Esto evita redundancias y añade valor técnico.

2. **Ajuste de C21 (Proyecto Integrador)**:
   - En lugar de un script híbrido, se propone un **proyecto separado**:
     - **PowerShell**: Automatizar despliegue de políticas de seguridad en Windows (ej. configurar firewall, permisos).
     - **Bash**: Implementar un sistema de monitoreo en Linux (ej. alertas por uso excesivo de CPU/memoria).
   - Ambos scripts resuelven un problema común (administrar infraestructura) pero sin interactuar directamente, evitando conflictos de compatibilidad.

3. **Temas Adicionales Mejorados**:
   - **Sistemas Embebidos y RTOS** (C17): Introduce conceptos de tiempo real sin profundizar en redes.
   - **Núcleos Modernos (Rust vs C)** (C20): Muestra ventajas de Rust para desarrollo seguro de sistemas.

4. **Enfoque en Desafíos No Triviales**:
   - Ejemplos de laboratorios:
     - **M15**: Compilar un módulo kernel simple (requiere entender `Makefile` y estructuras de Linux).
     - **M17**: Simular un sistema de tiempo real con `cron` y prioridades estrictas.

---

### **Proyecto Final Detallado**
- **PowerShell**:  
  *Script para auditar y aplicar políticas de seguridad en Windows:*  
  - Detectar servicios inseguros, deshabilitar protocolos obsoletos, generar reportes.  
  - **Desafío**: Usar `Get-WmiObject` y `Invoke-Command` con lógica condicional compleja.

- **Bash**:  
  *Script para monitoreo proactivo en Linux:*  
  - Alertas por correo si el uso de CPU >90% durante 5 minutos, limpieza automática de logs.  
  - **Desafío**: Combinar `cron`, `awk`, y `mailutils` con manejo de señales.

---

### **Ventajas del Ajuste**
- **Evita Redundancias**: Elimina temas ya cubiertos en redes.
- **Mantiene Foco en Shells**: PowerShell y Bash se enseñan en profundidad, con proyectos independientes pero complementarios.
- **Desafíos Técnicos Reales**: Los laboratorios exigen aplicar teoría (ej. módulos kernel, seguridad) sin depender de IA para resolver.

¿Necesitas ajustar algún otro detalle? 😊