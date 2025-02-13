
## EJERCICIOS

Responda las siguientes preguntas, haciendo uso del sistema de ayuda de
Powershell:

1. Verifique si existen cmdlets que permitan convertir la salida de otro
   cmdlet a formato HTML.

![[Pasted image 20250213073620.png]]

2. Verifique cuáles cmdlets permiten dirigir la salida hacia una impresora,
   o hacia un archivo.

`Out-Printer` y `Out-File` respectivamente

![[Pasted image 20250213073810.png]]
![[Pasted image 20250213073832.png]]

1. Verifique cuántos cmdlets sirven para gestionar procesos.

![[Pasted image 20250213074141.png]]

1. Cuál cmdlet podría usarse para escribir una entrada en un log de eventos?

Podría usarse el cmando `Write-EventLog`

![[Pasted image 20250213074428.png]]

1. Cuáles cmdlets pueden emplearse para gestionar alias?

![[Pasted image 20250213074527.png]]

2. Hay alguna manera de llevar un registro (transcript) de una sesión de
   Powershell, y de grabar dicho registro en un archivo?

![[Pasted image 20250213074829.png]]

3. Cómo se pueden obtener los 100 registros más recientes del log de eventos
   SECURITY del sistema?

![[Pasted image 20250213075251.png]]

4. Existe alguna manera de obtener la lista de los servicios que se están
   ejecutando en un computador remoto?

Se usa el comando `Get-Service` con la IP del computador remoto como computer name

![[Pasted image 20250213075938.png]]

5. Existe alguna manera de obtener la lista de procesos de un computador
   remoto?
	
![[Pasted image 20250213080559.png]]

1. Revise la ayuda del cmdlet ``Out-File``. Cuál es el tamaño de línea que
   emplea este cmdlet por omisión? Existe algún parámetro que permita cambiar
   dicho tamaño?

El tamaño máximo es 80 caracteres, se cambia con el parámetro `-Width`

![[Pasted image 20250213080712.png]]

2. Por omisión, ``Out-File`` sobreescribe el archivo de salida, en caso de que
   exista. Existe algún parámetro que impida la sobreescritura de un archivo
   existente?

![[Pasted image 20250213080844.png]]