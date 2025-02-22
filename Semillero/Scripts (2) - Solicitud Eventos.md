### Crear el formulario

```sql
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) 
VALUES (2, 'Solicitud Eventos', 'Registrar un evento', 'http://localhost:8080/forms/solicitud-eventos', 1, 1);
```

### Crear las secciones del formulario

```sql
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES
(5, 'Datos del Solicitante', 'Información de contacto del solicitante', 1, 1, 2);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES
(6, 'Datos del Responsable', 'Información del responsable del evento', 2, 1, 2);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES
(7, 'Datos de la Reserva', 'Detalles del evento a registrar', 3, 1, 2);

INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES
(8, 'Finalizar Solicitud', 'Confirmación y envío de la solicitud', 4, 1, 2);

```

### Crear campos del formulario

```sql
-- Sección 1: Datos del Solicitante
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(19, 'telefono_ext', 'Teléfono/Ext', 'Número de teléfono o extensión del solicitante', 1, 'SELECT telefono_ext FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 5, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(20, 'correo_electronico', 'Correo Electrónico', 'Correo electrónico del solicitante', 2, 'SELECT correo FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 5, 7);

-- Sección 2: Datos del Responsable
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(21, 'identificacion', 'Identificación', 'Número de identificación del responsable', 1, NULL, 1, 1, NULL, 1, 6, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) VALUES
(22, 'dependencia_programa', 'Dependencia / Programa', 'Dependencia o programa asociado', 2, 'SELECT dependencia FROM responsables WHERE id = :id', 1, 1, NULL, 0, 6, 6, 21);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) VALUES
(23, 'nombres_apellidos', 'Nombres y Apellidos', 'Nombre completo del responsable', 3, 'SELECT nombre_completo FROM responsables WHERE id = :id', 1, 1, NULL, 0, 6, 6, 21);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) VALUES
(24, 'correo_responsable', 'Correo Electrónico', 'Correo del responsable', 4, 'SELECT correo FROM responsables WHERE id = :id', 1, 1, NULL, 0, 6, 7, 21);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID, FIELD_ID) VALUES
(25, 'telefono_responsable', 'Teléfono/Ext', 'Teléfono del responsable', 5, 'SELECT telefono FROM responsables WHERE id = :id', 1, 1, NULL, 0, 6, 2, 21);

-- Sección 3: Datos de la Reserva
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(26, 'nombre_evento', 'Nombre del Evento', 'Nombre del evento a registrar', 1, NULL, 1, 1, NULL, 1, 7, 6);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(27, 'descripcion_evento', 'Breve descripción del evento', 'Descripción del evento', 2, NULL, 1, 1, NULL, 1, 7, 13);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(28, 'modalidad_evento', 'Modalidad del Evento', 'Seleccionar modalidad del evento', 3, NULL, 1, 1, NULL, 1, 7, 10);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(29, 'fecha_inicio', 'Fecha de Inicio del Evento', 'Fecha de inicio del evento', 4, NULL, 1, 1, NULL, 1, 7, 5);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(30, 'fecha_fin', 'Fecha de Finalización del Evento', 'Fecha de finalización del evento', 5, NULL, 1, 1, NULL, 1, 7, 5);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(31, 'hora_inicio', 'Hora de Inicio', 'Hora de inicio del evento', 6, NULL, 1, 1, NULL, 1, 7, 4);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(32, 'hora_fin', 'Hora de Finalización', 'Hora de finalización del evento', 7, NULL, 1, 1, NULL, 1, 7, 4);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(33, 'campos_inscripcion', 'Campos del Formulario de Inscripción', 'Seleccionar campos para el formulario de inscripción', 8, NULL, 1, 1, NULL, 1, 7, 8);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(34, 'cantidad_tickets', 'Cantidad de Tickets', 'Cantidad de entradas disponibles', 9, NULL, 1, 1, NULL, 1, 7, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(35, 'correos_administradores', 'Correos Administradores', 'Correos con acceso a la base de inscritos', 10, NULL, 1, 1, NULL, 1, 7, 13);

-- Sección 4: Finalizar Solicitud
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(36, 'observaciones', 'Observaciones', 'Comentarios adicionales', 1, NULL, 1, 0, NULL, 1, 8, 13);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(37, 'captcha', 'Captcha', 'Verificación de seguridad', 2, NULL, 1, 1, NULL, 1, 8, 8);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID) VALUES
(38, 'acuerdo_condiciones', 'Acuerdo de Condiciones de Uso', 'Aceptar términos y condiciones', 3, NULL, 1, 1, NULL, 1, 8, 8);
```

### Crear opciones para campos con listas desplegables

```sql
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(4, 'VIRTUAL', 'Virtual', 1, 1, 28);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(5, 'PRESENCIAL', 'Presencial', 2, 1, 28);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(6, 'HIBRIDO', 'Híbrido', 3, 1, 28);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(7, 'NOMBRE', 'Nombre', 1, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(8, 'APELLIDO', 'Apellido', 2, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(9, 'CORREO', 'Correo Electrónico', 3, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(10, 'CELULAR', 'Celular', 4, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(11, 'PAIS', 'País de Residencia', 5, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(12, 'PROGRAMA', 'Programa de Estudios', 6, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(13, 'DOCUMENTO', 'Número de Documento de Identidad', 7, 1, 33);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID) VALUES
(14, 'OTRO', 'Otro', 8, 1, 33);
```

