## Estudiantes

- Juan Manuel Marín Angarita - A00382037
- Cristian Eduardo Botina Carpio - A00395008

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

Sí, es correcto, en el grafo se indica que hay una dependencia circular.

![[Pasted image 20250327081347.png]]

#### 7. Analice el resultado obtenido en la ventana de System Resources, Cyclic Resource Allocation Graphs, y Process List (mire el BPC de uno de los procesos).

![[Pasted image 20250327081539.png]]

## Ahora probemos como solucionarlo.
### 8. En la ventana de OS Simulator, dentro de OS Control, presiones el botón SUSPEND.

Se suspende el proceso.

### 9. Dentro de la cola de Waiting, seleccione DEADLOCKP4 y el botón REMOVE.

![[Pasted image 20250327081811.png]]

### 10. Analice con su compañero que efecto tuvo en las colas de Ready y con la asignación de recursos.

En la cola de ready se volvió a insertar el proceso 3, ya que ahora el recurso 4 ya está disponible (luego de haber eliminado al proceso 4 de la cola de listos).

### 11. Adicione una nueva instancia a la cola de READY del proceso DEADLOCKP4

Se inserta la nueva instancia del proceso 4.

![[Pasted image 20250327082015.png]]

### 12. Presione el botón RESUME.

Se resume el proceso.

### 13. ¿Qué sucedió con el interbloqueo?

El interbloqueo se libera. Como el recurso 4 ya está disponible, el proceso 3 puede continuar su ejecución y completar el programa, entonces, el recurso 3 se libera. El proceso 4 es el siguiente en la cola de listos, por lo que reserva su recurso 4 y se queda esperando a que el 1 esté disponible. A partir de ahí los procesos 2 y 1 se completan y el recurso 1 se libera, haciendo que el proceso 4 finalice y con esto, todo el proceso.

![[Pasted image 20250327082148.png]]

### 14. En la ventana de OS Simulator, cargue de nuevo los programas a la cola de READY, y retome desde el punto 5, pero ahora no ejecute el paso 11

Se realizan los pasos.

### 15. ¿Qué diferencia se presento tuvo frente al resultado del paso 13? 

En esta situación, al no insertarse una nueva instancia del proceso 4, lo que sucede es que estamos sacrificando el proceso 4 para que los demás puedan completarse. En este caso, al no volver a meter al proceso 4 a la cola de listos, el recurso 4 no se vuelve a ocupar, por lo que el proceso 3 continúa con su ejecución hasta terminar. Como el recurso 3 ya está liberado, el proceso 2 continúa hasta terminar. Lo mismo sucede con el proceso 1. La diferencia es que al quitar el proceso 4 y no volverlo a insertar se libera esa dependencia circular rápidamente, con el método anterior.


![[Pasted image 20250327083226.png]]

### 16. Dentro de System Resources, pruebe y analice las 4 opciones enmarcadas en el recuadro rojo (ver siguiente imagen), para cada una de ellas analice que hace y su efecto en el sistema.

Esas 4 opciones, son:

- Disallow hold and wait: Cuando se activa esta opción, evita que un proceso solicite recursos que ya están en uso, en la ejecución, uno de los procesos llega a estar solicitado y requerido al mismo tiempo, por lo que el sistema evita que se produzca un deadlock.
- Disallow circular wait: Si esta opción está activada, el sistema utiliza técnicas como ordenamiento total de recursos para garantizar que los recursos siempre se asignen en un orden específico.
- Abort proceses: Esta opción permite abortar uno o más procesos para romper la dependencia circular y resolver el deadlock. Tiene un efecto similar al de la pregunta 15, donde un proceso se cancela por completo para romper la dependencia circular.
- Pre-empt resources: El sistema puede forzar la liberación de recursos de uno o más procesos involucrados en el deadlock. El efecto que produce es el que se describe en la pregunta 13, donde al quitar el proceso 4 y volver a insertarlo, se lograba liberar el recurso 4, pero al final se completaban todos los procesos.