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

-- Tabla de Personalizaci�n de Gr�ficos
--drop Table RegistroEstudiante;
CREATE TABLE RegistroEstudiante (
    IdEstudiante INT PRIMARY KEY identity,
    IdCarrera INT,
    A�o VARCHAR(100),
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
--Sede del Pac�fico
--Sede del Sur
--Sede Rodrigo Facio

-------------------------------INSERTS---------------------------------------

---UBICACION---
INSERT INTO Ubicacion (Provincia) VALUES ('San Jos�');
INSERT INTO Ubicacion (Provincia) VALUES ('Alajuela');
INSERT INTO Ubicacion (Provincia) VALUES ('Cartago');
INSERT INTO Ubicacion (Provincia) VALUES ('Heredia');
INSERT INTO Ubicacion (Provincia) VALUES ('Guanacaste');
INSERT INTO Ubicacion (Provincia) VALUES ('Puntarenas');
INSERT INTO Ubicacion (Provincia) VALUES ('Lim�n');

select * from Ubicacion;

---SEDES---
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (2, 'Sede de Occidente');  --1
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (5, 'Sede de Guanacaste');--2
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (7, 'Sede del Caribe');--3
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (6, 'Sede del Pac�fico');--4

INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (6, 'Sede del Sur');--5
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (1, 'Rodrigo Facio');--6
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (2, 'Sede Interuniversitaria de Alajuela');--7
INSERT INTO Sede (IdUbicacion, NombreSede) VALUES (3, 'Sede Regional del Atl�ntico');--8

---CARRERA---
--Sede Sur--
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Biolog�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('F�sica', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Geolog�a', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Matem�tica', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Administraci�n P�blica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Econom�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Estad�stica', 5, '168');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Sociolog�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Agron�mica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Forestal', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Biotecnolog�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Computaci�n', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educaci�n Primaria', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educaci�n Preescolar', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza del Espa�ol', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza de los Estudios Sociales', 5, '240');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Artes Visuales', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Colectiva', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filosof�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('M�sica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gesti�n de la Calidad en Microbiolog�a y Qu�mica Cl�nica:', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Hematolog�a', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Medicina Legal', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('T�cnico en Agroindustria Alimentaria', 5, '120');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('T�cnico en Electrotecnia', 5, '180');

--Rodrigo Facio---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Artes Dram�ticas', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dise�o Cer�mico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dise�o Escult�rico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dise�o Gr�fico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dise�o Pict�rico', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Dise�o de la Estampa', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia del Arte', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Canto', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Composici�n', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Direcci�n', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Instrumentos de Cuerda', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Instrumentos de Viento o Percusi�n', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Piano', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Guitarra', 6, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filolog�a Espa�ola', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingl�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Franc�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filolog�a Cl�sica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingl�s con Formaci�n en Gesti�n Empresarial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Filosof�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Civil', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Mec�nica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Industrial', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Computaci�n con varios �nfasis', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Topogr�fica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Qu�mica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Electromec�nica Industrial', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Modelaci�n Matem�tica', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a El�ctrica', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Mec�nica con �nfasis en Protecci�n contra Incendios', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Arquitectura', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a Agr�cola y de Biosistemas', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inform�tica Empresarial', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Desarrollo Sostenible', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Inform�tica y Tecnolog�a Multimedia', 4, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Preescolar', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Matem�tica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bibliotecolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de las Ciencias Naturales', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza del Ingl�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de la M�sica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de los Estudios Sociales y la Educaci�n C�vica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Inicial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Preescolar con concentraci�n en Ingl�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Primaria', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Especial', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias del Movimiento Humano', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza del Castellano y Literatura', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza del Franc�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Filosof�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Matem�tica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Orientaci�n', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Educaci�n Primaria con concentraci�n en Ingl�s', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Agronom�a', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Zootecnia', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Turismo Ecol�gico', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Econom�a Agr�cola y Agronegocios', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ingenier�a de Alimentos', 5, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Medicina y Cirug�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Farmacia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Microbiolog�a y Qu�mica Cl�nica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Asistente de Laboratorio', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Terapia F�sica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Imagenolog�a Diagn�stica y Terap�utica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Audiolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Nutrici�n', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Enfermer�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Odontolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Salud Ambiental', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Promoci�n de la Salud', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ortopr�tesis y Ortopedia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Psicolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Trabajo Social', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Archiv�stica', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Antropolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Sociolog�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Audiovisual y Multimedia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Periodismo', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ciencias Pol�ticas', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Social', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Geograf�a', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Derecho', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Historia', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Publicidad', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Relaciones P�blicas', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Gesti�n Cultural', 1, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Econom�a', 1, '180');

---Alajuela---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a Industrial',2, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a Mec�nica con �nfasis en Sistemas de Protecci�n contra Incendios (EPI)',2, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dise�o Gr�fico',2, '180');

---sede del atlantico---
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza del Ingl�s', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Agronom�a', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dise�o Gr�fico', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Contadur�a P�blica', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Inform�tica Empresarial', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ense�anza de la M�sica', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ciencias del Movimiento Humano', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a en Desarrollo Sostenible', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Direcci�n de Empresas', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Turismo Ecol�gico', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Econom�a Agr�cola', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Bachillerato en Primaria con concentraci�n en Ingl�s', 8, '180');
INSERT INTO Carrera (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Matem�tica', 8, '180');









