drop database UCRES;
create database UCRES; 
use UCRES;
------CREACION DE TABLAS--------------------------------------
-- Tabla de Estudiantes
--drop Table Estudiantes;
CREATE TABLE Estudiantes (
    idEstudiante INT PRIMARY KEY identity not null,
    Nombre VARCHAR(100) not null,
	Cedula VARCHAR(50) not null,
	Correo VARCHAR(100) not null,
    Recidencia VARCHAR(100) not null,
	Telefono VARCHAR(100) not null,
	Estado varchar(25) not null
);

-- Tabla de Carrera
--drop Table Carrera;
CREATE TABLE Carreras (
    idCarrera INT PRIMARY KEY identity not null,
    Nombre VARCHAR(100) not null,
	idSede int not null,
	Creditos VARCHAR(100) not null
);

-- Tabla de Traslados
--drop table Traslados;
CREATE TABLE Traslados (
    idTraslado INT PRIMARY KEY identity not null,
    idEstudiante INT not null,
	lugarRecidencia VARCHAR(100) not null,
	LugarDeTraslado VARCHAR(100) not null,
    MotivoTraslado VARCHAR(100) not null,
);

-- Tabla de Personalización de Gráficos
--drop Table RegistroEstudiantes;
CREATE TABLE RegistroEstudiantes (
	IdRegistro int Primary Key IDENTITY not null,
    IdEstudiante INT NOT NULL,
    IdCarrera INT not null,
    Año int not null , /*Hacer esto int*/
	CarreraDeseada VARCHAR(50)not null,
	Estado VARCHAR(50) not null,
);

-- Tabla de Usuarios
--drop Table Usuarios;
CREATE TABLE Usuarios (
    idUsuario INT PRIMARY KEY identity not null,
    Nombre VARCHAR(100)not null,
	Correo VARCHAR(100) not null,
    Password VARCHAR(100) not null,
	Estado VARCHAR(100) not null

);

-- Tabla de Sedes
--drop Table Sedes;
CREATE TABLE Sedes (
    IdSede INT PRIMARY KEY identity not null,
    IdUbicacion int not null,
	NombreSede VARCHAR(100) not null,
);

-- Tabla de Ubicaciones
--drop Table Ubicaciones;
CREATE TABLE Ubicaciones (
    IdUbicacion INT PRIMARY KEY identity not null,
	Provincia VARCHAR(100) not null,
);

-----------------------REFERENCIAS DE TABLAS-----------------------------

ALTER TABLE Traslados
ADD CONSTRAINT FK_Traslados_Estudiantes FOREIGN KEY (idEstudiante)
REFERENCES Estudiantes(idEstudiante);

ALTER TABLE RegistroEstudiantes
ADD CONSTRAINT FK_RegistroEstudiantes_Estudiantes FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(idEstudiante);

ALTER TABLE RegistroEstudiantes
ADD CONSTRAINT FK_RegistroEstudiantes_Carreras FOREIGN KEY (IdCarrera)
REFERENCES Carreras(idCarrera);

ALTER TABLE Carreras
ADD CONSTRAINT FK_Carreras_Sedes FOREIGN KEY (idSede)
REFERENCES Sedes(IdSede);

ALTER TABLE Sedes
ADD CONSTRAINT FK_Sedes_Ubicaciones FOREIGN KEY (IdUbicacion)
REFERENCES Ubicaciones(IdUbicacion);


---------------------Datos para los inserts
--Sede de Occidente
--Sede de Guanacaste
--Sede del Caribe
--Sede del Pacífico
--Sede del Sur
--Sede Rodrigo Facio

-------------------------------INSERTS---------------------------------------

---UBICACION---
INSERT INTO Ubicaciones (Provincia) VALUES ('San José');
INSERT INTO Ubicaciones (Provincia) VALUES ('Alajuela');
INSERT INTO Ubicaciones (Provincia) VALUES ('Cartago');
INSERT INTO Ubicaciones (Provincia) VALUES ('Heredia');
INSERT INTO Ubicaciones (Provincia) VALUES ('Guanacaste');
INSERT INTO Ubicaciones (Provincia) VALUES ('Puntarenas');
INSERT INTO Ubicaciones (Provincia) VALUES ('Limón');

select * from Ubicacion;

---SEDES---
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (2, 'Sede de Occidente');  --1
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (5, 'Sede de Guanacaste');--2
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (7, 'Sede del Caribe');--3
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (6, 'Sede del Pacífico');--4

INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (6, 'Sede del Sur');--5
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (1, 'Rodrigo Facio');--6
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (2, 'Sede Interuniversitaria de Alajuela');--7
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (3, 'Sede Regional del Atlántico');--8

---CARRERA---
--Sede Sur--
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Biología', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Física', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Geología', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Matemática', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Administración Pública', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Derecho', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Economía', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Estadística', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Sociología', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Agronómica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Forestal', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería en Biotecnología', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería en Computación', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educación Primaria', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educación Preescolar', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza del Español', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza de los Estudios Sociales', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Artes Visuales', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicación Colectiva', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filosofía', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Música', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Gestión de la Calidad en Microbiología y Química Clínica:', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Hematología', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Medicina Legal', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Técnico en Agroindustria Alimentaria', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Técnico en Electrotecnia', 5, '180');

--Rodrigo Facio---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Artes Dramáticas', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Diseño Cerámico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Diseño Escultórico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Diseño Gráfico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Diseño Pictórico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Diseño de la Estampa', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia del Arte', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Canto', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Composición', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dirección', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Instrumentos de Cuerda', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Instrumentos de Viento o Percusión', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Piano', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Guitarra', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filología Española', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Inglés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Francés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filología Clásica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Inglés con Formación en Gestión Empresarial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filosofía', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Civil', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Industrial', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Computación con varios énfasis', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Topográfica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Química', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Electromecánica Industrial', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Modelación Matemática', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Eléctrica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Mecánica con énfasis en Protección contra Incendios', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Arquitectura', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería Agrícola y de Biosistemas', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería en Desarrollo Sostenible', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Informática y Tecnología Multimedia', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Preescolar', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Matemática', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bibliotecología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de las Ciencias Naturales', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza del Inglés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Música', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de los Estudios Sociales y la Educación Cívica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Inicial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Preescolar con concentración en Inglés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Primaria', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Especial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ciencias del Movimiento Humano', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza del Castellano y Literatura', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza del Francés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Filosofía', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Matemática', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Orientación', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educación Primaria con concentración en Inglés', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Agronomía', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Zootecnia', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Turismo Ecológico', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Economía Agrícola y Agronegocios', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingeniería de Alimentos', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Medicina y Cirugía', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Farmacia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Microbiología y Química Clínica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Asistente de Laboratorio', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Terapia Física', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Imagenología Diagnóstica y Terapéutica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Audiología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Nutrición', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enfermería', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Odontología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Salud Ambiental', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Promoción de la Salud', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ortoprótesis y Ortopedia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Psicología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Trabajo Social', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Archivística', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Antropología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Sociología', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicación Audiovisual y Multimedia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Periodismo', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ciencias Políticas', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicación Social', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Geografía', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Derecho', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Publicidad', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Relaciones Públicas', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Gestión Cultural', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Economía', 1, '180');

---Alajuela---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería Industrial',2, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería Mecánica con énfasis en Sistemas de Protección contra Incendios (EPI)',2, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Diseño Gráfico',2, '180');

---sede del atlantico---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza del Inglés', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Agronomía', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Diseño Gráfico', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Contaduría Pública', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Informática Empresarial', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Enseñanza de la Música', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ciencias del Movimiento Humano', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería en Desarrollo Sostenible', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dirección de Empresas', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Turismo Ecológico', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Economía Agrícola', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Primaria con concentración en Inglés', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Matemática', 8, '180');

---Insert de Estudiantes --

-- Insertar datos para el estudiante 1
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Kevin Gonzales', '123456789', 'juan@example.com', 'San José', '8888-8888', 'Activo');

-- Insertar datos para el estudiante 2
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('María Rodríguez', '987654321', 'maria@example.com', 'Heredia', '7777-7777', 'Activo');

-- Insertar datos para el estudiante 3
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Gutiérrez', '456789123', 'carlos@example.com', 'Cartago', '6666-6666', 'Activo');

-- Insertar datos para el estudiante 4
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Martínez', '789123456', 'ana@example.com', 'Alajuela', '5555-5555', 'Activo');

-- Insertar datos para el estudiante 5
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pedro Sánchez', '321654987', 'pedro@example.com', 'Guanacaste', '4444-4444', 'Activo');

-- Insertar datos para el estudiante 6
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Johel Soto', '321654987', 'Johel@example.com', 'Puntarenas', '4444-4444', 'Activo');
-- Insertar datos para el estudiante 7
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ignacio Murillo', '12312312', 'Ignacio@example.com', 'Alajuela', '5555-4444', 'Activo');

---RestroEstudiante--
-- Insertar datos para el registro de estudiante 1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (1, 1, '2022', 'SI', 'Activo');

-- Insertar datos para el registro de estudiante 2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (2, 64, '2021', 'SI', 'Activo');

-- Insertar datos para el registro de estudiante 3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (3, 102, '2023', 'SI', 'Activo');

-- Insertar datos para el registro de estudiante 4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (4, 45, '2024', 'NO', 'Activo');

-- Insertar datos para el registro de estudiante 5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (5, 62, '2022', 'SI', 'Activo');

-- Insertar datos para el registro de estudiante 6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (6, 82, '2020', 'NO', 'Activo');

-- Insertar datos para el registro de estudiante 7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (7, 60, '2021', 'SI', 'Inactivo');

-- Insertar datos para el registro de estudiante 8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (7, 60, '2021', 'SI', 'Activo');
-- Insertar datos para el registro de estudiante 9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, Año, CarreraDeseada, Estado)
VALUES (7, 60, '2021', 'NO', 'Activo');

update RegistroEstudiantes
set IdCarrera =59
where IdEstudiante = 1



SELECT * FROM Traslados
select * from Estudiantes
select * from RegistroEstudiantes
select * from Sedes
select * from Carreras WHERE idSede=4
