## Objetivos:
- Construir un gráfico de asignación de recursos y verificarla usando el simulador.
- Utilizar 2 métodos para resolver una condición de bloqueo.
- Utilizar dos métodos para prevenir una condición de bloqueo.

## Descripción del ejercicio.
Se están ejecutando 4 procesos (P1, P2, P3, P4), y están haciendo uso de 4 recursos (0,1,2,3). Cada proceso dentro de su ejecución, bloquea un recurso (el que ud elija), pasado un tiempo bloquea otro recurso (el que ud. elija).

### 1. Dibujar un grafo de asignación de recursos para una condición de interbloqueo de 4 procesos.
![[Drawing 2025-03-27 07.40.07.excalidraw|700]]
### 2. Usando CPU Simulator, acceda al compilador, y en la ventana de PROGRAM SOURCE(INPUT), escriba el siguiente código (analice que hace el código).
```
program DeadlockPN
   resource(X, allocate)
   wait(3)
   resource(Y, allocate)
   for n = 1 to 20
   next
end
```

#### a. Tomando como base el grafo del primer punto, ajuste el código de la siguiente manera:
- N por el número del proceso a crear Ej: P1.
- X y Y por el número de recursos asignado. Ej: 1 y 2

![[Pasted image 20250327075304.png]]

#### b. Dentro de la pestaña Compile, presione el botón COMPILE, luego LOAD IN MEMORY.
![[Pasted image 20250327075345.png]]

#### c. Ejecute los pasos a y b para cada uno de los procesos, recuerde seguir el diseño realizado en su grafo.
Una vez cargados todos los procesos, queda así (se observa en Program List los cuatro):

![[Pasted image 20250327075656.png]]

### 3. Cierre la ventana Program Compiler y presione el botón del OS Simulator.
![[Pasted image 20250327075838.png]]

### 4. Programe la ejecución de los procesos de la siguiente manera:
#### a. Debe dar doble click para adicionar una instancia en la cola de listos READY PROCESSES. Debe hacer esto para cada uno de los procesos.
Se realiza el proceso.

#### b. Deben quedar asi:

![[Pasted image 20250327080251.png]]

#### c. Seleccione el algoritmo de planificación RR.
![[Pasted image 20250327080401.png]]

#### d. Acelere la velocidad del simulador.
![[Pasted image 20250327080508.png]]

#### e. Dentro de la pestaña VIEW, seleccione el botón VIEW RESOURCES y PROCESS LIST.
![[Pasted image 20250327080628.png]]

#### f. En la ventana que se abrió de System Resources, seleccione el check box Stay on top.
![[Pasted image 20250327080837.png]]

#### g. Dentro de la ventana System Resources, presione el botón SHOW DEADLOCKED PROCESSES.
![[Pasted image 20250327080920.png]]

#### 5. En la ventana de OS Simulator, abra la pestaña OS Control, y presiones el botón START.
Se inició el proceso.

#### 6. ¿El grafo de asignación de recursos se parece al suyo?
Sí, es correcto.

![[Pasted image 20250327081347.png]]

#### 7. Analice el resultado obtenido en la ventana de System Resources, Cyclic Resource Allocation Graphs, y Process List (mire el BPC de uno de los procesos).
![[Pasted image 20250327081539.png]]

## Ahora probemos como solucionarlo.
### 8. En la ventana de OS Simulator, dentro de OS Control, presiones el botón SUSPEND.
Se suspende el proceso.

### 9. Dentro de la cola de Waiting, seleccione DEADLOCKP4 y el botón REMOVE.
![[Pasted image 20250327081811.png]]

### 10. Analice con su compañero que efecto tuvo en las colas de Ready y con la asignación de recursos.


### 11. Adicione una nueva instancia a la cola de READY del proceso DEADLOCKP4,
![[Pasted image 20250327082015.png]]

### 12. Presione el botón RESUME.
Se resume el proceso.

### 13. ¿Qué sucedió con el interbloqueo?
![[Pasted image 20250327082148.png]]

### 14. En la ventana de OS Simulator, cargue de nuevo los programas a la cola de READY, y retome desde el punto 5, pero ahora no ejecute el paso 11
Se realizan los pasos.

### 15. ¿Qué diferencia se presento tuvo frente al resultado del paso 13? 
![[Pasted image 20250327083226.png]]

### 16. Dentro de System Resources, pruebe y analice las 4 opciones enmarcadas en el recuadro rojo (ver siguiente imagen), para cada una de ellas analice que hace y su efecto en el sistema.
- Disallow hold and wait: 
- Disallow circular wait: 
- Abort proceses: 
- Pre-empt resources: 