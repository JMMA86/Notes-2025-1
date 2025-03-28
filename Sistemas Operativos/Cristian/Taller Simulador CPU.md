
Grafo de asignación de recursos

![[Taller Simulador CPU 2025-03-27 07.26.07.excalidraw]]

Usando CPU Simulator, acceda al compilador, y en la ventana de
PROGRAM SOURCE(INPUT), escriba el siguiente código (analice que
hace el código).
``
```
program DeadlockPN
	resource(X, allocate)
	wait(3)
	resource(Y, allocate)
	for n = 1 to 20
		next
end
```

#### Procesos listos para ejecución

![[Pasted image 20250327082323.png]]

![[Pasted image 20250327082254.png]]
![[Pasted image 20250327082305.png]]

#### Ejecutando los procesos

![[Pasted image 20250327082711.png]]

![[Pasted image 20250327082653.png]]

![[Pasted image 20250327082638.png]]

![[Pasted image 20250327082628.png]]