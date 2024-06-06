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
	Estado varchar(25) not null,
	carnetEstudiante VARCHAR(50)
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
    Año int not null ,
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
select * from Ubicaciones
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
----------------------------------------------------------------------------







