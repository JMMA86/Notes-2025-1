
#### **Usuarios**
Almacena información sobre el personal médico, administrativo y pacientes.

```sql
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(255) NOT NULL,
    identificacion VARCHAR(50) UNIQUE NOT NULL,
    fecha_nacimiento DATE,
    genero ENUM('masculino', 'femenino', 'otro'),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(255),
    rol_id INT NOT NULL,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    FOREIGN KEY (rol_id) REFERENCES Roles(id_rol)
);
```

---

#### **Roles**
Define los roles del sistema (médico, administrador, paciente, etc.).

```sql
CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE
);
```

---

#### **Permisos**
Define los permisos disponibles en el sistema.

```sql
CREATE TABLE Permisos (
    id_permiso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_permiso VARCHAR(50) NOT NULL UNIQUE
);
```

---

#### **Roles_Permisos**
Relaciona roles con permisos (muchos a muchos).

```sql
CREATE TABLE Roles_Permisos (
    id_rol INT NOT NULL,
    id_permiso INT NOT NULL,
    PRIMARY KEY (id_rol, id_permiso),
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    FOREIGN KEY (id_permiso) REFERENCES Permisos(id_permiso)
);
```

---

#### **Especialidades**
Almacena las especialidades médicas disponibles.

```sql
CREATE TABLE Especialidades (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_especialidad VARCHAR(100) NOT NULL UNIQUE
);
```

---

#### **Personal_Especialidades**
Relaciona el personal médico con sus especialidades (muchos a muchos).

```sql
CREATE TABLE Personal_Especialidades (
    id_usuario INT NOT NULL,
    id_especialidad INT NOT NULL,
    PRIMARY KEY (id_usuario, id_especialidad),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_especialidad) REFERENCES Especialidades(id_especialidad)
);
```

---

#### **Horarios**
Almacena la disponibilidad horaria del personal.

```sql
CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    dia_semana ENUM('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo'),
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
```

---

#### **Pacientes**
Extiende la tabla `Usuarios` para almacenar información específica de los pacientes.

```sql
CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL UNIQUE,
    grupo_sanguineo VARCHAR(10),
    alergias TEXT,
    historia_familiar TEXT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
```

#### **Tabla Alergias**
Almacena todas las alergias posibles como valores únicos.

```sql
CREATE TABLE Alergias (
    id_alergia INT AUTO_INCREMENT PRIMARY KEY,
    nombre_alergia VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT
);
```

---

#### **Tabla Pacientes_Alergias**
Relaciona pacientes con sus alergias (relación muchos a muchos).

```sql
CREATE TABLE Pacientes_Alergias (
    id_paciente INT NOT NULL,
    id_alergia INT NOT NULL,
    PRIMARY KEY (id_paciente, id_alergia),
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_alergia) REFERENCES Alergias(id_alergia)
);
```


---

#### **Historial_Medico**
Almacena el historial médico de los pacientes.

```sql
CREATE TABLE Historial_Medico (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    diagnostico TEXT,
    tratamiento TEXT,
    medicamentos TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);
```


#### **Tabla Medicamentos**
Esta tabla almacena información básica sobre los medicamentos.

```sql
CREATE TABLE Medicamentos (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_medicamento VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT, -- Descripción general del medicamento
    principio_activo VARCHAR(255), -- Principio activo del medicamento
    fabricante VARCHAR(255), -- Fabricante o laboratorio
    observaciones TEXT -- Notas adicionales sobre el medicamento
);
```

---

#### **Tabla Efectos_Principales**
Esta tabla almacena los efectos principales de los medicamentos, como "anticoagulante", "antiinflamatorio", etc.

```sql
CREATE TABLE Efectos_Principales (
    id_efecto_principal INT AUTO_INCREMENT PRIMARY KEY,
    nombre_efecto_principal VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT -- Descripción opcional del efecto
);
```

---

#### **Tabla Medicamentos_Efectos_Principales**
Esta tabla intermedia relaciona los medicamentos con sus efectos principales (relación muchos a muchos).

```sql
CREATE TABLE Medicamentos_Efectos_Principales (
    id_medicamento INT NOT NULL,
    id_efecto_principal INT NOT NULL,
    PRIMARY KEY (id_medicamento, id_efecto_principal),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento),
    FOREIGN KEY (id_efecto_principal) REFERENCES Efectos_Principales(id_efecto_principal)
);
```

---

#### **Tabla Efectos_Secundarios**
Esta tabla almacena los efectos secundarios de los medicamentos, como "pérdida de cabello", "irritabilidad", etc.

```sql
CREATE TABLE Efectos_Secundarios (
    id_efecto_secundario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_efecto_secundario VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT -- Descripción opcional del efecto
);
```

---

#### **Tabla Medicamentos_Efectos_Secundarios**
Esta tabla intermedia relaciona los medicamentos con sus efectos secundarios (relación muchos a muchos).

```sql
CREATE TABLE Medicamentos_Efectos_Secundarios (
    id_medicamento INT NOT NULL,
    id_efecto_secundario INT NOT NULL,
    severidad ENUM('leve', 'moderada', 'grave') DEFAULT 'leve', -- Severidad del efecto secundario
    probabilidad ENUM('baja', 'media', 'alta') DEFAULT 'media', -- Probabilidad de ocurrencia
    PRIMARY KEY (id_medicamento, id_efecto_secundario),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento),
    FOREIGN KEY (id_efecto_secundario) REFERENCES Efectos_Secundarios(id_efecto_secundario)
);
```


#### **Tabla Medicamentos**
Esta tabla almacena información básica sobre los medicamentos.

```sql
CREATE TABLE Medicamentos (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_medicamento VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT, -- Descripción general del medicamento
    principio_activo VARCHAR(255), -- Principio activo del medicamento
    fabricante VARCHAR(255), -- Fabricante o laboratorio
    observaciones TEXT -- Notas adicionales sobre el medicamento
);
```

---

#### **Tabla Efectos_Principales**
Esta tabla almacena los efectos principales de los medicamentos, como "anticoagulante", "antiinflamatorio", etc.

```sql
CREATE TABLE Efectos_Principales (
    id_efecto_principal INT AUTO_INCREMENT PRIMARY KEY,
    nombre_efecto_principal VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT -- Descripción opcional del efecto
);
```

---

#### **Tabla Medicamentos_Efectos_Principales**
Esta tabla intermedia relaciona los medicamentos con sus efectos principales (relación muchos a muchos).

```sql
CREATE TABLE Medicamentos_Efectos_Principales (
    id_medicamento INT NOT NULL,
    id_efecto_principal INT NOT NULL,
    PRIMARY KEY (id_medicamento, id_efecto_principal),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento),
    FOREIGN KEY (id_efecto_principal) REFERENCES Efectos_Principales(id_efecto_principal)
);
```

---

#### **Tabla Efectos_Secundarios**
Esta tabla almacena los efectos secundarios de los medicamentos, como "pérdida de cabello", "irritabilidad", etc.

```sql
CREATE TABLE Efectos_Secundarios (
    id_efecto_secundario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_efecto_secundario VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT -- Descripción opcional del efecto
);
```

---

#### **Tabla Medicamentos_Efectos_Secundarios**
Esta tabla intermedia relaciona los medicamentos con sus efectos secundarios (relación muchos a muchos).

```sql
CREATE TABLE Medicamentos_Efectos_Secundarios (
    id_medicamento INT NOT NULL,
    id_efecto_secundario INT NOT NULL,
    severidad ENUM('leve', 'moderada', 'grave') DEFAULT 'leve', -- Severidad del efecto secundario
    probabilidad ENUM('baja', 'media', 'alta') DEFAULT 'media', -- Probabilidad de ocurrencia
    PRIMARY KEY (id_medicamento, id_efecto_secundario),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento),
    FOREIGN KEY (id_efecto_secundario) REFERENCES Efectos_Secundarios(id_efecto_secundario)
);
```

#### **Tabla Medicamentos_Historial**

Esta nueva tabla relaciona los medicamentos con entradas específicas del historial médico. Permite asociar múltiples medicamentos a un diagnóstico o tratamiento específico.

```sql
CREATE TABLE Medicamentos_Historial (
    id_medicamento_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_historial INT NOT NULL,
    id_medicamento INT NOT NULL,
    dosis VARCHAR(50), -- Ejemplo: "500 mg"
    frecuencia VARCHAR(50), -- Ejemplo: "cada 8 horas"
    instrucciones TEXT, -- Instrucciones adicionales del médico
    fecha_inicio DATE NOT NULL, -- Fecha de inicio del tratamiento
    fecha_fin DATE, -- Fecha de finalización (opcional)
    FOREIGN KEY (id_historial) REFERENCES Historial_Medico(id_historial),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento)
);
```

#### **Tabla Enfermedades**
Esta tabla almacena información sobre las enfermedades posibles, incluyendo su clasificación (por ejemplo, crónica, aguda, etc.).

```sql
CREATE TABLE Enfermedades (
    id_enfermedad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_enfermedad VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT, -- Descripción opcional de la enfermedad
    tipo_enfermedad ENUM('crónica', 'aguda', 'autoinmune', 'congénita', 'infecciosa') NOT NULL
);
```


#### **Tabla Historial_Enfermedades**
Esta tabla intermedia relaciona el historial médico con las enfermedades (relación muchos a muchos). Permite asociar múltiples enfermedades a una sola entrada del historial médico.


```sql
CREATE TABLE Historial_Enfermedades (
    id_historial INT NOT NULL,
    id_enfermedad INT NOT NULL,
    observaciones TEXT, -- Observaciones específicas sobre esta enfermedad en este diagnóstico
    PRIMARY KEY (id_historial, id_enfermedad),
    FOREIGN KEY (id_historial) REFERENCES Historial_Medico(id_historial),
    FOREIGN KEY (id_enfermedad) REFERENCES Enfermedades(id_enfermedad)
);
```

---

#### **Tipos_Citas**
Define los tipos de citas médicas disponibles.

```sql
CREATE TABLE Tipos_Citas (
    id_tipo_cita INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tipo_cita VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT,
    duracion_estandar INT NOT NULL,
    protocolo_requerido TEXT, 
    activo BOOLEAN DEFAULT TRUE
);
```

---

#### **Citas**
Almacena las citas médicas programadas.

```sql
CREATE TABLE Citas (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_tipo_cita INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    consultorio VARCHAR(50),
    estado ENUM('pendiente', 'completada', 'cancelada') DEFAULT 'pendiente',
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_tipo_cita) REFERENCES Tipos_Citas(id_tipo_cita)
);
```

---

#### **Tareas_Citas**
Almacena las tareas médicas asociadas a cada cita.

```sql
CREATE TABLE Tareas_Citas (
    id_tarea INT AUTO_INCREMENT PRIMARY KEY,
    id_cita INT NOT NULL,
    descripcion TEXT NOT NULL,
    completada BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_cita) REFERENCES Citas(id_cita)
);
```

---

#### **Laboratorios**
Almacena información sobre los exámenes médicos.

```sql
CREATE TABLE Laboratorios (
    id_examen INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_laboratorista INT NOT NULL,
    tipo_examen VARCHAR(100),
    fecha_solicitud DATE NOT NULL,
    fecha_realizacion DATE,
    resultado TEXT,
    archivo_adjunto VARCHAR(255),
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_laboratorista) REFERENCES Usuarios(id_usuario)
);
```
