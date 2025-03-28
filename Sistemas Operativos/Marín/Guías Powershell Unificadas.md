# GUÍA 1 - WINDOWS POWERSHELL
Powershell es un shell creado por Microsoft, para gestión de diversos sistemas operativos (existen versiones para Windows, Linux y MacOS). Su mayor potencial se explota en Windows. En esta serie de tutoriales se asume que el usuario dispone de una máquina Windows para seguir los
ejemplos y ejercicios.

## VERIFICACIÓN DE LA VERSIÓN DEL SOFTWARE
Se puede verificar la versión digitando el comando ``$PSVersionTable``.

## USO DEL SISTEMA DE AYUDA
El sistema de ayuda contiene una gran cantidad de información útil para el programador. Su buen uso puede ahorrar muchas búsquedas en Internet (especialmente en servidores aislados). Para usar el sistema de ayuda, lo primero que se debe hacer es actualizarlo. Para ello, se debe iniciar el ISE como **ADMINISTRADOR**, y ejecutar el comando:
```powershell
update-help
```
Este comando requiere de conexión al Internet. Se recomienda hacer esta actualización una vez por mes. Para solicitar ayuda se emplea el comando ``help``. Es útil recordar que los comandos de Powershell se componen de un verbo y un sustantivo, separados por un guión.
- [x] Algunos verbos comunes son ``Get``, ``Set``, ``Add``, ``Remove``, ``Invoke``.
- [x] Algunos sustantivos comunes son ``Process``, ``Service``, ``Item``, ``Eventlog``. *SIEMPRE*
  van en singular.
Por ejemplo, para obtener ayuda acerca de comandos relacionados con procesos, se puede emplear el comando:
```powershell
help *process*
```
El comodín (*) indica cero o más caracteres. Ejemplos de su uso:

| Comando            | Función                                                                             |
| ------------------ | ----------------------------------------------------------------------------------- |
| ``help *process*`` | Muestra ayuda sobre comandos que contienen "process" en cualquier parte del nombre. |
| ``help process*``  | Muestra ayuda de comandos que comienzan con "process".                              |
| ``help *process``  | Muestra ayuda de comandos que terminan en "process".                                |

Si hay varios comandos que cumplen el criterio de búsqueda, Powershell muestra una lista. Si solamente hay un comando, se muestra la ayuda abreviada. Otros ejemplos de uso de la ayuda:

| Comando                        | Función                                             |
| ------------------------------ | --------------------------------------------------- |
| ``help get-process``           | Muestra la ayuda abreviada del comando get-process. |
| ``help get-process -full``     | Muestra la ayuda completa del comando.              |
| ``help get-process -examples`` | Muestra ejemplos de uso del comando.                |

## EJERCICIOS
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
![[Sistemas Operativos/Marín/Imágenes/Pasted image 20250213080508.png]]
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

# GUÍA 2 - GESTIÓN DE ALIAS, ARCHIVOS Y PIPELINE EN POWERSHELL
## GESTIÓN DE ALIAS
Los alias son una manera efectiva de abreviar los nombres de los comandos. Powershell viene con una buena cantidad de alias integrados. Se pueden consultar mediante el comando:
```powershell
get-alias
```
Si se desea consultar si cierto comando tiene alias, se puede hacer mediante el mismo comando, con el parámetro ``-Definition``. Por ejemplo:
```powershell
get-alias -Definition "Get-Service"
```
... mostraría los alias correspondientes al comando ``Get-Service``.
Para crear un alias nuevo se emplea el comando ``New-Alias``. Por ejemplo:
```powershell
new-alias -Name np -Value Notepad
```
... crea un alias llamado ``np`` para el comando Notepad (bloc de notas).
El resto de los comandos para alias se puede consultar con el comando:
```powershell
help *alias
```
Los alias definidos solamente son válidos para la sesión en la que se definan. Una vez se sale de sesión, dichos alias se pierden.

## GESTIÓN DE ARCHIVOS Y DIRECTORIOS
En la filosofía de Powershell, los archivos y los directorios se consideran como objetos tipo **ITEM**. Por lo tanto, se gestionan con los siguientes comandos:
```powershell
new-item
remove-item
get-item
get-childitem
move-item
rename-item
get-itemproperty
set-itemproperty
```
Los comandos finalizados en **Property** permiten gestionar propiedades de los archivos y directorios, tales como fechas de creación, acceso y modificación, y permisos de acceso.

## GESTIÓN DE DIRECTORIOS

Operación | Comando
--------- | -------
Creación        | ``new-item -itemtype directory -name nombre_directorio``
Borrado         | ``remove-item -path nombre_directorio``
Renombrado      | ``rename-item -path nombre_directorio -newname nombre_nuevo``
Mover           | ``move-item -path nombre_directorio -destination nuevo_sitio``
Ingreso         | ``cd nombre_directorio``

Vale la pena recordar que ``.`` (punto) indica el directorio actual y ``..`` (punto punto) indica el padre del directorio actual. Para mostrar el directorio de trabajo se puede emplear el comando ``Get-Location``, que tiene como alias ``pwd`` (igual que en Linux).

## GESTIÓN DE ARCHIVOS

Operación | Comando
--------- | -------
Creación        | ``new-item -itemtype file -name nombre_arch [-value contenido]``
Borrado         | ``remove-item -path nombre_archivo``
Renombrado      | ``rename-item -path nombre_archivo -newname nombre_nuevo``
Mover           | ``move-item -path nombre_archivo -destination nuevo-sitio``

Los archivos de texto se pueden mostrar por consola con el comando ``Get-Content``, que tiene como alias ``type``.

## PROPIEDADES DE ARCHIVOS Y DIRECTORIOS
Las propiedades de archivos y dirtectorios se pueden examinar con el comando ``Get-ItemProperty``. Para Powershell los archivos y los directorios son *OBJETOS*, y sus miembros (propiedades y métodos, entre otros) se pueden listar mediante el comando ``get-member``, de la siguiente manera:
```powershell
get-itemproperty -path nombre_arch | get-member
```
Algunas propiedades interesantes son: ``CreationTime``, ``FullName``,
``LastAccessTime``, ``LastWriteTime``, ``Attributes``.
Por ejemplo, para consultar la fecha de creación de un archivo:
```powershell
get-itemproperty -path nombre_arch -name CreationTime
```
Para consultar los atributos (permisos) del archivo:
```powershell
get-itemproperty -path archivo -name Attributes
```
Para fijar los atributos se emplea el comando ``Set-Itemproperty``, por ejemplo:
```powershell
set-itemproperty -path archivo -name Attributes -value "ReadOnly"
```
Algunos valores de permisos son ``ReadOnly``, ``Hidden``, ``System``. Si se desea fijar varios al tiempo, se separan sus nombres con comas, y se encierra todo el conjunto entre comillas (como en el ejemplo).

## EL PIPELINE
El pipeline (o canalización) permite conectar la salida de un comando con la entrada de otro. En el apartado anterior se vio un ejemplo de su uso:
```powershell
Get-ItemProperty -path nombre_archivo | get-member
```
El poder del pipeline consiste en poder alterar o filtrar la salida de un comando, para obtener la información que realmente se requiere. Por ejemplo, el comando:
```powershell
get-process
```
... muestra los procesos organizados por orden alfabético según nombre de proceso. Si se deseara ordenar por ID de proceso, se puede emplear el pipeline de la siguiente manera:
```powershell
get-process | Sort-Object -Property id
```

# GUÍA 3 - EXPORTACIÓN DE DATOS, PROFUNDIZACIÓN EN EL PIPELINE

## EXPORTAR DATOS EN VARIOS FORMATOS
El cmdlet ``export-CSV`` permite exportar la salida de un comando hacia un archivo de texto, en formato separado por comas. Un ejemplo:
```powershell
get-process | export-csv procesos.csv
```
Abriendo el archivo resultante con un editor de texto, se puede comprobar que cada línea contiene **todos** los atributos de los procesos, a diferencia del listado por pantalla, que solamente muestra un subconjunto predeterminado de campos. El archivo resultante se puede cargar en una herramienta como Excel, en una base de datos, o se puede volver a cargar en Powershell para analizarlo como una instantánea (snapshot) del sistema, con el siguiente comando:
```powershell
import-csv procesos.csv
```
El cmdlet ``export-clixml`` permite exportar la salida de un comando en formato XML, que es más completo que el formato CSV:
```powershell
get-process | export-clixml procesos.xml
```
El comando para importar un archivo grabado por Powershell en formato XML es ``import-clixml``. Un ejemplo:
```powershell
import-clixml procesos.xml
```

## COMPARACIÓN DE OBJETOS
El cmdlet ``Compare-Object`` (que tiene el alias ``diff``) permite comparar dos objetos y mostrar las diferencias entre ambos. En este sentido, permite comparar un snapshot de los procesos (o servicios, o cualquier otra cosa) de un sistema con un snapshot más actual. Por ejemplo, se puede generar un snapshot de los procesos del sistema:
```powershell
get-process | export-clixml procesos.xml
```
...y más tarde, comparar con los procesos que haya en ese momento:
```powershell
diff -Ref (Import-Clixml .\procesos.xml) -Diff (get-process) -Property name
```
El comando anterior se interpreta de la siguiente manera:
- [x] Los paréntesis se interpretan igual que en álgebra: Los comandos que están
  entre paréntesis se ejecutan primero, y sus resultados se pasan al comando
  de más afuera.
- [x] El parámetro ``-Ref`` (``-ReferenceObject`` por extenso) indica el objeto
  que se va a emplear como base para la comparación (en este caso,
  el snapshot que se había grabado previamente).
- [x] El parámetro ``-Diff`` (``-DifferenceObject`` por extenso) indica
  el objeto que se va a comparar contra la base (en este caso, la lista
  actual de procesos).
- [x] El parámetro ``-Property`` indica la propiedad que se compara,
  en este caso, los nombres de los procesos
La salida del comando es similar a ésta:
```console
name                                                           SideIndicator
----                                                           -------------
WindowsInternal.ComposableShell.Experiences.TextInput.InputApp =>           
YourPhone                                                      =>           
LockApp                                                        <=           
Microsoft.Photos                                               <=           
notepad                                                        <=           
```
Aparecen los nombres de los procesos, con una flecha que apunta a izquierda o a derecha:
- [x] Si la flecha apunta a la derecha, indica un nombre que está en el snapshot
  nuevo, pero no en el original.
- [x] Si la flecha apunta a la izquierda, indica un nombre que está en el
  snapshot original, pero no en el nuevo.

## SALIDA A ARCHIVO O A IMPRESORA
Si se desea grabar la salida de un comando a un archivo de texto plano sin formato, se pueden emplear cualquiera de estas maneras (se toma como ejemplo el comando ``get-process``):
- [x] ``get-process > procesos.txt`` (estilo redirección)
- [x] ``get-process | out-file procesos.txt`` (usando el pipeline)
Las dos versiones son funcionalmente equivalentes, pero el comando ``out-file`` recibe parámetros para cambiar el ancho de línea, y para evitar la sobreescritura de un archivo existente. Para leer un archivo de texto plano como cadenas de texto, se emplea el cmdlet
``Get-Content`` (con alias ``cat`` ó ``type``):
```powershell
Get-Content procesos.txt
```
Si se desea enviar la salida de un comando a la impresora, se emplea el cmdlet
``out-printer``:
```powershell
get-process | out-printer
```

## CONVERSIÓN DE LA SALIDA A HTML
La salida de un cmdlet cualquiera puede convertirse a HTML, de la siguiente manera (empleando como ejemplo ``get-process``):
```powershell
get-process | ConvertTo-HTML
```
Este comando manda sus resultados a la pantalla. Para crear un archivo HTML, se requiere combinarlo con ``Out-File``:
```powershell
get-process | ConvertTo-HTML | Out-file procesos.html
```

## EMPLEO DEL PIPELINE PARA ENLAZAR COMANDOS QUE GESTIONAN RECURSOS
El pipeline puede emplearse en forma muy poderosa para gestionar recursos de la máquina. Por ejemplo, el comando:
```powershell
get-process | stop-process
```
... pararía todos los procesos de la máquina si Powershell está corriendo con privilegios de administrador (por favor NO ejecute este comando, ya que podría bloquear la máquina!). Para simular el efecto de este comando, lo puede correr de la siguiente manera:
```powershell
get-process | stop-process -whatif
```
Un mejor ejemplo para un administrador sería buscar un proceso específico y detenerlo. El siguiente comando busca todos los procesos llamados ``notepad`` y trata de detenerlos:
```powershell
get-process -name notepad | stop-process
```

## ORDENANDO Y SELECCIONANDO OBJETOS EMPLEANDO EL PIPELINE
El pipeline se puede emplear para seleccionar propiedades de los objetos que no aparecen por omisión cuando se emplea un cmdlet. También se puede emplear para filtrar los resultados (empleando criterios de búsqueda). Para ordenar, se emplea el cmdlet ``Sort-Object`` (abreviado ``sort``), y para seleccionar propiedades, ``Select-Object`` (abreviado ``select``). Por ejemplo, la lista de procesos aparece normalmente en orden alfabético por nombre de proceso. Para ordenarla por Process ID, se emplea el comando:
```powershell
get-process | sort id
```
Para ordenarla por uso de memoria virtual, en orden decreciente:
```powershell
get-process | sort vm -desc
```
Debe notarse que en este último ejemplo se está ordenando por un campo que no se muestra normalmente en pantalla. Para cambiar los campos que se despliegan, se emplea ``select``:
```powershell
get-process | select -property id,name,vm | sort vm -desc
```
Este ejemplo muestra una tabla con el identificador, nombre y uso de memoria virtual de los procesos de la máquina, ordenada en forma descendente por uso de memoria virtual. Recordar que para ver las propiedades de un objeto (los campos que es posible mostrar) se emplea el cmdlet ``Get-Member`` (abreviado ``gm``):
```powershell
Get-Process | gm
```

## PASO DE PARÁMETROS EN EL PIPELINE
En un pipeline del tipo:
``Comando_A | Comando_B``
...los parámetros se pueden pasar de dos maneras:
- [x] Por valor (ByValue): En este caso, Powershell analiza el tipo de salida
  que da el Comando_A, y determina qué parámetro del Comando_B puede
  recibir esta salida.
Ejemplo: Analizar el comando
```powershell
Get-Process | Stop-Process
```
En este caso, ``Get-Process`` produce objetos tipo **Process**. Examinando la ayuda de ``Stop-Process``, se encuentra el siguiente parámetro:
```console
-InputObject <Process[]>
     Specifies the process objects to stop. Enter a variable that contains the
     objects, or type a command or expression that gets the objects.

     Required?                    true
     Position?                    0
     Default value                None
     Accept pipeline input?       True (ByValue)
     Accept wildcard characters?  false
```
Como se ve, este parámetro puede recibir valores del pipeline, empleando el método ByValue. Por esta razón, el comando funciona. Si se intenta conectar con el pipeline dos comandos que no tienen salida y parámetros compatibles, se produce un error. También puede darse el caso de que el paso de datos se dé por el parámetro incorrecto. Por ejemplo, suponga que el archivo ``computadores.txt`` contiene los nombres de varios computadores, y se desea desplegar la lista de servicios de cada uno de estos computadores. Se podría usar el comando:
```powershell
Get-Content computadores.txt | get-service
```
Este comando produce un error, porque el parámetro requerido (``ComputerName``) no acepta entrada por el pipeline por el método ByValue. El comando se puede ejecutar entonces empleando paréntesis:
```powershell
get-service -computername (get-content computadores.txt)
```
- [x] Por nombre de parámetro (ByPropertyName): En este método se deben
  especificar los nombres de los parámetros. Por ejemplo, considere un archivo
  llamado ``alias.txt`` con el siguiente contenido:
```console
Name,Value
np,notepad
sel,Select-Object
go,Invoke-Command
```
La idea es emplear el contenido de este archivo para introducirlo al comando ``new-alias``, y crear los alias listados en el archivo. Nótese que la primera línea del archivo equivale a los encabezados de columna. Si se importa este archivo con ``import-csv``, se obtiene lo siguiente:
```console
PS C:\Users\Usuario\powershell> Import-Csv .\alias.txt

Name Value         
---- -----         
np   notepad       
sel  Select-Object
go   Invoke-Command
```
Si se emplea ``Get-Member`` para analizar esta salida, se obtiene:
```console
   TypeName: System.Management.Automation.PSCustomObject

Name        MemberType   Definition                    
----        ----------   ----------                    
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()             
GetType     Method       type GetType()                
ToString    Method       string ToString()             
Name        NoteProperty string Name=np                
Value       NoteProperty string Value=notepad
```
Se puede ver que las dos últimas propiedades son tipo **String**. Analicemos ahora los parámetros del comando ``New-Alias``:
```console
New-Alias [-Name] <String> [-Value] <String> [-Confirm] [-Description
<String>] [-Force] [-Option {None | ReadOnly | Constant | Private | AllScope |
Unspecified}] [-PassThru] [-Scope <String>] [-WhatIf] [<CommonParameters>]
```
Los parámetros ``Name`` y ``Value`` reciben entradas tipo **String**. Y si se revisa la ayuda completa, se puede comprobar que ambos parámetros reciben valores por el pipeline empleando la modalidad ByPropertyName:
```console
-Name <String>
        Specifies the new alias. You can use any alphanumeric characters in an
        alias, but the first character cannot be a number.

        Required?                    true
        Position?                    0
        Default value                None
        Accept pipeline input?       True (ByPropertyName)
        Accept wildcard characters?  false

-Value <String>
        Specifies the name of the cmdlet or command element that is being aliased.

        Required?                    true
        Position?                    1
        Default value                None
        Accept pipeline input?       True (ByPropertyName)
        Accept wildcard characters?  false
```
Se puede entonces pasar la información de un comando a otro, de la siguiente manera:
```powershell
import-csv alias.txt | new-alias
```

## EJERCICIOS
1. Cree dos archivos de texto similares (con una o dos líneas diferentes).
   Compárelos empleando ``diff``.
![[Pasted image 20250227075741.png]]
2. Qué ocurre si se ejecuta:
   ```powershell
   get-service | export-csv servicios.csv | out-file
   ```
Por qué?
![[Pasted image 20250227075810.png]]
Esto sucede porque la ruta del archivo de output es un parámetro requerido.
3. Cómo haría para crear un archivo delimitado por puntos y comas (;)?
   PISTA: Se emplea ``export-csv``, pero con un parámetro adicional.
Para crearlo con puntos y comas se usa el parámetro `-Delimiter`, que es un char
![[Pasted image 20250227080053.png]]
4. ``Export-cliXML`` y ``Export-CSV`` modifican el sistema, porque pueden crear
   y sobreescribir archivos. Existe algún parámetro que evite la
   sobreescritura de un archivo existente? Existe algún parámetro que
   permita que el comando pregunte antes de sobresscribir un archivo?
No existe un comando que permita preguntar directamente antes de sobrescribir un archivo, pero se puede obtener un resultado similar al usar el parámetro `-NoClubber`, y ejecutar el comando sin este parámetro si se quiere sobrescribir.
![[Pasted image 20250227080845.png]]
5. Windows emplea configuraciones regionales, lo que incluye el separador de
   listas. En Windows en inglés, el separador de listas es la coma (,).
   Cómo se le dice a ``Export-CSV`` que emplee el separador del sistema en lugar
   de la coma?
Usando el parámetro `-UseCulture`
![[Pasted image 20250227081054.png]]
6. Identifique un cmdlet que permita generar un número aleatorio.
![[Pasted image 20250227081523.png]]
7. Identifique un cmdlet que despliegue la fecha y hora actuales.
![[Pasted image 20250227081535.png]]
8. Qué tipo de objeto produce el cmdlet de la pregunta 7?
![[Pasted image 20250227081637.png]]
9. Usando el cmdlet de la pregunta 7 y ``select-object``, despliegue solamente
   el día de la semana, así:
```console
   DayOfWeek
   ---------
    Thursday
```
![[Pasted image 20250227081956.png]]
10. Identifique un cmdlet que muestre información acerca de parches (hotfixes)
    instalados en el sistema.
![[Pasted image 20250227082025.png]]
11. Empleando el cmdlet de la pregunta 10, muestre una lista de parches
    instalados. Luego extienda la expresión para ordenar la lista por fecha
    de instalación, y muestre en pantalla únicamente la fecha de instalación,
    el usuario que instaló el parche, y el ID del parche. Recuerde examinar
    los nombres de las propiedades.
![[Pasted image 20250227082037.png]]
![[Pasted image 20250227082538.png]]
12. Complemente la solución a la pregunta 11, para que el sistema ordene los
    resultados por la descripción del parche, e incluya en el listado la
    descripción, el ID del parche, y la fecha de instalación.
    Escriba los resultados a un archivo HTML.
![[Pasted image 20250227082733.png]]
13. Muestre una lista de las 50 entradas más nuevas del log de eventos System.
    Ordene la lista de modo que las entradas más antiguas aparezcan primero;
    las entradas producidas al mismo tiempo deben ordenarse por número índice.
    Muestre el número índice, la hora y la fuente para cada entrada. Escriba
    esta información en un archivo de texto plano.
![[Pasted image 20250227083908.png]]

# GUÍA 4 - FORMATEO DE LA SALIDA, MÁS ESTRATEGIAS DE FILTRADO
## FORMATEO DE LA SALIDA: TABLAS, LISTAS, PRESENTACIÓN ANCHA
Los comandos de Powershell presentan su salida en tablas o en listas, dependiendo del comando que se emplee y de los atributos que se le pida mostrar. Anteriormente, se vio que se puede emplear el comando ``Select-Object`` (abreviado como ``Select``) para determinar los atributos que se despliegan. Sin embargo, el despliegue está limitado a los atributos relacionados con el comando invocado. Por ejemplo:
```Powershell
Get-Process | select name,vm
```
...despliega una lista de procesos, compuesta solamente por el nombre de cada proceso y la cantidad de memoria virtual que emplea. Los comandos de formateo permiten, además de imprimir los atributos estándar, desplegar atributos calculados a partir de los atributos básicos. El despliegue se puede hacer en modalidad de tabla, lista o formato ancho; a continuación se explica en detalle cada modalidad.

## FORMATEO DE TABLAS
El cmdlet ``Format-Table`` (abreviado como ``ft``) permite desplegar la salida de un comando en formato de tabla. Los parámetros que recibe este comando son los siguientes:

 Parámetros | Significado
 --------- | -----------
``-Property`` | Permite especificar los atributos (nativos o calculados) que se desea desplegar. Se puede emplear el comodín ``*`` para especificarlos todos.
``-Autosize`` | Permite que el comando acomode el ancho de las columnas de la mejor manera posible. Normalmente dicho ancho es fijo, pero este parámetro ajusta el ancho de las columnas al valor más largo de cada atributo.
``-Groupby`` | Con este parámetro se especifica uno de los campos. Cada vez que haya un cambio en el valor de este campo, se imprime un nuevo juego de encabezados. Se recomienda emplear ``Sort-Object`` antes de hacer un ``Format-Table`` con ``Groupby``, para evitar repetición innecesaria de los encabezados.
``-Wrap`` | Cuando el valor de un campo es excesivamente largo, Powershell lo recorta, e indica esto con puntos suspensivos (...). El parámetro ``Wrap`` hace que los valores largos se extiendan a una o varias líneas adicionales, según la longitud del valor.

Ejemplos:
```Powershell
get-process | ft -Property *
```
... trata de imprimir todos los atributos de los procesos. Powershell revisa todas las líneas de la salida, y hace el mejor esfuerzo para acomodar todos los campos posibles. Debido a esta revisión, el comando demora un tiempo relativamente largo en ejecutarse.
```Powershell
get-process | ft -Property ID,Name,Responding -AutoSize
```
... obtiene una lista de procesos con los atributos ID, Name y Responding. El ancho de las columnas se optimiza.
```Powershell
get-process | ft -Property * -autosize
```
... trata de imprimir todos los atributos de los procesos. Sin embargo, este comando corre más rápido, ya que se optimiza el ancho de las columnas.
```Powershell
Get-Service | sort Status | ft Name,Status,DisplayName -groupby Status
```
... imprime una lista de servicios dividida en dos secciones: Una de servicios detenidos (Stopped) y otra de servicios en ejecución (Running).
```Powershell
Get-Service | ft Name,Status,DisplayName -autosize -wrap
```
... imprime una lista de servicios con los atributos Name, Status y DisplayName. El atributo DisplayName (que es el más largo) se extenderá a varias líneas si es necesario.

## FORMATEO DE LISTAS
El cmdlet ``Format-List`` (abreviado como ``fl``) permite mostrar los atributos como una serie de duplas nombre-valor, por ejemplo:
```console
Get-Service -name bits | fl -Property *

Name                : bits
RequiredServices    : {RpcSs}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : Background Intelligent Transfer Service
DependentServices   : {}
MachineName         : .
ServiceName         : bits
ServicesDependedOn  : {RpcSs}
ServiceHandle       :
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
Site                :
Container           :
```
Nótese que aquí se filtró la salida del comando ``Get-Service``, para obtener únicamente la información del servicio BITS (de lo contrario, ``Format-List`` hubiera arrojado un grupo de líneas similar por cada servicio). Aquí se le pidió a ``Format-List`` que mostrara todos los atributos del servicio (el parámetro ``-Property`` con comodín).

## FORMATO ANCHO
El formato ancho permite mostrar dos o más columnas de una propiedad del objeto en particular, al estilo del comando ``ls`` de Linux. Se emplea el cmdlet
``Format-Wide`` (abreviado ``fw``) para este propósito.
Ejemplos:
```Powershell
get-process | format-wide
```
... muestra dos columnas de nombres de procesos (``Format-wide`` escoge por
omisión la propiedad Name).
```Powershell
get-process | format-wide name -col 4
```
... muestra 4 columnas de nombres de procesos.
## CAMBIO DE NOMBRES DE ATRIBUTOS, Y CÁLCULO DE NUEVOS ATRIBUTOS
Un ejemplo de cambio de nombre de un atributo es el siguiente:
```Powershell
get-service | ft @{name='Servicio';expression={$_.Name}},Status,DisplayName
```
En este caso, se define una nueva columna, empleando la expresión que va entre los símbolos ``@{ }`` .
* ``Name`` indica el nombre que tendrá la columna. Se puede abreviar como ``n``.
* ``Expression`` define el contenido de la columna. Se puede abreviar como ``e``.
* ``$_`` es una variable especial que contiene el objeto que se está procesando
  en ese momento. Para este ejemplo, ``$_.Name`` quiere decir: "Del objeto
  actual, tome la propiedad ``Name``".
El comando anterior se podría abreviar así:
```Powershell
get-service | ft @{n='Servicio';e={$_.Name}},Status,DisplayName
```
El siguiente comando:
```Powershell
get-process | ft Name,@{n='VM (MB)';e={$_.VM / 1MB}} -
```
...despliega una tabla de procesos con dos columnas: **Name** (propiedad nativa) y **VM (MB)**, que muestra la cantidad de memoria virtual usada por el proceso, en megabytes.
El comando:
```Powershell
get-process | ft Name,@{n='VM (MB)';e={$_.VM / 1MB -as [int]}} -AutoSize
```
...despliega una tabla similar a la del ejemplo anterior, pero redondea la
memoria virtual a un valor entero.

## USO DE LOS COMANDOS DE FORMATEO
El comando de formateo que se vaya a emplear (``ft``, ``fl`` ó ``fw``) debe ser el **último** en el pipeline antes de imprimir en pantalla. La salida de un comando de formateo solamente puede ser redirigida a un archivo de **TEXTO**. Si se intenta convertir la salida a otro formato (CSV, HTML, XML) los resultados serán inconsistentes.

## MÁS ESTRATEGIAS DE FILTRADO
Los resultados de los comandos se pueden filtrar de varios modos:
* Empleando comodines en los parámetros que así lo soporten. Por ejemplo:
```Powershell
get-service -name s*
```
...muestra una lista de servicios cuyo nombre empieza por S.
* Si el parámetro no soporta comodines, se puede emplear el cmdlet
``Where-Object`` (abreviado ``Where``) en el pipeline. Por ejemplo:
```Powershell
Get-Service | where -filter { $_.Status -like "Run*" }
```
...muestra una lista de servicios cuyo estado (Status) comienza con "Run" Algunos de los operadores de comparación que se pueden usar son:

Operador | Significado
-------- | -----------
``-eq``      | Igual
``-ne``      | No igual
``-gt``      | Mayor que
``-ge``      | Mayor que o igual
``-lt``      | Menor que
``-le``      | Menor que o igual
``-like``    | Coincide con la expresión con comodines
``-notlike`` | No coincide con la expresión con comodines

Por ejemplo:
```Powershell
Get-Service | where -filter { $_.Status -eq "Running" }
```
Las comparaciones de cadenas no hacen normalmente distinción entre mayúsculas y minúsculas. Si se requiere hacerla, se antepone una ``c`` a los operadores (``-ceq``, ``-cne``, ``-cgt``, ``-cge``...). Se pueden emplear también los conectivos ``-and`` y ``-or``. Para mayor información, puede consultarse el tópico de ayuda ``about_comparison_operators``.

## UN EJEMPLO COMPLETO DE FILTRADO COMPLEJO
Se requiere sacar un listado que incluya los 10 procesos que más memoria virtual están consumiendo, sin incluir a Powershell. Al final, debe presentarse el total de memoria virtual que están consumiendo estos 10 procesos. El listado solamente debe incluir las columnas Name y VM.
- [x] El primer paso (filtrar los procesos Powershell) se puede hacer así:
```Powershell
Get-Process | where -filter { $_.Name -notlike "Powershell*" }
```
- [x] Luego se organiza por la columna VM, en orden descendente, y se especifican las columnas que se desea mostrar:
```Powershell
Get-Process | where -filter { $_.Name -notlike "Powershell*" } | sort VM -desc | select name,vm
```
- [x] Por último, se emplea el cmdlet ``Measure-Object`` para hallar el total de uso de memoria virtual:
```Powershell
Get-Process | where -filter { $_.Name -notlike "Powershell*" } | sort VM | select name,vm -first 10 | Measure-Object -Property vm -sum
```

## EJERCICIOS
**1. ¿Cómo se puede obtener una lista de procesos mostrando solo el nombre y la memoria virtual utilizada?**
Puedes usar el siguiente comando en PowerShell:
```Powershell
Get-Process | select Name, VM
```
Este comando muestra los procesos en ejecución con solo las columnas "Name" y "VM".

**2. ¿Cómo se pueden mostrar todos los atributos de los procesos en una tabla?**
Para desplegar todos los atributos en una tabla, usa:
```Powershell
Get-Process | Format-Table -Property *
```
Esto imprimirá todos los atributos disponibles para cada proceso en formato de tabla.

**3. ¿Cómo se puede ajustar automáticamente el ancho de las columnas en una tabla de procesos?**
Usa el parámetro `-AutoSize` en `Format-Table`:
```Powershell
Get-Process | Format-Table -Property ID, Name, Responding -AutoSize
```
Esto optimiza el ancho de las columnas según el contenido.

**4. ¿Cómo se pueden agrupar los servicios según su estado (Running o Stopped)?**
Primero, ordenamos por estado y luego agrupamos:
```Powershell
Get-Service | Sort-Object Status | Format-Table Name, Status, DisplayName -GroupBy Status
```
Así, los servicios se mostrarán en secciones separadas según su estado.

**5. ¿Cómo se pueden mostrar los atributos de un servicio en formato de lista?**
Para ver todos los atributos de un servicio como una lista, usa:
```Powershell
Get-Service -Name bits | Format-List -Property *
```
Este comando muestra cada atributo del servicio en formato de clave-valor.

**6. ¿Cómo se puede mostrar la lista de procesos en varias columnas como en Linux?**
Usa el formato ancho (`Format-Wide`):
```Powershell
Get-Process | Format-Wide Name -Column 4
```
Esto imprime los nombres de los procesos en 4 columnas.

**7. ¿Cómo se puede cambiar el nombre de una columna en la salida de un comando?**
Para renombrar una columna, usa un objeto calculado:
```Powershell
Get-Service | Format-Table @{Name='Servicio'; Expression={$_.Name}}, Status, DisplayName
```
Aquí, la columna "Name" se renombra como "Servicio".

**8. ¿Cómo se puede mostrar la memoria virtual en MB en lugar de bytes?**
Usa una expresión calculada para dividir por 1MB:
```Powershell
Get-Process | Format-Table Name, @{Name='VM (MB)'; Expression={$_.VM / 1MB}} -AutoSize
```
Esto convierte los valores de memoria a megabytes.

**9. ¿Cómo se puede filtrar la salida para mostrar solo servicios cuyo nombre empiece con 'S'?**
Usa el siguiente comando:
```Powershell
Get-Service -Name S*
```
Esto mostrará solo los servicios cuyo nombre empieza con "S".

**10. ¿Cómo se pueden filtrar los servicios que están en estado "Running"?**
Usa `Where-Object` para filtrar los resultados:
```Powershell
Get-Service | Where-Object { $_.Status -eq "Running" }
```
Esto muestra solo los servicios que están en ejecución.

**11. ¿Cómo se pueden combinar condiciones en un filtrado?**
Por ejemplo, para listar servicios que están corriendo **y** cuyo nombre empieza con "W":
```Powershell
Get-Service | Where-Object { $_.Status -eq "Running" -and $_.Name -like "W*" }
``
Este comando filtra por estado y por nombre al mismo tiempo.

**12. ¿Cómo se pueden obtener los 10 procesos que más memoria virtual consumen (sin incluir PowerShell) y calcular el total?**
Paso 1: Filtrar procesos que no sean PowerShell:
```Powershell
Get-Process | Where-Object { $_.Name -notlike "Powershell*" }
```
Paso 2: Ordenar por uso de memoria:
```Powershell
Get-Process | Where-Object { $_.Name -notlike "Powershell*" } | Sort-Object VM -Descending
```
Paso 3: Seleccionar los 10 primeros y mostrar solo "Name" y "VM (MB)":
```Powershell
Get-Process | Where-Object { $_.Name -notlike "Powershell*" } | Sort-Object VM -Descending | Select-Object -First 10 | Format-Table Name, @{Name='VM (MB)'; Expression={$_.VM / 1MB}}
```
Paso 4: Calcular el total de memoria utilizada por estos 10 procesos:
```Powershell
Get-Process | Where-Object { $_.Name -notlike "Powershell*" } | Sort-Object VM -Descending | Select-Object -First 10 | Measure-Object VM -Sum
```
El resultado mostrará la memoria total consumida por estos procesos.