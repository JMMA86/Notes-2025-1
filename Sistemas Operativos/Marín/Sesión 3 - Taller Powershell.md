Responda las siguientes preguntas, haciendo uso del sistema de ayuda de Powershell:

1. Verifique si existen cmdlets que permitan convertir la salida de otro cmdlet a formato HTML.
	
R/ Usando el comando:
```Powershell
Get-Command -Noun *Html*	
```

Se encuentra este:
```Powershell
ConvertTo-Html
```
	
2. Verifique cuáles cmdlets permiten dirigir la salida hacia una impresora, o hacia un archivo.
	
R/ Usando el comando:
```Powershell
Get-Command -Verb Out
```

Se encuentran estos:
```Powershell
Out-File
Out-Printer
```
	
3. Verifique cuántos cmdlets sirven para gestionar procesos.
	
R/ Usando el comando:
```Powershell
Get-Command -Noun Process
```

Se encuentran estos:
```Powershell
Debug-Process
Get-Process
Start-Process
Stop-Process
Wait-Process
```
	
4. Cuál cmdlet podría usarse para escribir una entrada en un log de eventos?
	
R/ Usando el comando:
```Powershell
Get-Command -Noun EventLog
```

Se encuentra este:
```Powershell
Write-EventLog
```
	
5. Cuáles cmdlets pueden emplearse para gestionar alias?
	
R/ Usando el comando:
```Powershell
Get-Command -Noun Alias
```

Se encuentran estos:
```Powershell
Export-Alias
Get-Alias
Import-Alias
New-Alias
Set-Alias
```
	
6. Hay alguna manera de llevar un registro (transcript) de una sesión de Powershell, y de grabar dicho registro en un archivo?
	
R/ Sí, se puede usar `Start-Transcript` para iniciar el registro y `Stop-Transcript` para detenerlo.
```Powershell
Start-Transcript -Path "C:\ruta\del\archivo.txt"
Stop-Transcript
```
	
7. Cómo se pueden obtener los 100 registros más recientes del log de eventos SECURITY del sistema?
	
R/ Se puede lograr usando el comando:
```Powershell
Get-EventLog -LogName Security -Newest 100
```
	
8. Existe alguna manera de obtener la lista de los servicios que se están ejecutando en un computador remoto?
	
R/ Sí, se puede lograr usando el comando:
```Powershell
Get-Service -ComputerName "NombreDelPC"
```
	
9. Existe alguna manera de obtener la lista de procesos de un computador remoto?
	
R/ Sí, se puede lograr usando el comando:
```Powershell
Get-Process -ComputerName "NombreDelPC"
```
	
10. Revise la ayuda del cmdlet `Out-File`. Cuál es el tamaño de línea que emplea este cmdlet por omisión? Existe algún parámetro que permita cambiar dicho tamaño?
	
R/ Usando el comando:
```Powershell
Get-Help Out-File -Full
```

Vemos que el tamaño especificado es de 80 caracteres:
![[Pasted image 20250213080508.png]]

Por lo que, para cambiarlo, se debe usar el comando:
```Powershell
Get-Process | Out-File -FilePath "salida.txt" -Width 200
```

Encontramos que el tamaño de línea que emplea por omisión es de 
	
11. Por omisión, `Out-File` sobrescribe el archivo de salida, en caso de que exista. Existe algún parámetro que impida la sobreescritura de un archivo existente?
	
R/ Sí, para evitar eso, se puede usar el comando:
```Powershell
Get-Process | Out-File -FilePath "salida.txt" -NoClobber
```
