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
CREATE TABLE Carrera (
    idCarrera INT PRIMARY KEY identity not null,
    Nombre VARCHAR(100) not null,
	idSede int not null,
	Creditos VARCHAR(100) not null
);

-- Tabla de Traslados
--drop table Traslados;
CREATE TABLE Traslados (
    idTraslado INT PRIMARY KEY identity,
    idEstudiante INT,
	lugarRecidensia VARCHAR(100),
	LugarDeTraslado VARCHAR(100),
    MotivoTraslado VARCHAR(100),
);

-- Tabla de Personalización de Gráficos
--drop Table RegistroEstudiante;
CREATE TABLE RegistroEstudiante (
    IdEstudiante INT PRIMARY KEY identity,
    IdCarrera INT,
    Año VARCHAR(100),
	CarreraDeseada VARCHAR(50),
);

-- Tabla de Usuarios
--drop Table Usuarios;
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY identity,
    Nombre VARCHAR(100),
	Correo VARCHAR(100),
    Password VARCHAR(100),

);

-- Tabla de Sedes
--drop Table Sedes;
CREATE TABLE Sede (
    IdSede INT PRIMARY KEY identity,
    IdUbicacion int,
	NombreSede VARCHAR(100),
);

-- Tabla de Ubicaciones
--drop Table Ubicaciones;
CREATE TABLE Ubicacion (
    IdUbicacion INT PRIMARY KEY identity,
	Provincia VARCHAR(100),
);

-----------------------REFERENCIAS DE TABLAS-----------------------------

ALTER TABLE Traslados
ADD FOREIGN KEY (idEstudiante)
REFERENCES Estudiantes(idEstudiante);

ALTER TABLE RegistroEstudiante
ADD FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(idEstudiante);

ALTER TABLE RegistroEstudiante
ADD FOREIGN KEY (IdCarrera)
REFERENCES Carrera(idCarrera);

ALTER TABLE Carrera
ADD FOREIGN KEY (idSede)
REFERENCES Sede(IdSede);

ALTER TABLE Sede
ADD FOREIGN KEY (IdUbicacion)
REFERENCES Ubicacion(IdUbicacion);

---------------------Datos para los inserts
--Sede de Occidente
--Sede de Guanacaste
--Sede del Caribe
--Sede del Pacífico
--Sede del Sur
--Sede Rodrigo Facio

-------------------------------INSERTS---------------------------------------

---UBICACION---


INSERT INTO Ubicacion (Provincia) VALUES ('San José');
INSERT INTO Ubicacion (Provincia) VALUES ('Alajuela');
INSERT INTO Ubicacion (Provincia) VALUES ('Cartago');
INSERT INTO Ubicacion (Provincia) VALUES ('Heredia');
INSERT INTO Ubicacion (Provincia) VALUES ('Guanacaste');
INSERT INTO Ubicacion (Provincia) VALUES ('Puntarenas');
INSERT INTO Ubicacion (Provincia) VALUES ('Limón');

select * from Ubicacion;

---SEDES---
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (2, 'Sede de Occidente');  --1
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (5, 'Sede de Guanacaste');--2
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (7, 'Sede del Caribe');--3
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (6, 'Sede del Pacífico');--4

INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (6, 'Sede del Sur');--5
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (1, 'Rodrigo Facio');--6
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (2, 'Sede Interuniversitaria de Alajuela');--7
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (3, 'Sede Regional del Atlántico');--8

---CARRERA---
--Sede Occidente--

INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Inicial', 1, '134');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Eduación Prescolar con Concentración en Inglés', 1, '132');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Eduación Primaria(Bachillerato Desconcentrado)', 1, '130');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Primaria con concentración Inglés', 1, '130');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho (Bachillerato y Licenciatura desconcentrados) plan 3', 1, '173');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho (Bachillerato y Licenciatura desconcentrados) plan 4', 1, '170');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dirección de Empresas (Bachillerato y Licenciatura desconcentrados)', 1, '174');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Gráfico (Bachillerato y Licenciatura desconcentrados)', 1, '172');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Plástico', 1, '444');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Castellano y Literatura', 1, '139');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de los Estudios Sociales y la Educación Cívica', 1, '143');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Inglés', 1, '165');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de las Música', 1, '171');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de las Matemáticas (Bachillerato y Licenciatura desconcentrados. Salida lateral profesorado)', 1, '167');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gestión de los Recursos Naturales', 1, '129');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 1, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Industrial (Licenciatura desconcentrada)', 1, '176');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Psicología (Bachillerato y Licenciatura desconcentrados)', 1, '182');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Trabajo Social', 1, '177');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gestión Integral del Recurso Hídrico', 1, '139');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de las Ciencias Naturales (Salida lateral Profesorado. Bachillerato desconcentrado)', 1, '141');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Laboratorista Químico', 1, '172');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Turismo Ecológico y Gestión Ecoturística (Bachillerato Desconcentrado)', 1, '177');


--Sede Guanacaste--

INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administración Aduanera y Comercio Exterior (Diplomado y Bachillerato desconcentrados) plan 1', 2, '261');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administración Aduanera y Comercio Exterior (Diplomado y Bachillerato desconcentrados) plan 3', 2, '170');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Agronomía (Bachillerato y Licenciatura desconcentrados)', 2, '179');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Primaria con concentración Inglés (Bachillerato desconcentrado)', 2, '130');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Inicial', 2, '134');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho (Bachillerato y Licenciatura desconcentrados) plan 3', 2, '173');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho (Bachillerato y Licenciatura desconcentrados) plan 4', 2, '170');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dirección de Empresas (Bachillerato y Licenciatura desconcentrados)', 2, '174');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Preescolar (Bachillerato y Licenciatura desconcentrados)', 2, '175');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Primaria (salida lateral Profesorado. Bachillerato y Licenciatura desconcentrados)', 2, '179');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Primaria', 2, '130');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 2, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Eléctrica (desconcentrados I y II año de la carrera de Bachillerato. Profundización en Electrónica, Telecomunicaciones y Sistemas de Energía)', 2, '548');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Civil (Desconcentrado I y II año de carrera)', 2, '173');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería de Alimentos (Licenciatura desconcentrada)', 2, '176');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés (Bachillerato desconcentrado) plan 2', 2, '136');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés (Bachillerato desconcentrado) plan 3', 2, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Psicología (Bachillerato y Licenciatura desconcentrados)', 2, '182');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Salud Ambiental', 2, '172');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Turismo Ecológico y Gestión Ecoturística', 2, '177');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Contaduría Pública (Bachillerato desconcentrado)', 2, '173');

--Sede Caribe--

INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administración Aduanera y Comercio Exterior (Diplomado y Bachillerato desconcentrados) plan 1', 3, '261');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administración Aduanera y Comercio Exterior (Diplomado y Bachillerato desconcentrados) plan 3', 3, '170');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias de la Educación Preescolar con concentración Inglés (Bachillerato desconcentrado)', 3, '132');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Contaduría Pública (Bachillerato y Licenciatura desconcentrados)', 3, '173');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dirección de Empresas (Bachillerato y Licenciatura desconcentrados)', 3, '174');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 3, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Química (Licenciatura desconcentrada)', 3, '174');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés (Bachillerato desconcentrado) plan 2', 3, '136');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés (Bachillerato desconcentrado) plan 3', 3, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Inglés', 3, '135');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Turismo Ecológico y Gestión Ecoturística (Bachillerato desconcentrado)', 3, '177');

--Sede Pacifico--
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dirección de Empresas (Bachillerato y Licenciatura desconcentrados)', 4, '174');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Inglés (salida lateral Profesorado. Bachillerato desconcentrado)', 4, '142');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 4, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática y Tecnología Multimedia', 4, '167');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Eléctrica (desconcentrado I y II año de la carrera de Bachillerato. Profundización en Electrónica, Telecomunicaciones y Sistemas de Energía)', 4, '548');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés con Formación en Gestión Empresarial', 4, '170');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gestión Cultural', 4, '140');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Electromecánica Industrial', 4, '160');

--Sede Sur--
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Biología', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Física', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Geología', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Matemática', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administración Pública', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Economía', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Estadística', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Sociología', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Agronómica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Forestal', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería en Biotecnología', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería en Computación', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educación Primaria', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educación Preescolar', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza del Español', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza de los Estudios Sociales', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Artes Visuales', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicación Colectiva', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filosofía', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Música', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gestión de la Calidad en Microbiología y Química Clínica:', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Hematología', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Medicina Legal', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Técnico en Agroindustria Alimentaria', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Técnico en Electrotecnia', 5, '180');

--Rodrigo Facio---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Artes Dramáticas', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Cerámico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Escultórico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Gráfico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño Pictórico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Diseño de la Estampa', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia del Arte', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Canto', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Composición', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dirección', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Instrumentos de Cuerda', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Instrumentos de Viento o Percusión', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Piano', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Guitarra', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filología Española', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Francés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filología Clásica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inglés con Formación en Gestión Empresarial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filosofía', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Civil', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Mecánica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Industrial', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Computación con varios énfasis', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Topográfica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Química', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Electromecánica Industrial', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Modelación Matemática', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Eléctrica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Mecánica con énfasis en Protección contra Incendios', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Arquitectura', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería Agrícola y de Biosistemas', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática Empresarial', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería en Desarrollo Sostenible', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Informática y Tecnología Multimedia', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Preescolar', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Matemática', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bibliotecología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de las Ciencias Naturales', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Inglés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Música', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de los Estudios Sociales y la Educación Cívica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Inicial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Preescolar con concentración en Inglés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Primaria', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Especial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias del Movimiento Humano', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Castellano y Literatura', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza del Francés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Filosofía', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Matemática', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Orientación', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educación Primaria con concentración en Inglés', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Agronomía', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Zootecnia', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Turismo Ecológico', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Economía Agrícola y Agronegocios', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingeniería de Alimentos', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Medicina y Cirugía', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Farmacia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Microbiología y Química Clínica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Asistente de Laboratorio', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Terapia Física', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Imagenología Diagnóstica y Terapéutica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Audiología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Nutrición', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enfermería', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Odontología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Salud Ambiental', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Promoción de la Salud', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ortoprótesis y Ortopedia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Psicología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Trabajo Social', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Archivística', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Antropología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Sociología', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicación Audiovisual y Multimedia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Periodismo', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias Políticas', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicación Social', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Geografía', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Publicidad', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Relaciones Públicas', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gestión Cultural', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Economía', 1, '180');

---Alajuela---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería Industrial',2, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería Mecánica con énfasis en Sistemas de Protección contra Incendios (EPI)',2, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Diseño Gráfico',2, '180');

---sede del atlantico---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Enseñanza del Inglés', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Agronomía', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Diseño Gráfico', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Contaduría Pública', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Informática Empresarial', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Enseñanza de la Música', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ciencias del Movimiento Humano', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingeniería en Desarrollo Sostenible', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dirección de Empresas', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Turismo Ecológico', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Economía Agrícola', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Primaria con concentración en Inglés', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enseñanza de la Matemática', 8, '180');









