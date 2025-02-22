### **Crear el formulario**
```sql
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) 
VALUES (7, 'Acompañamiento a estudiantes', 'Solicitar un servicio de bienestar universitario', 'http://localhost:8080/forms/bienestar-universitario-app', 1, 0);
```

### **Crear las secciones**
```sql
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (23, 'Situación Actual', 'Identificación de la situación actual del estudiante', 1, 1, 7);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (24, 'Información del Colaborador', 'Información del estudiante colaborador', 2, 1, 7);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (25, 'Información de Contacto', 'Información de contacto del estudiante', 3, 1, 7);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (26, 'Información del Acudiente', 'Información del acudiente del estudiante', 4, 1, 7);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (27, 'Asignaturas Matriculadas', 'Detalles de las asignaturas matriculadas', 5, 1, 7);
```

### **Crear los campos**

#### **Sección 1: Situación Actual**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (125, 'atencion_requerida', 'Atención requerida', 'Seleccione el tipo de atención requerida', 1, NULL, 1, 1, NULL, 1, 23, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (126, 'situacion_actual', '¿Existe alguna situación que lo afecte?', 'Seleccione la situación actual que afecta al estudiante', 2, NULL, 1, 1, NULL, 1, 23, 10, NULL);
```

##### **Opciones para el Campo "Atención requerida"**
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (77, 'ACOMPANAMIENTO_ACADEMICO', 'Acompañamiento académico', 1, 1, 125);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (78, 'ACOMPANAMIENTO_PSICOLOGICO', 'Acompañamiento psicológico', 2, 1, 125);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (79, 'ACOMPANAMIENTO_AMBOS', 'Acompañamiento académico y psicológico', 3, 1, 125);
```

##### **Opciones para el Campo "¿Existe alguna situación que lo afecte?"**
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (80, 'ACADEMICO', 'Académico', 1, 1, 126);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (81, 'FAMILIAR', 'Familiar', 2, 1, 126);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (82, 'FINANCIERO', 'Financiero', 3, 1, 126);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (83, 'PERSONAL', 'Personal', 4, 1, 126);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (84, 'SALUD', 'Salud', 5, 1, 126);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (85, 'OTRO', 'Otro', 6, 1, 126);
```

#### **Sección 2: Información del Colaborador**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (127, 'nombre', 'Nombre', 'Nombre completo del estudiante', 1, 'SELECT nombre FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (128, 'tipo_documento', 'Tipo de documento', 'Tipo de documento del estudiante', 2, 'SELECT tipo_documento FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (129, 'numero_documento', 'Número de documento', 'Número de identificación del estudiante', 3, 'SELECT numero_documento FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (130, 'codigo', 'Código', 'Código del estudiante', 4, 'SELECT codigo FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (131, 'edad', 'Edad', 'Edad del estudiante', 5, 'SELECT edad FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (132, 'programa_principal', 'Programa principal', 'Programa principal del estudiante', 6, 'SELECT programa_principal FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (133, 'programa_secundario', 'Programa secundario', 'Programa secundario del estudiante', 7, 'SELECT programa_secundario FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (134, 'semestre', 'Semestre', 'Semestre cursado por el estudiante', 8, 'SELECT semestre FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (135, 'ciudad_nacimiento', 'Ciudad de nacimiento', 'Ciudad natal del estudiante', 9, 'SELECT ciudad_nacimiento FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (136, 'eps', 'EPS', 'EPS del estudiante', 10, 'SELECT eps FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 24, 6, NULL);
```

### **Sección 3: Información de Contacto**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (137, 'direccion_residencia', 'Dirección de residencia', 'Dirección donde reside el estudiante', 1, NULL, 1, 1, NULL, 1, 25, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (138, 'barrio', 'Barrio', 'Barrio donde reside el estudiante', 2, NULL, 1, 1, NULL, 1, 25, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (139, 'celular', 'Celular', 'Número de celular del estudiante', 3, NULL, 1, 1, NULL, 1, 25, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (140, 'personas_convive', 'Personas con quien convive', 'Detalles de las personas con las que convive el estudiante', 4, NULL, 1, 0, NULL, 1, 25, 6, NULL);
```

### **Sección 4: Información del Acudiente**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (141, 'nombre_acudiente', 'Nombre del acudiente', 'Nombre completo del acudiente', 1, NULL, 1, 0, NULL, 1, 26, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (142, 'parentesco', 'Parentesco', 'Relación del acudiente con el estudiante', 2, NULL, 1, 0, NULL, 1, 26, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (143, 'telefono_acudiente', 'Teléfono', 'Número telefónico del acudiente', 3, NULL, 1, 0, NULL, 1, 26, 2, NULL);
```

##### **Opciones para el Campo "Parentesco"**
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (86, 'MADRE_PADRE', 'Madre o Padre', 1, 1, 142);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (87, 'TIA_TIO', 'Tía(o)', 2, 1, 142);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (88, 'ABUELA_ABUELO', 'Abuela(o)', 3, 1, 142);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (89, 'OTRO', 'Otro', 4, 1, 142);
```

### **Sección 5: Asignaturas Matriculadas**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (144, 'asignaturas', 'Asignaturas', 'Seleccione las asignaturas matriculadas', 1, 'SELECT asignaturas FROM estudiantes WHERE id = :id', 1, 1, NULL, 0, 27, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (145, 'acuerdo_condiciones', 'Acuerdo de condiciones de uso', 'Aceptación de términos y condiciones', 2, NULL, 1, 1, NULL, 1, 27, 8, NULL);
```