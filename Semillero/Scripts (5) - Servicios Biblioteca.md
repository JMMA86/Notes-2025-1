### Crear el formulario

```sql
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) 
VALUES (5, 'Solicitudes Biblioteca', 'Solicitar un servicio de biblioteca', 'http://localhost:8080/forms/servicios-biblioteca', 1, 0);
```

### Crear las secciones

```sql
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (16, 'Datos del Solicitante', 'Información del solicitante', 1, 1, 5);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (17, 'Datos de la Solicitud', 'Información de la solicitud específica', 2, 1, 5);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (18, 'Finalizar Solicitud', 'Confirmación y observaciones', 3, 1, 5);
```

### Crear los campos

#### Sección 1: Datos del Solicitante

```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (74, 'identificacion', 'Identificación', 'Número de identificación del solicitante', 1, 'SELECT identificacion FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 16, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (75, 'nombres_apellidos', 'Nombres y Apellidos', 'Nombre completo del solicitante', 2, 'SELECT nombres_apellidos FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 16, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (76, 'dependencia_programa', 'Dependencia / Programa', 'Dependencia o programa asociado', 3, 'SELECT dependencia FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 16, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (77, 'correo_electronico', 'Correo Electrónico', 'Correo del solicitante', 4, 'SELECT correo FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 16, 7, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (78, 'telefono_ext', 'Teléfono/Ext', 'Teléfono o extensión del solicitante', 5, 'SELECT telefono FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 16, 2, NULL);
```

#### Sección 2: Datos de la Solicitud

```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (79, 'servicio', 'Servicio', 'Seleccione el servicio requerido', 1, NULL, 1, 1, NULL, 1, 17, 10, NULL);
```

##### Opciones para "Servicio"

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (44, 'OBTENCION_DOC', 'Obtención de documentos', 1, 1, 79);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (45, 'FORMACION_USUARIOS', 'Formación de usuarios', 2, 1, 79);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (46, 'PRESTAMO_INTER', 'Solicitud de préstamo interbibliotecario nacional', 3, 1, 79);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (47, 'CCC', 'Base de datos cámara de comercio de Cali (CCC)', 4, 1, 79);
```

#### Campos Dinámicos Basados en el Tipo de Servicio

Para cada tipo de servicio, se agregan campos según la lógica especificada:

##### **Tipo = 1 ("Obtención de documentos")**

```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (80, 'departamento_responsable', 'Departamento / Área responsable', 'Indique el área responsable', 2, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (81, 'profesor_solicitante', 'Profesor Solicitante', 'Nombre del profesor solicitante', 3, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (82, 'cenco', 'Cenco', 'Centro de costos', 4, 'SELECT cenco FROM solicitantes WHERE id = :id', 1, 0, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (83, 'adquisicion', 'Adquisición de', 'Seleccione el tipo de adquisición', 5, NULL, 1, 1, NULL, 1, 17, 10, NULL);
```

##### Opciones para "Adquisición de"

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (48, 'LIBROS', 'Libros', 1, 1, 83);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (49, 'MATERIAL_AV', 'Material audiovisual', 2, 1, 83);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (50, 'CASOS', 'Casos o lecturas', 3, 1, 83);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (51, 'SUSCRIPCIONES', 'Suscripciones', 4, 1, 83);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (52, 'ARTICULOS', 'Artículos', 5, 1, 83);
```

##### **Tipo = 2 ("Formación de usuarios")**

```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (84, 'programa_academico', 'Programa académico', 'Seleccione el programa académico', 6, NULL, 1, 1, NULL, 1, 17, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (85, 'materia', 'Materia', 'Nombre de la materia para la capacitación', 7, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (86, 'semestre', 'Semestre', 'Semestre en el que se dicta la materia', 8, NULL, 1, 1, NULL, 1, 17, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (87, 'niveles_capacitacion', 'Niveles de capacitación', 'Seleccione el nivel de capacitación requerido', 9, NULL, 1, 1, NULL, 1, 17, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (88, 'lugar_capacitacion', 'Lugar capacitación', 'Seleccione el lugar de la capacitación', 10, NULL, 1, 1, NULL, 1, 17, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (89, 'fecha_capacitacion', 'Fecha capacitación', 'Fecha en que se realizará la capacitación', 11, NULL, 1, 1, NULL, 1, 17, 5, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (90, 'hora_inicio', 'Hora inicio capacitación', 'Hora de inicio de la capacitación', 12, NULL, 1, 1, NULL, 1, 17, 4, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (91, 'hora_finalizacion', 'Hora finalización capacitación', 'Hora de finalización de la capacitación', 13, NULL, 1, 1, NULL, 1, 17, 4, NULL);
```

##### Opciones para "Programa académico"

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (53, 'PREGRADO', 'Pregrado', 1, 1, 84);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (54, 'POSGRADO', 'Posgrado', 2, 1, 84);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (55, 'OTRO', 'Otro', 3, 1, 84);
```

##### Opciones para "Niveles de capacitación"

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (56, 'INDUCCIÓN_BIBLIOTECA', 'Nivel 1: Inducción biblioteca', 1, 1, 87);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (57, 'BÚSQUEDA_ESPECIALIZADA', 'Nivel 2: Búsqueda especializada de Información', 2, 1, 87);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (58, 'APOYO_INVESTIGACION', 'Nivel 3: Apoyo a la investigación', 3, 1, 87);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (59, 'OTRO', 'Otro', 4, 1, 87);
```

##### Opciones para "Lugar capacitación"

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (60, 'SALA_COMPUTO', 'Requiero sala de cómputo', 1, 1, 88);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (61, 'SALA_MOVIL', 'Tengo salón y solicito sala móvil', 2, 1, 88);
```

##### **Tipo = 3 ("Préstamo interbibliotecario nacional")**

```SQL
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (92, 'titulo', 'Título', 'Título del material solicitado', 14, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (93, 'autor', 'Autor', 'Autor del material solicitado', 15, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (94, 'editorial', 'Editorial', 'Editorial del material solicitado', 16, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (95, 'edicion', 'Edición', 'Edición del material solicitado', 17, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (96, 'biblioteca', 'Biblioteca', 'Seleccione la biblioteca asociada', 18, NULL, 1, 1, NULL, 1, 17, 10, NULL);
```

##### Opciones para "Biblioteca"

```SQL
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (62, 'BANREP', 'Biblioteca Luis Angel Arango (BanRep)', 1, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (63, 'UNIANDES', 'UniAndes', 2, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (64, 'EAFIT', 'EAFIT', 3, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (65, 'UNAD', 'UNAD', 4, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (66, 'MANUELA_BELTRAN', 'Universidad Manuela Beltran', 5, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (67, 'COLEGIO_MAYOR', 'Colegio Mayor de Cundinamarca', 6, 1, 96);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (68, 'ECCI', 'Universidad ECCI', 7, 1, 96);
```

##### **Tipo = 4 ("Base de datos Cámara de Comercio de Cali")**

```SQL
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (97, 'programa', 'Programa', 'Programa académico asociado', 19, 'SELECT programa FROM programas WHERE id = :id', 1, 1, NULL, 0, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (98, 'materia', 'Materia', 'Seleccione la materia asociada', 20, 'SELECT materia FROM materias WHERE id = :id', 1, 1, NULL, 0, 17, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (99, 'codigo_ciiu', 'Código CIIU', 'Código de clasificación industrial uniforme', 21, NULL, 1, 1, NULL, 1, 17, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (100, 'descripcion_solicitud', 'Descripción de la solicitud', 'Describa los detalles de la solicitud', 22, NULL, 1, 1, NULL, 1, 17, 13, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (101, 'acuerdo', 'Acuerdo de condiciones de uso', 'Aceptación de términos y condiciones', 23, NULL, 1, 1, NULL, 1, 17, 8, NULL);
```

#### Sección 3: Finalizar Solicitud

```SQL
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (102, 'observaciones', 'Observaciones', 'Comentarios adicionales', 1, NULL, 1, 0, NULL, 1, 18, 13, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (103, 'captcha', 'Captcha', 'Validación de seguridad', 2, NULL, 1, 1, NULL, 1, 18, 8, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (104, 'acuerdo', 'Acuerdo de condiciones de uso', 'Aceptación de términos y condiciones', 3, NULL, 1, 1, NULL, 1, 18, 8, NULL);
```