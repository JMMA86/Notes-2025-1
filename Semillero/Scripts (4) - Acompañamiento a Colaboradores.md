### Crear el formulario
```sql
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) 
VALUES (4, 'Acompañamiento a colaboradores', 'Solicitar un servicio de acompañamiento', 'http://localhost:8080/forms/acompanamiento-colaboradores', 1, 0);
```

### Crear las secciones
```sql
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (12, 'Situación Actual', 'Identificación de la situación actual', 1, 1, 4);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (13, 'Información del Colaborador', 'Datos básicos del colaborador', 2, 1, 4);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (14, 'Información de Contacto', 'Datos de contacto del colaborador', 3, 1, 4);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (15, 'Información de Contacto de Emergencia', 'Datos de contacto en caso de emergencia', 4, 1, 4);
```

### Crear los campos
#### Sección 1: Situación Actual
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (54, 'situacion_actual', '¿Existe alguna situación que lo afecte?', 'Seleccione una opción', 1, NULL, 1, 1, NULL, 1, 12, 10, NULL);
```

##### Opciones para "¿Existe alguna situación que lo afecte?"
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (39, 'FAMILIAR', 'Familiar', 2, 1, 54);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (40, 'FINANCIERO', 'Financiero', 3, 1, 54);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (41, 'PERSONAL', 'Personal', 4, 1, 54);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (42, 'SALUD', 'Salud', 5, 1, 54);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (43, 'OTRO', 'Otro', 6, 1, 54);
```

#### Sección 2: Información del Colaborador
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (55, 'nombre', 'Nombre', 'Nombre completo del colaborador', 1, 'SELECT nombre FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (56, 'cedula', 'Cédula', 'Número de identificación', 2, 'SELECT cedula FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (57, 'edad', 'Edad', 'Edad del colaborador', 3, 'SELECT edad FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (58, 'estado_civil', 'Estado Civil', 'Estado civil del colaborador', 4, 'SELECT estado_civil FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (59, 'cargo', 'Cargo', 'Cargo del colaborador', 5, 'SELECT cargo FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (60, 'dependencia', 'Dependencia', 'Dependencia del colaborador', 6, 'SELECT dependencia FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (61, 'fecha_nacimiento', 'Fecha de Nacimiento', 'Fecha de nacimiento del colaborador', 7, 'SELECT fecha_nacimiento FROM colaboradores WHERE id = :id', 1, 1, NULL, 0, 13, 5, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (62, 'ciudad_origen', 'Ciudad de origen', 'Ciudad natal del colaborador', 8, NULL, 1, 1, NULL, 1, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (63, 'departamento_origen', 'Departamento de origen', 'Departamento natal del colaborador', 9, 'SELECT departamento_origen FROM colaboradores WHERE id = :id', 1, 0, NULL, 1, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (64, 'eps', 'EPS', 'Entidad promotora de salud del colaborador', 10, 'SELECT eps FROM colaboradores WHERE id = :id', 1, 1, NULL, 1, 13, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (65, 'escolaridad', 'Escolaridad', 'Nivel educativo alcanzado', 11, 'SELECT escolaridad FROM colaboradores WHERE id = :id', 1, 1, NULL, 1, 13, 6, NULL);
```

#### Sección 3: Información de Contacto
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (66, 'direccion', 'Dirección de residencia', 'Dirección de residencia del colaborador', 1, 'SELECT direccion FROM colaboradores WHERE id = :id', 1, 1, NULL, 1, 14, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (67, 'barrio', 'Barrio', 'Barrio de residencia', 2, 'SELECT barrio FROM colaboradores WHERE id = :id', 1, 1, NULL, 1, 14, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (68, 'celular', 'Celular', 'Número de contacto móvil', 3, 'SELECT celular FROM colaboradores WHERE id = :id', 1, 1, NULL, 1, 14, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (69, 'personas_convive', 'Personas con quien convive', 'Detalle de las personas que conviven con el colaborador', 4, NULL, 1, 0, NULL, 1, 14, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (70, 'ocupacion', 'Ocupación', 'Ocupación del colaborador', 5, NULL, 1, 0, NULL, 1, 14, 6, NULL);
```

#### Sección 4: Información de Contacto de Emergencia
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (71, 'contacto_emergencia', 'Nombre de contacto de emergencia', 'Nombre de la persona de contacto', 1, NULL, 1, 0, NULL, 1, 15, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (72, 'telefono_emergencia', 'Teléfono', 'Número de teléfono del contacto', 2, NULL, 1, 0, NULL, 1, 15, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (73, 'acuerdo_condiciones', 'Acuerdo de condiciones de uso', 'Aceptar términos y condiciones', 3, NULL, 1, 1, NULL, 1, 15, 8, NULL);
```
