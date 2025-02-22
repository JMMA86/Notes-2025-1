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

CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Permisos (
    id_permiso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_permiso VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Roles_Permisos (
    id_rol INT NOT NULL,
    id_permiso INT NOT NULL,
    PRIMARY KEY (id_rol, id_permiso),
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    FOREIGN KEY (id_permiso) REFERENCES Permisos(id_permiso)
);

CREATE TABLE Especialidades (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_especialidad VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Personal_Especialidades (
    id_usuario INT NOT NULL,
    id_especialidad INT NOT NULL,
    PRIMARY KEY (id_usuario, id_especialidad),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_especialidad) REFERENCES Especialidades(id_especialidad)
);

CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    dia_semana ENUM('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo'),
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL UNIQUE,
    grupo_sanguineo VARCHAR(10),
    alergias TEXT,
    historia_familiar TEXT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Historial_Medico (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    diagnostico TEXT,
    tratamiento TEXT,
    medicamentos TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);

CREATE TABLE Tipos_Citas (
    id_tipo_cita INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tipo_cita VARCHAR(100) NOT NULL UNIQUE,
    duracion_estandar INT NOT NULL -- Duración en minutos
);

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

CREATE INDEX idx_usuario_identificacion ON Usuarios(identificacion);
CREATE INDEX idx_citas_fecha_hora ON Citas(fecha_hora);
CREATE INDEX idx_historial_paciente ON Historial_Medico(id_paciente);
CREATE INDEX idx_laboratorios_paciente ON Laboratorios(id_paciente);
