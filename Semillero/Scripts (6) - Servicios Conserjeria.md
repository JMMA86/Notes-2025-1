### **Crear el formulario**
```sql
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) 
VALUES (6, 'Sección de Aseo y Conserjería', 'Solicitar un servicio de conserjería', 'http://localhost:8080/forms/servicios-conserjería', 1, 0);
```

### **Crear las secciones**
```sql
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (19, 'Datos del Solicitante', 'Información del solicitante', 1, 1, 6);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (20, 'Datos del Responsable', 'Información del responsable de la solicitud', 2, 1, 6);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (21, 'Datos de la Solicitud', 'Detalles de la solicitud de conserjería', 3, 1, 6);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) 
VALUES (22, 'Finalizar Solicitud', 'Confirmación y observaciones', 4, 1, 6);
```

### **Crear los campos**

#### **Sección 1: Datos del Solicitante**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (105, 'telefono', 'Teléfono/Ext', 'Número telefónico del solicitante', 1, 'SELECT telefono FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 19, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (106, 'correo', 'Correo Electrónico', 'Correo del solicitante', 2, 'SELECT correo FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 19, 7, NULL);
```

#### **Sección 2: Datos del Responsable**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (107, 'identificacion', 'Identificación', 'Número de identificación del responsable', 1, NULL, 1, 1, NULL, 1, 20, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (108, 'dependencia', 'Dependencia / Programa', 'Dependencia del responsable', 2, 'SELECT dependencia FROM responsables WHERE id = :id', 1, 1, NULL, 0, 20, 6, 107);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (109, 'nombres_apellidos', 'Nombres y Apellidos', 'Nombre completo del responsable', 3, 'SELECT nombres FROM responsables WHERE id = :id', 1, 1, NULL, 0, 20, 6, 107);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (110, 'correo_responsable', 'Correo Electrónico', 'Correo del responsable', 4, 'SELECT correo FROM responsables WHERE id = :id', 1, 1, NULL, 0, 20, 7, 107);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (111, 'telefono_responsable', 'Teléfono/Ext', 'Teléfono del responsable', 5, 'SELECT telefono FROM responsables WHERE id = :id', 1, 1, NULL, 0, 20, 2, 107);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (112, 'cenco', 'CENCO', 'Centro de costo asociado', 6, NULL, 1, 1, NULL, 1, 20, 6, NULL);
```

#### **Sección 3: Datos de la Solicitud**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (113, 'tipo_apoyo', 'Tipo de Apoyo', 'Seleccione el tipo de apoyo requerido', 1, NULL, 1, 1, NULL, 1, 21, 10, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (114, 'nombre_actividad', 'Nombre de la actividad', 'Especifique el nombre de la actividad', 2, NULL, 1, 1, NULL, 1, 21, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (115, 'num_personas', 'Número de personas', 'Cantidad de personas participantes', 3, NULL, 1, 1, NULL, 1, 21, 2, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (116, 'fecha', 'Fecha', 'Fecha de la actividad', 4, NULL, 1, 1, NULL, 1, 21, 5, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (117, 'hora_inicio', 'Hora inicio', 'Hora de inicio de la actividad', 5, NULL, 1, 1, NULL, 1, 21, 4, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (118, 'hora_fin', 'Hora de finalización', 'Hora de finalización de la actividad', 6, NULL, 1, 1, NULL, 1, 21, 4, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (119, 'lugar', 'Lugar', 'Ubicación de la actividad', 7, NULL, 1, 1, NULL, 1, 21, 6, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (120, 'requerimientos', 'Requerimientos', 'Seleccione los requerimientos necesarios', 8, NULL, 1, 1, NULL, 1, 21, 11, NULL);
```

##### **Opciones para "Tipo de Apoyo"**
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (69, 'TINTO', 'Tinto', 1, 1, 113);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (70, 'REFRIGERIO', 'Refrigerio', 2, 1, 113);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (71, 'DESAYUNO', 'Desayuno', 3, 1, 113);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (72, 'ALMUERZO', 'Almuerzo', 4, 1, 113);
```

##### **Opciones para "Requerimientos"**
```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (73, 'LOGISTICA', 'Apoyo Logístico', 1, 1, 120);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (74, 'AGUA', 'Agua', 2, 1, 120);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (75, 'MANTEL_AZUL', 'Mantel azul', 3, 1, 120);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) 
VALUES (76, 'MANTEL_BLANCO', 'Mantel blanco', 4, 1, 120);
```

##### **Campos Condicionados a "Mantel azul" o "Mantel blanco"**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (121, 'cantidad_mantel', 'Cantidad', 'Cantidad de manteles solicitados', 9, NULL, 1, 1, NULL, 1, 21, 2, 120);
```

##### **Reglas y Condiciones**
```sql
INSERT INTO ICESI_APPS.NFM_RULE (ID, JHI_RULE, DESCRIPTION) 
VALUES (2, 'MANTEL_CONDICION', 'Mostrar campo cantidad si se selecciona mantel azul o blanco');

INSERT INTO ICESI_APPS.NFM_CONDITION (ID, CONSECUTIVE, RULE_ID, FIELD_ID, OPTION_ID) 
VALUES (13, 1, 2, 120, 75); -- Mantel azul

INSERT INTO ICESI_APPS.NFM_CONDITION (ID, CONSECUTIVE, RULE_ID, FIELD_ID, OPTION_ID) 
VALUES (14, 2, 2, 120, 76); -- Mantel blanco
```

#### **Sección 4: Finalizar Solicitud**
```sql
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (122, 'observaciones', 'Observaciones', 'Comentarios adicionales', 1, NULL, 1, 0, NULL, 1, 22, 13, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (123, 'captcha', 'Captcha', 'Validación de seguridad', 2, NULL, 1, 1, NULL, 1, 22, 8, NULL);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) 
VALUES (124, 'acuerdo', 'Acuerdo de condiciones de uso', 'Aceptación de términos y condiciones', 3, NULL, 1, 1, NULL, 1, 22, 8, NULL);
```
