# WINDOWS POWERSHELL

Powershell es un shell creado por Microsoft, para gestión de diversos
sistemas operativos (existen versiones para Windows, Linux y MacOS).

Su mayor potencial se explota en Windows. En esta serie de tutoriales
se asume que el usuario dispone de una máquina Windows para seguir los
ejemplos y ejercicios.

## CÓMO ENCONTRARLO

Digitar **powershell** en la opción de búsqueda de Windows. En máquinas
Windows de 32 bits, aparecerán dos opciones:

- [ ] **Powershell**: Shell tradicional
- [ ] **Powershell ISE**: Ejecuta comandos directamente, igual que el shell
  tradicional, pero también incorpora un editor de scripts y ayuda con la
  sintaxis, por lo que se recomienda para el aprendizaje.

En máquinas de 64 bits, aparecerán 4 opciones:

- [ ] **Powershell** y **Powershell ISE**: Aplicaciones de 64 bits.
- [ ] **Powershell x86** y **Powershell ISE x86**: Aplicaciones de 32 bits.

Se recomienda trabajar con la versión nativa para cada versión del sistema
operativo. En estos tutoriales, se asume que el usuario trabajará con el
ISE (resulta más fácil para aprender).

## VERIFICACIÓN DE LA VERSIÓN DEL SOFTWARE

Una vez iniciado el ISE, aparecerá el símbolo del sistema, precedido de las
letras PS, por ejemplo:

``PS C:\Users\Usuario>``

Se puede verificar la versión digitando el comando ``$PSVersionTable``.

## USO DEL SISTEMA DE AYUDA

El sistema de ayuda contiene una gran cantidad de información útil para el
programador. Su buen uso puede ahorrar muchas búsquedas en Internet
(especialmente en servidores aislados).

Para usar el sistema de ayuda, lo primero que se debe hacer es actualizarlo.
Para ello, se debe iniciar el ISE como **ADMINISTRADOR**, y ejecutar el comando:

```powershell
update-help
```

Este comando requiere de conexión al Internet. Se recomienda hacer esta
actualización una vez por mes.

Para solicitar ayuda se emplea el comando ``help``. Es útil recordar que los
comandos de Powershell se componen de un verbo y un sustantivo, separados por
un guión.

- [ ] Algunos verbos comunes son ``Get``, ``Set``, ``Add``, ``Remove``, ``Invoke``.
- [ ] Algunos sustantivos comunes son ``Process``, ``Service``, ``Item``, ``Eventlog``. *SIEMPRE*
  van en singular.

Por ejemplo, para obtener ayuda acerca de comandos relacionados con procesos,
se puede emplear el comando:

```powershell
help *process*
```

El comodín (*) indica cero o más caracteres. Ejemplos de su uso:

Comando | Función
------- | -------
``help *process*``  | Muestra ayuda sobre comandos que contienen "process" en cualquier parte del nombre.
``help process*``   | Muestra ayuda de comandos que comienzan con "process".
``help *process``   | Muestra ayuda de comandos que terminan en "process".

Si hay varios comandos que cumplen el criterio de búsqueda, Powershell muestra
una lista. Si solamente hay un comando, se muestra la ayuda abreviada.

Otros ejemplos de uso de la ayuda:

Comando | Función
------- | -------
``help get-process``           |  Muestra la ayuda abreviada del comando get-process.
``help get-process -full``     | Muestra la ayuda completa del comando.
``help get-process -examples`` | Muestra ejemplos de uso del comando.
