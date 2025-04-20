¡Entendido! Vamos a reformular el temario ajustándose a **4 horas semanales (martes y jueves)**, integrando PowerShell y Bash en mitades separadas, respetando festivos y el libro *Operating System Concepts* (capítulos restantes desde la planificación de CPU). Aquí la propuesta final:

---

### **Temario Ajustado (Febrero 4 - Junio 17)**
| **Semana** | **Fecha**    | **Martes (2h)**                        | **Jueves (2h)**                            | **Notas**                                     |
| ---------- | ------------ | -------------------------------------- | ------------------------------------------ | --------------------------------------------- |
| **1**      | Feb 4 (Mar)  | **C1**: Introducción a SO y PowerShell | **M1**: Cmdlets básicos (procesos)         | Comandos como `Get-Process`, `Stop-Process`.  |
|            | Feb 6 (Jue)  | **C2**: Estructuras del SO             | **M2**: Gestión de servicios en PowerShell | `Get-Service`, `Restart-Service`.             |
| **2**      | Feb 11 (Mar) | **C3**: Hilos y concurrencia           | **M3**: Sincronización con jobs            | `Start-Job`, `Wait-Job`.                      |
|            | Feb 13 (Jue) | **C4**: Planificación de CPU           | **M4**: Simulación de planificación        | Script para priorizar procesos.               |
| **3**      | Feb 18 (Mar) | **C5**: Deadlocks                      | **M5**: Detección de deadlocks             | Análisis de logs con `Get-WinEvent`.          |
|            | Feb 20 (Jue) | **C6**: Memoria principal              | **M6**: Memoria virtual en Windows         | `Get-WmiObject Win32_PageFile`.               |
| **4**      | Feb 25 (Mar) | **C7**: Sistemas de archivos           | **M7**: Permisos NTFS                      | `Get-Acl`, `Set-Acl`.                         |
|            | Feb 27 (Jue) | **C8**: Seguridad en SO                | **M8**: Mitigación de malware              | Scripts de detección de procesos sospechosos. |
| **5**      | Mar 4 (Mar)  | **Examen Parcial 1**                   | **Revisión**                               | Temas: CPU, memoria, seguridad.               |
| **6**      | Mar 6 (Jue)  | **C9**: Introducción a Bash/Linux      | **M9**: Comandos básicos (procesos)        | `ps`, `top`, `kill`.                          |
| **7**      | Mar 11 (Mar) | **C10**: Concurrencia en Bash          | **M10**: Sincronización con señales        | `trap`, `flock`.                              |
|            | Mar 13 (Jue) | **C11**: Planificación en Linux        | **M11**: `cron` y `nice`                   | Configuración de tareas programadas.          |
| **8**      | Mar 18 (Mar) | **C12**: Memoria virtual en Linux      | **M12**: `vmstat` y `pmap`                 | Monitoreo de memoria.                         |
|            | Mar 20 (Jue) | **C13**: Sistemas de archivos en Linux | **M13**: Permisos y ACLs (ext4)            | `chmod`, `getfacl`.                           |
| **9**      | Mar 25 (Mar) | **C14**: Seguridad en Linux            | **M14**: `seccomp` y `AppArmor`            | Configuración de perfiles restrictivos.       |
|            | Mar 27 (Jue) | **C15**: Virtualización (KVM/Docker)   | **M15**: Despliegue con Docker             | `docker run`, `docker-compose`.               |
| **10**     | Abr 1        | **Festivo** (Semana Santa)             | **Festivo**                                |                                               |
| **11**     | Abr 3 (Jue)  | **Examen Parcial 2**                   | **Revisión**                               | Temas: Linux, memoria, seguridad.             |
| **12**     | Abr 8 (Mar)  | **C16**: Sistemas distribuidos         | **M16**: `NFS` y `sshfs`                   | Montaje de sistemas de archivos remotos.      |
|            | Abr 10 (Jue) | **C17**: Rendimiento y profiling       | **M17**: `perf` y `htop`                   | Análisis de cuellos de botella.               |
| **13**     | Abr 15 (Mar) | **C18**: Caso de estudio - Linux       | **M18**: Exploración del kernel            | `/proc`, `dmesg`, `sysctl`.                   |
|            | Abr 17 (Jue) | **C19**: Caso de estudio - Windows     | **M19**: PowerShell avanzado               | `Checkpoint-Computer`, `Get-WinEvent`.        |
| **14**     | Abr 22 (Mar) | **Examen Parcial 3**                   | **Revisión**                               | Temas: Virtualización, sistemas distribuidos. |
| **15**     | Abr 24 (Jue) | **Proyecto Final**: Presentación       | **Trabajo autónomo**                       | Integrar Bash/PowerShell.                     |
| **16**     | May 1 (Jue)  | **Festivo** (Día del Trabajo)          | **Festivo**                                |                                               |
| **17**     | May 6–Jun 13 | **Exámenes Finales**                   | **Exámenes Finales**                       |                                               |
| **18**     | Jun 17       | **Último día para notas**              |                                            |                                               |

---

### **Detalles Clave**
1. **Enfoque en PowerShell (Semanas 1-5) y Bash (Semanas 6-14)**:
   - **PowerShell**: Gestión de procesos, memoria, seguridad y servicios en Windows.
   - **Bash**: Sincronización, permisos, sistemas de archivos y seguridad en Linux.

2. **Laboratorios Desafiantes**:
   - **Ejemplo 1**: Simular un deadlock en PowerShell y resolverlo con `Stop-Process`.
   - **Ejemplo 2**: Configurar un servidor NFS en Linux y montarlo con `sshfs` en Bash.

3. **Proyecto Final**:
   - **Título**: *Automatización multiplataforma para monitoreo de sistemas*.
   - **Objetivo**: Usar PowerShell para auditar recursos en Windows y Bash para generar reportes en Linux, sincronizando datos via SSH.
   - **Desafío**: Integrar ambos scripts sin dependencias externas, usando solo herramientas nativas.

4. **Temas del Libro Cubiertos**:
   - Capítulos 6-21 adaptados: Sincronización, memoria virtual, seguridad, virtualización, sistemas distribuidos, y casos de estudio.

---

### **Ventajas**
- **Estructura Clara**: Dos sesiones semanales (martes/jueves) con teoría y práctica balanceadas.
- **Enfoque Práctico**: Los labs exigen aplicar conceptos del libro (ej. `vmstat` para memoria virtual).
- **Proyectos Realistas**: Los estudiantes deben resolver problemas reales sin depender de IA, pero usando su lógica.