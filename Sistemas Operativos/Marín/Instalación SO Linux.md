
| Nombre                  | Código    |
| ----------------------- | --------- |
| Cristian Eduardo Botina | A00395008 |
| Juan Manuel Marín       | A00382037 |
 
![[Pasted image 20250209161251.png]]

1. **Try or Install Lubuntu**: Permite probar el SO sin instalarlo, o hacer la instalación en el disco duro mediante la interfaz gráfica.
2. **Lubuntu (Safe Graphics)** : Desactiva los controladores avanzados, como los de NVIDIA, para evitar errores y realizar diagnósticos.
3. **Test Memory** : Ejecuta una herramienta llamada Memtest86+ para detectar problemas relacionados con la memoria RAM.

![[Pasted image 20250209161617.png]]

Esta selección afecta:

4. **Hora y fecha del sistema**: Asegura que el reloj del sistema esté correcto.
5. **Registros y eventos**: Evita inconsistencias en logs y programaciones de tareas.
6. **Sincronización de red**: Permite coordinar con servidores en la zona correcta.
7. **Horarios de aplicaciones**: Afecta calendarios, recordatorios y software dependiente del tiempo.

![[Pasted image 20250209164914.png]]

Dividir el disco en varias particiones tiene ventajas como:

8. **Separación de datos**: Permite mantener el sistema operativo y los datos de usuario en particiones distintas, facilitando reinstalaciones sin perder archivos.
9. **Mejor rendimiento**: Algunas particiones pueden optimizar el acceso a datos y evitar la fragmentación.
10. **Mayor seguridad**: Si una partición se corrompe, las demás pueden seguir funcionando.
11. **Facilidad de backup y recuperación**: Puedes respaldar solo la partición de datos sin tocar la del sistema.

En una instalación típica de Linux, las particiones más comunes son:

1. **`/` (root)**: Contiene el sistema operativo y los programas.
2. **`/home`** _(opcional pero recomendable)_: Guarda los archivos de usuario y configuraciones personales.
3. **`swap`** _(opcional si hay suficiente RAM)_: Espacio en disco usado como memoria virtual cuando la RAM se llena.
4. **`/boot`** _(opcional)_: Puede ser útil en sistemas con UEFI o cifrado de disco.

- **Ext4**:
    - Sistema de archivos estándar en Linux.
    - Más sencillo, confiable y rápido para discos de uso normal.
    - No permite redimensionar particiones fácilmente una vez creadas.

- **LVM (Logical Volume Manager)**:
    - Permite crear volúmenes lógicos en lugar de particiones fijas.
    - Facilita **redimensionar** particiones y agregar más discos en el futuro.
    - Útil para servidores o sistemas que requieren flexibilidad en la gestión del almacenamiento.

Si no es necesario ajustar el tamaño de las particiones en el futuro, **Ext4** es la mejor opción. Para flexibilidad y escalabilidad, **LVM** es más conveniente.

![[Pasted image 20250209165932.png]]

MBR (Master Boot Record) y GPT (GUID Partition Table) son esquemas de particionado de disco.

|Característica|**MBR**|**GPT**|
|---|---|---|
|**Límite de tamaño**|Máximo 2 TB por partición|Hasta 9.4 ZB (Zettabytes)|
|**Número de particiones**|Máximo 4 primarias (o 3 primarias + 1 extendida con particiones lógicas)|Hasta 128 particiones en sistemas modernos|
|**Compatibilidad**|Compatible con BIOS y sistemas antiguos|Compatible con UEFI y más moderno|
|**Seguridad**|No tiene redundancia; si el MBR se daña, el disco no arranca|Guarda múltiples copias de la tabla de particiones para recuperación|
|**Velocidad y eficiencia**|Más lento en discos grandes|Mejor rendimiento en discos grandes|

- **MBR** para compatibilidad con sistemas antiguos o BIOS tradicional.
- **GPT** cuando se usa UEFI, se necesitan más de 2 TB por partición o más de 4 particiones.

![[Pasted image 20250209170852.png]]

En Linux, `/dev/sda` representa un **dispositivo de almacenamiento**.

- **`/dev/`** → Directorio donde se encuentran los dispositivos del sistema.
- **`sda`** → Primer disco duro detectado (SATA, SCSI o NVMe en sistemas antiguos).

Si hay más discos, se nombran como:

- **`/dev/sdb`** → Segundo disco.
- **`/dev/sdc`** → Tercer disco, y así sucesivamente.

Las **particiones** dentro de un disco se numeran:

- **`/dev/sda1`** → Primera partición del primer disco.
- **`/dev/sda2`** → Segunda partición, etc.