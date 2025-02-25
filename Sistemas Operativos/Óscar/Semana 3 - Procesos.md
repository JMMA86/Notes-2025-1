#Sesión #SO #Oscar 
# Componentes de un proceso
Los procesos están reconocidos cuando están cargados en memoria y planificados.
- **Stack:** Memoria que se encarga en los proceso compartidos 
- **Heap:** Memoria donde se alojan los datos variables
- **Data:** Donde se alojan las variables globales
- **Text:** Donde se aloja la información del código fuente

# Estados de un proceso
![[Pasted image 20250218072739.png]]

# ¿Que es un Bloque de Control de Proceso (PCB)?
![[Pasted image 20250218072952.png]]

**Process state:** Los estados del proceso
**Process number:** Identificador único del proceso (PID) 16 bits de tamaño
**Program counter:** Puntero del paso de ejecución en el que está
**Memory limits:** Control de la memoria asignada al proceso

**Process planifier:** Para cambiar el estado de los procesos cuando el SO lo requiera

![[Pasted image 20250218073817.png]]

## Estado de procesos en linux
- **D uninterruptible sleep**
- **R Running**
- **S Interruptible sleep**
- **T Stopped**
- **Z Defunct ("zombie") process**

**Prioridad:** Valor que se le aporta a un proceso para darle prioridad a los procesos
**Load Average:** Cantidad de tareas en espera

# Switch context
![[Pasted image 20250218075131.png]]

