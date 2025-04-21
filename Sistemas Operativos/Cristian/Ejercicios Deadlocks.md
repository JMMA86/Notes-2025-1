
![[Pasted image 20250325162119.png]]

### **Ejercicio 1: Interbloqueo entre vehículos**

#### **a. Demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen en este ejemplo.**

- **Mutual Exclusión**: Los semáforos regulan el acceso exclusivo a las calles, lo que implica que los vehículos compiten por recursos exclusivos (espacios en la calle).
  
- **Retención y Espera**: En la figura, varios vehículos están detenidos en diferentes cruces, esperando para avanzar, por lo que cada vehículo retiene su posición (un recurso) mientras espera otros recursos (espacios libres en la calle).

- **No Preemptividad**: Los vehículos no pueden ser forzados a moverse o ceder sus posiciones; deben decidir libremente cuándo avanzar o girar.

- **Ciclo de Espera**: Existe un ciclo circular de espera:
  - El vehículo azul espera al vehículo rojo.
  - El vehículo rojo espera al vehículo verde.
  - El vehículo verde espera al vehículo amarillo.
  - El vehículo amarillo espera al vehículo azul.

#### **b. Enunciar una regla simple para evitar los interbloqueos en este sistema.**

Una regla simple para evitar interbloqueos en este sistema sería implementar semáforos con temporización adecuada que permitan el flujo de tráfico en un orden predefinido, evitando situaciones de espera mutua.

---

![[Pasted image 20250325162123.png]]

### **Ejercicio 2: Problema de los Cinco Filósofos**

Una solución sencilla para evitar el interbloqueo en este problema es limitar el tiempo que un filósofo puede esperar para obtener ambos palillos. Si no logra obtenerlos en ese tiempo, debe soltar los palillos que tiene y volver a intentarlo más tarde.


![[Pasted image 20250325162127.png]]

### **Ejercicio 3: Sistema de Recursos y Seguridad**

Inicialmente si, se encuentra en un estado seguro, ya que la cantidad de instancias disponibles para cada recurso es mayor que cero.

![[Pasted image 20250325164022.png]]

Si, puede concederse inmediatamente la solicitud, pues T1 requiere 0 unidades de 1 de A, 4 de 5 de B, y 2 de 2 de C. Ademas, ese proceso puede solicitar como máximo 0,7,5 instancias de los recursos, y los valores están en ese rango. Entonces, la cantidad de instancias disponibles se vuelve 1, 1, 0 para A, B y C respectivamente.