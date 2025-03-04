
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

1. Identifique un cmdlet que permita generar un número aleatorio.

![[Pasted image 20250227081523.png]]

1. Identifique un cmdlet que despliegue la fecha y hora actuales.

![[Pasted image 20250227081535.png]]

1. Qué tipo de objeto produce el cmdlet de la pregunta 7?

![[Pasted image 20250227081637.png]]

2. Usando el cmdlet de la pregunta 7 y ``select-object``, despliegue solamente
   el día de la semana, así:

```console
   DayOfWeek
   ---------
    Thursday
```

![[Pasted image 20250227081956.png]]

1. Identifique un cmdlet que muestre información acerca de parches (hotfixes)
    instalados en el sistema.
    
![[Pasted image 20250227082025.png]]

1. Empleando el cmdlet de la pregunta 10, muestre una lista de parches
    instalados. Luego extienda la expresión para ordenar la lista por fecha
    de instalación, y muestre en pantalla únicamente la fecha de instalación,
    el usuario que instaló el parche, y el ID del parche. Recuerde examinar
    los nombres de las propiedades.
    
![[Pasted image 20250227082037.png]]

![[Pasted image 20250227082538.png]]

2. Complemente la solución a la pregunta 11, para que el sistema ordene los
    resultados por la descripción del parche, e incluya en el listado la
    descripción, el ID del parche, y la fecha de instalación.
    Escriba los resultados a un archivo HTML.

![[Pasted image 20250227082733.png]]

3. Muestre una lista de las 50 entradas más nuevas del log de eventos System.
    Ordene la lista de modo que las entradas más antiguas aparezcan primero;
    las entradas producidas al mismo tiempo deben ordenarse por número índice.
    Muestre el número índice, la hora y la fuente para cada entrada. Escriba
    esta información en un archivo de texto plano.

![[Pasted image 20250227083908.png]]

