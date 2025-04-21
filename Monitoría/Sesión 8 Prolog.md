Para probar cada tarea en la consola de Prolog, debes cargar el archivo del seguimiento y luego hacer las consultas adecuadas. Aquí tienes cómo probar cada una de las tareas:

### ⚙️ **Paso previo: Cargar el archivo**
Si guardaste el archivo como `SeguimientoProlog.pl`, abre la consola de Prolog y carga el archivo con:

```prolog
[Seguimiento].
```

---

### 🔹 **Tarea 1: Mutant Alliance**
- **Probar que Deadpool es parte de la mutant alliance:**
  ```prolog
  team(deadpool, mutantAlliance).
  ```
### Respuesta
True

- **Listar todos los miembros de la mutant alliance:** (xmen, scarletWitch, venom, deadpool, wolverine, professorX, magneto)
  ```prolog
  team(X, mutantAlliance).
  ```
### Respuesta
X = xmen ;
X = scarletWitch ;
X = venom ;
X = deadpool ;
X = wolverine ;
X = professorX ;
X = magneto.

---

### 🔹 **Tarea 2: Superhero Alliance**
- **Probar que Magneto es parte de la superhero alliance:**
  ```prolog
  team(magneto, superheroAlliance).
  ```
### Response
False

- **Listar todos los miembros de la superhero alliance:** (X = scarletWitch...)
  ```prolog
  team(X, superheroAlliance).
  ```
### Response
X = scarletWitch ;
X = blackPanther ;
X = doctorStrange ;
X = captainMarvel ;
X = avenger ;
X = guardian ;
X = ironman ;
X = captainAmerica ;
X = thor ;
X = hulk ;
X = blackWidow ;
X = hawckeye ;
X = spiderman ;
X = starlord ;
X = gamora ;
X = drax ;
X = rocket ;
X = groot.

---

### 🔹 **Tarea 3: Boss**
- **Buscar el jefe de los Avengers:** (X = captainAmerica)
  ```prolog
  boss(X, avenger).
  ```
### Response
captainAmerica

- **Mostrar todos los jefes y sus equipos:** (X = captainAmerica, Y = avenger)
  ```prolog
  boss(X, Y).
  ```
### Response
X = captainAmerica,
Y = avenger ;
X = starlord,
Y = guardian ;
X = professorX,
Y = xmen ;
X = ironman,
Y = superheroAlliance ;
X = deadpool,
Y = mutantAlliance ;
X = captainAmerica,
Y = ironman ;
X = Y, Y = captainAmerica ;
X = captainAmerica,
Y = thor ;
X = captainAmerica,
Y = hulk ;
X = captainAmerica,
Y = blackWidow ;
X = captainAmerica,
Y = hawckeye ;
X = captainAmerica,
Y = spiderman ;
X = Y, Y = starlord ;
X = starlord,
Y = gamora ;
X = starlord,
Y = drax ;
X = starlord,
Y = rocket ;
X = starlord,
Y = groot ;
X = professorX,
Y = wolverine ;
X = Y, Y = professorX ;
X = professorX,
Y = magneto ;
X = ironman,
Y = scarletWitch ;
X = ironman,
Y = blackPanther ;
X = ironman,
Y = doctorStrange ;
X = ironman,
Y = captainMarvel ;
X = ironman,
Y = avenger ;
X = ironman,
Y = guardian ;
X = Y, Y = ironman ;
X = ironman,
Y = captainAmerica ;
X = ironman,
Y = thor ;
X = ironman,
Y = hulk ;
X = ironman,
Y = blackWidow ;
X = ironman,
Y = hawckeye ;
X = ironman,
Y = spiderman ;
X = ironman,
Y = starlord ;
X = ironman,
Y = gamora ;
X = ironman,
Y = drax ;
X = ironman,
Y = rocket ;
X = ironman,
Y = groot ;
X = deadpool,
Y = xmen ;
X = deadpool,
Y = scarletWitch ;
X = deadpool,
Y = venom ;
X = Y, Y = deadpool ;
X = deadpool,
Y = wolverine ;
X = deadpool,
Y = professorX ;
X = deadpool,
Y = magneto.

---

### 🔹 **Tarea 4: Hero Team**
- **Listar todos los miembros del hero team:** (X = scarletWitch)
  ```prolog
  heroTeam(X).
  ```
### Response
X = scarletWitch ;
X = blackPanther ;
X = doctorStrange ;
X = captainMarvel ;
X = avenger ;
X = guardian ;
X = ironman ;
X = captainAmerica ;
X = thor ;
X = hulk ;
X = blackWidow ;
X = hawckeye ;
X = spiderman ;
X = starlord ;
X = gamora ;
X = drax ;
X = rocket ;
X = groot ;
X = xmen ;
X = scarletWitch ;
X = venom ;
X = deadpool ;
X = wolverine ;
X = professorX ;
X = magneto.

- **Comprobar si Wolverine es parte del hero team:** (True)
  ```prolog
  heroTeam(wolverine).
  ```
### Response
True

---

### 🔹 **Tarea 5: Villain Team**
- **Listar todos los miembros del villian team:** (X = thanos)
  ```prolog
  villainTeam(X).
  ```
### Response
X = thanos ;
X = loki ;
X = ultron ;
X = redSkull ;
X = greenGoblin ;
X = doctorOctopus ;
X = mysterio ;

- **Verificar que Ultron es un villano:** (True)
  ```prolog
  villainTeam(ultron).
  ```
### Response
True

---

### 🔹 **Tarea 6: Rivales**
- **Listar todos los pares de rivales:** (X = scarletWitch, Y = thanos)
  ```prolog
  rivals(X, Y).
  ```
### Response
X = scarletWitch,
Y = thanos ;
X = scarletWitch,
Y = loki ;
X = scarletWitch,
Y = ultron ;
X = scarletWitch,
Y = redSkull ;
X = scarletWitch,
Y = greenGoblin ;
X = scarletWitch,
Y = doctorOctopus ;
X = scarletWitch,
Y = mysterio ;
X = blackPanther,

- **Comprobar si Deadpool y Mysterio son enemigos:** (True)
  ```prolog
  rivals(deadpool, mysterio).
  ```
### Response
true