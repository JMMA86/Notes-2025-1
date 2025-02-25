## Solución subida de casos SGS
1. Se ignoró la verificación de certificados SSL en el arreglo de `$opciones`.
2. Se cambió la base de datos objetivo en el `solicitudes_sgs` a la de `mysql8.icesi.edu.co` (antes estaba en `mysql.icesi.edu.co`).
3. Se cambió el retorno del método `crearCasoMantis()` de la clase `service_web.php` de `$dates` a `$id_caso`.
4. Se agregaron impresiones de error en consola en las acciones de `#agregar-nota` de la clase `views.js`, y `#button-envio` al enviar casos de la clase `crearCaso.js`.

## Solución subida de notas
1. Se cambió la obtención del último id insertado del método `mysqli_insert_id()` al método `$mysql->getLastId()` de la clase `MySQL`.
2. Existía un desfase en el muestreo de notas, por 14 ids. Era un error en la consulta de obtener notas (Línea 890) del archivo `solicitante.php` de `class`:

```SQL
SELECT n.note, bug_note.last_modified, users.realname, bug_note.reporter_id
from mantis_bugnote_text_table n, mantis_bugnote_table bug_note, mantis_user_table users
where bug_note.view_state=10
and bug_note.bug_id=$bug_id
and n.id=bug_note.bugnote_text_id -- Antes estaba como bug_note.id
and bug_note.reporter_id=users.id
```

Se realizó lo mismo en la línea 897.

## Solución subida de archivos
1. Se cambió la forma de conexión a la BD de ADO a la clase MYSQL.
2. Se cambió la forma de obtener el `$id_solicitante` con el método `fetchAll()` de la clase `MySQL`.
3. Se cambió la forma de hacer la query a una compatible con los parámetros `%parametro%`.
4. Se agregaron comillas simples a los parámetros que fallaban para que la consulta saliese completa (`VALUES (1, , , )` -> `VALUES (1, '', '', '')`).
5. Se hizo lo mismo para `notificaciones_casos`.
6. Se agregó la función `escape($string)` en la clase `MySQL` para admitir archivos binarios.
7. Se repitió el proceso en la clase `crearCaso.php`, para la subida de archivos de casos.