### Crear Formulario (FORM)
```SQL
INSERT INTO ICESI_APPS.NFM_FORM (ID, NAME, DESCRIPTION, URL, ACTIVE, PRIVATED) VALUES (1, 'Reserva Espacios Físicos', 'Solicitud de reserva de un espacio', 'http://localhost:8080/forms/reserva_espacios_fisicos', 1, 1);
```

### Crear Bloques (NFM_SECTION)
```SQL
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES (1, 'Datos del Solicitante', 'Obtener datos de contacto', 1, 1, 1);
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES (2, 'Datos del responsable', 'Obtener datos del responsable de la reserva', 2, 1, 1);
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES (3, 'Datos de la reserva', 'Dar detalles de la actividad y el espacio', 3, 1, 1);
INSERT INTO ICESI_APPS.NFM_SECTION (ID, NAME, DESCRIPTION, JHI_ORDER, ACTIVE, FORM_ID) VALUES (4, 'Finalizar Solicitud', 'Aceptar acuerdo y confirmar reserva', 4, 1, 1);
```

### Poblar Tipo Campo (NFM_TYPE)
```SQL
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (1, 'Rango Numérico', 'Rango numérico (Ej. [0, 5])');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (2, 'Numérico Abierto', 'Campo numérico abierto');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (3, 'Rango de Fechas', 'Rango de fechas con valores predeterminados');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (4, 'Rango de Horas', 'Rango de horas con valores predeterminados');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (5, 'Calendario', 'Calendario con fecha abierta');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (6, 'Campo Abierto', 'Campo de texto abierto');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (7, 'Correo Electrónico', 'Campo de correo electrónico');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (8, 'Checkbox', 'Campo de selección múltiple');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (9, 'Botones de Radio', 'Opciones exclusivas con botones de radio');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (10, 'Lista Desplegable', 'Lista desplegable (Select)');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (11, 'Contraseña', 'Campo para contraseñas');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (12, 'Número de Teléfono', 'Campo para número de teléfono');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (13, 'Área de Texto', 'Campo de texto multilinea');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (14, 'Carga de Archivos', 'Campo para cargar archivos');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (15, 'Interruptor', 'Interruptor (Toggle Switch)');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (16, 'Selector de Color', 'Selector de color');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (17, 'Deslizador', 'Control deslizante para valores continuos');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (18, 'Calificación', 'Campo para calificación con estrellas');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (19, 'Campo Oculto', 'Campo oculto');
INSERT INTO ICESI_APPS.NFM_TYPE (ID, JHI_TYPE, DESCRIPTION) VALUES (20, 'URL', 'Campo para ingresar direcciones web');
```

### Crear campos (NFM_FIELD)
```SQL
-- Sección 1: Datos del solicitante
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (1, 'telefono_ext', 'Teléfono/Ext', 'Número de teléfono o extensión', 1, 'SELECT telefono_ext FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 1, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (2, 'correo_electronico', 'Correo Electrónico', 'Correo electrónico del solicitante', 2, 'SELECT correo FROM solicitantes WHERE id = :id', 1, 1, NULL, 0, 1, 7);

-- Sección 2: Datos del responsable
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (3, 'identificacion', 'Identificación', 'Número de identificación del responsable', 1, 'SELECT identificacion FROM responsables WHERE id = :id', 1, 1, NULL, 0, 2, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (4, 'dependencia_programa', 'Dependencia / Programa', 'Dependencia o programa asociado', 2, 'SELECT dependencia FROM responsables WHERE id = :id', 1, 1, NULL, 0, 2, 6);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (5, 'nombres_apellidos', 'Nombres y Apellidos', 'Nombre completo del responsable', 3, 'SELECT nombre_completo FROM responsables WHERE id = :id', 1, 1, NULL, 0, 2, 6);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (6, 'correo_responsable', 'Correo Electrónico', 'Correo del responsable', 4, 'SELECT correo FROM responsables WHERE id = :id', 1, 1, NULL, 0, 2, 7);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (7, 'telefono_responsable', 'Teléfono/Ext', 'Teléfono del responsable', 5, 'SELECT telefono FROM responsables WHERE id = :id', 1, 1, NULL, 0, 2, 2);

-- Sección 3: Datos de la reserva
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (8, 'nombre_actividad', 'Nombre de la Actividad', 'Nombre de la actividad a realizar', 1, NULL, 1, 1, NULL, 1, 3, 6);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (9, 'descripcion_actividad', 'Descripción de la Actividad', 'Descripción detallada de la actividad', 2, NULL, 1, 1, NULL, 1, 3, 6);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (10, 'tipo_espacio', 'Tipo de Espacio Físico', 'Seleccionar el tipo de espacio requerido', 3, NULL, 1, 1, NULL, 1, 3, 10);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (11, 'espacio_fisico', 'Espacio Físico', 'Espacio físico requerido', 4, 'SELECT espacio FROM espacios WHERE id = :id', 1, 1, NULL, 1, 3, 10);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (12, 'fecha_reserva', 'Fecha Reserva', 'Fecha para la reserva', 5, NULL, 1, 1, NULL, 1, 3, 5);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (13, 'hora_inicio', 'Hora Inicio Reserva', 'Hora de inicio de la reserva', 6, NULL, 1, 1, NULL, 1, 3, 4);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (14, 'hora_fin', 'Hora Finalización Reserva', 'Hora de finalización de la reserva', 7, NULL, 1, 1, NULL, 1, 3, 4);

-- Sección 4: Finalizar Solicitud
INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (15, 'numero_personas', 'Número de Personas', 'Cantidad de personas a participar', 1, NULL, 1, 1, NULL, 1, 4, 2);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (16, 'observaciones', 'Observaciones', 'Comentarios adicionales', 2, NULL, 1, 0, NULL, 1, 4, 13);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (17, 'captcha', 'Captcha', 'Verificación de captcha', 3, NULL, 1, 1, NULL, 1, 4, 8);

INSERT INTO ICESI_APPS.NFM_FIELD (ID, CODE, NAME, DESCRIPTION, JHI_ORDER, SQL, ACTIVE, OBLIGATORY, JHI_VALIDATION, EDITABLE, SECTION_ID, TYPE_ID)
VALUES (18, 'acuerdo_condiciones', 'Acuerdo de Condiciones de Uso', 'Aceptación de términos y condiciones', 4, NULL, 1, 1, NULL, 1, 4, 8);
```

### Crear opciones de campo (NFM_OPTION)
```SQL
INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID)
VALUES (1, 'LABORATORIO', 'Laboratorio', 1, 1, 10);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID)
VALUES (2, 'SALAS_PRACTICA', 'Salas de práctica', 2, 1, 10);

INSERT INTO ICESI_APPS.NFM_OPTION (ID, CODE, JHI_VALUE, JHI_ORDER, ACTIVE, FIELD_ID)
VALUES (3, 'ESTUDIO_GRABACION', 'Estudio de Grabación', 3, 1, 10);
```

