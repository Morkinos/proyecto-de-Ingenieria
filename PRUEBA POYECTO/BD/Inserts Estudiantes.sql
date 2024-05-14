use UCRES;
--Inserts--
----------------------------------INSERTS DE ESTUDIANTES----------------------------------------------------

---UBICACION---
INSERT INTO Ubicaciones (Provincia) VALUES ('San Jos�');
INSERT INTO Ubicaciones (Provincia) VALUES ('Alajuela');
INSERT INTO Ubicaciones (Provincia) VALUES ('Cartago');
INSERT INTO Ubicaciones (Provincia) VALUES ('Heredia');
INSERT INTO Ubicaciones (Provincia) VALUES ('Guanacaste');
INSERT INTO Ubicaciones (Provincia) VALUES ('Puntarenas');
INSERT INTO Ubicaciones (Provincia) VALUES ('Lim�n');

select * from Ubicaciones;
select * from carreras
---SEDES---
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (2, 'Sede de Occidente');  --1
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (5, 'Sede de Guanacaste');--2
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (7, 'Sede del Caribe');--3
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (6, 'Sede del Pac�fico');--4

INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (6, 'Sede del Sur');--5
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (1, 'Rodrigo Facio');--6
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (2, 'Sede Interuniversitaria de Alajuela');--7
INSERT INTO Sedes (IdUbicacion, NombreSede) VALUES (3, 'Sede Regional del Atl�ntico');--8

---CARRERA---


-----Sede caribe ---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES 
('Administraci�n Aduanera y Comercio Exterior',3, '180'),
('Contadur�a P�blica',3, '180'),
('Direcci�n de Empresas',3, '180'),
('Educaci�n Preescolar con concentraci�n en Ingl�s',3, '180'),
('Ense�anza del Ingl�s',3, '180'),
('Inform�tica Empresarial',3, '180'),
('Marina Civil',3, '180'),
('Ingenier�a Qu�mica',3, '180'),
('Trabajo Social',3, '180'),
('Turismo Ecol�gico',3, '180');
commit
--sede interuniversitaria alajuela

INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES 
('Licenciatura en Ingenier�a Industrial', 7, '180'),
('Licenciatura en Ingenier�a Mec�nica con �nfasis en Sistemas de Protecci�n contra Incendios (PCI)', 7, '180'),
('Bachillerato y Licenciatura en Dise�o Gr�fico', 7, '180');
--Sede Sur--

SELECT * FROM Sedes
SELECT * FROM Carreras ORDER BY idSede Asc;




INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Biolog�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('F�sica', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Geolog�a', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Matem�tica', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Administraci�n P�blica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Derecho', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Econom�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Estad�stica', 5, '168');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Sociolog�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Agron�mica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Forestal', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Biotecnolog�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Computaci�n', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educaci�n Primaria', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Educaci�n Preescolar', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza del Espa�ol', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza de los Estudios Sociales', 5, '240');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Artes Visuales', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Colectiva', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filosof�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('M�sica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Gesti�n de la Calidad en Microbiolog�a y Qu�mica Cl�nica:', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Hematolog�a', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Medicina Legal', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('T�cnico en Agroindustria Alimentaria', 5, '120');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('T�cnico en Electrotecnia', 5, '180');

--Rodrigo Facio---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Artes Dram�ticas', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dise�o Cer�mico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dise�o Escult�rico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dise�o Gr�fico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dise�o Pict�rico', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Dise�o de la Estampa', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia del Arte', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Canto', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Composici�n', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Direcci�n', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Instrumentos de Cuerda', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Instrumentos de Viento o Percusi�n', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Piano', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Guitarra', 6, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filolog�a Espa�ola', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingl�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Franc�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filolog�a Cl�sica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingl�s con Formaci�n en Gesti�n Empresarial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Filosof�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Civil', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Industrial', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Computaci�n con varios �nfasis', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Topogr�fica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Qu�mica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Electromec�nica Industrial', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Modelaci�n Matem�tica', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a El�ctrica', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Mec�nica con �nfasis en Protecci�n contra Incendios', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Arquitectura', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a Agr�cola y de Biosistemas', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Inform�tica Empresarial', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a en Desarrollo Sostenible', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Inform�tica y Tecnolog�a Multimedia', 4, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Preescolar', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Matem�tica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bibliotecolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de las Ciencias Naturales', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza del Ingl�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de la M�sica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de los Estudios Sociales y la Educaci�n C�vica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Inicial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Preescolar con concentraci�n en Ingl�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Primaria', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Especial', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ciencias del Movimiento Humano', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza del Castellano y Literatura', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza del Franc�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Filosof�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Matem�tica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Orientaci�n', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Educaci�n Primaria con concentraci�n en Ingl�s', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Agronom�a', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Zootecnia', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Turismo Ecol�gico', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Econom�a Agr�cola y Agronegocios', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ingenier�a de Alimentos', 5, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Medicina y Cirug�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Farmacia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Microbiolog�a y Qu�mica Cl�nica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Asistente de Laboratorio', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Terapia F�sica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Imagenolog�a Diagn�stica y Terap�utica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Audiolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Nutrici�n', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Enfermer�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Odontolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Salud Ambiental', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Promoci�n de la Salud', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ortopr�tesis y Ortopedia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Psicolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Trabajo Social', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Archiv�stica', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Antropolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Sociolog�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Audiovisual y Multimedia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Periodismo', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ciencias Pol�ticas', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Comunicaci�n Social', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Geograf�a', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Derecho', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Historia', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Publicidad', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Relaciones P�blicas', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Gesti�n Cultural', 1, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Econom�a', 1, '180');

---Alajuela---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a Industrial',2, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a Mec�nica con �nfasis en Sistemas de Protecci�n contra Incendios (EPI)',2, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dise�o Gr�fico',2, '180');

---sede del atlantico---
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Ense�anza del Ingl�s', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Agronom�a', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Dise�o Gr�fico', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Contadur�a P�blica', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Inform�tica Empresarial', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ense�anza de la M�sica', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Ciencias del Movimiento Humano', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Licenciatura en Ingenier�a en Desarrollo Sostenible', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Direcci�n de Empresas', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Turismo Ecol�gico', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato y Licenciatura en Econom�a Agr�cola', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Bachillerato en Primaria con concentraci�n en Ingl�s', 8, '180');
INSERT INTO Carreras (Nombre, idSede, Creditos) VALUES ('Ense�anza de la Matem�tica', 8, '180');


----------------------INSERTS ESTUDIANTES--------------------
--San Jos�--
select * from Estudiantes where Recidencia = 'San Jos�';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --1
VALUES ('Sof�a Garc�a', '198765430', 'sofia.garcia@gmail.com', 'San Jos�', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --2
VALUES ('Valentina Mart�nez', '176543289', 'valentina.martinez@outlook.com', 'San Jos�', '6234-5678', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --3
VALUES ('Santiago L�pez', '145678903', 'santiago.lopez@hotmail.com', 'San Jos�', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --4
VALUES ('Mateo Rodr�guez', '198745632', 'mateo.rodriguez@yahoo.com', 'San Jos�', '7456-7890', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --5
VALUES ('Alejandro Castro', '134567892', 'alejandro.castro@fastmail.com', 'San Jos�', '8576-8901', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --6
VALUES ('Mar�a Fern�ndez', '189076543', 'maria.fernandez@pm.me', 'San Jos�', '7689-0123', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --7
VALUES ('Isabella P�rez', '198765431', 'isabella.perez@aol.com', 'San Jos�', '6780-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --8
VALUES ('Sebasti�n G�mez', '123456798', 'sebastian.gomez@protonmail.com', 'San Jos�', '7891-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --9
VALUES ('Camila Hern�ndez', '198765490', 'camila.hernandez@icloud.com', 'San Jos�', '6789-0123', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)--10
VALUES ('Juan Torres', '198745631', 'juan.torres@yandex.com', 'San Jos�', '7567-8901', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --11
VALUES ('Ana Ram�rez', '123456897', 'ana.ramirez@mail.com', 'San Jos�', '8654-3210', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --12
VALUES ('Diego D�az', '189076512', 'diego.diaz@zoho.com', 'San Jos�', '7987-6543', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --13
VALUES ('Emma Castillo', '134567890', 'emma.castillo@live.com', 'San Jos�', '6789-0123', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --14
VALUES ('Nicol�s Vargas', '198765402', 'nicolas.vargas@inbox.com', 'San Jos�', '7865-4321', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --15
VALUES ('Valeria Ruiz', '145678920', 'valeria.ruiz@tutanota.com', 'San Jos�', '8798-7654', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --16
VALUES ('Nicol�s Otamendi', '108590745', 'nicolas.Otamendi@inbox.com', 'San Jos�', '7965-4331', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado) --17
VALUES ('Valeria Zapata', '145678920', 'valeria.Zapata@tutanota.com', 'San Jos�', '8758-7664', 'Activo');

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '445678924', 'juan.rodriguez@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Mar�a P�rez', '445678925', 'maria.perez@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Carlos S�nchez', '445678926', 'carlos.sanchez@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Valeria Chaves', '445678927', 'valeria.chaves@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Pedro G�mez', '445678928', 'pedro.gomez@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Laura Morales', '445678929', 'laura.morales@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Andrea Vargas', '445678930', 'andrea.vargas@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Alejandro Cruz', '445678931', 'alejandro.cruz@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Valentina M�ndez', '445678932', 'valentina.mendez@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Jos� Chac�n', '445678933', 'jose.chacon@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Gabriela Solano', '445678934', 'gabriela.solano@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('David Ram�rez', '445678935', 'david.ramirez@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Sof�a Araya', '445678936', 'sofia.araya@gmail.com', 'San Jos�', '7123-4567', 'Activo'),
('Carlos Vargas', '445678937', 'carlos.vargas@gmail.com', 'San Jos�', '8345-6789', 'Activo'),
('Ana Fern�ndez', '445678938', 'ana.fernandez@gmail.com', 'San Jos�', '7123-4567', 'Inactivo');
--Alajuela--
select * from Estudiantes where Recidencia = 'Alajuela';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Marco Rojas', '240493018', 'marco.rojas@gmail.com', 'Alajuela', '8641-6794', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Fern�ndez', '245678910', 'ana.fernandez@gmail.com', 'Alajuela', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Juan Ram�rez', '245678911', 'juan.ramirez@yahoo.com', 'Alajuela', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Mar�a Gonz�lez', '245678912', 'maria.gonzalez@hotmail.com', 'Alajuela', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Torres', '245678913', 'luisa.torres@outlook.com', 'Alajuela', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pedro Mart�nez', '245678914', 'pedro.martinez@gmail.com', 'Alajuela', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Rodr�guez', '245678915', 'carlos.rodriguez@yahoo.com', 'Alajuela', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura D�az', '245678916', 'laura.diaz@hotmail.com', 'Alajuela', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo S�nchez', '245678917', 'pablo.sanchez@outlook.com', 'Alajuela', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Alejandra L�pez', '245678918', 'alejandra.lopez@gmail.com', 'Alajuela', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego P�rez', '245678919', 'diego.perez@yahoo.com', 'Alajuela', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Sof�a Herrera', '245678920', 'sofia.herrera@hotmail.com', 'Alajuela', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Manuel Castro', '245678921', 'manuel.castro@outlook.com', 'Alajuela', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valentina G�mez', '245678922', 'valentina.gomez@gmail.com', 'Alajuela', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Javier Chac�n', '245678923', 'javier.chacon@yahoo.com', 'Alajuela', '7123-4567', 'Activo');

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '245678924', 'juan.rodriguez@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Mar�a P�rez', '245678925', 'maria.perez@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Carlos S�nchez', '245678926', 'carlos.sanchez@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Valeria Chaves', '245678927', 'valeria.chaves@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Pedro G�mez', '245678928', 'pedro.gomez@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Laura Morales', '245678929', 'laura.morales@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Andrea Vargas', '245678930', 'andrea.vargas@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Alejandro Cruz', '245678931', 'alejandro.cruz@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Valentina M�ndez', '245678932', 'valentina.mendez@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Jos� Chac�n', '245678933', 'jose.chacon@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Gabriela Solano', '245678934', 'gabriela.solano@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('David Ram�rez', '245678935', 'david.ramirez@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Sof�a Araya', '245678936', 'sofia.araya@gmail.com', 'Alajuela', '7123-4567', 'Activo'),
('Carlos Vargas', '245678937', 'carlos.vargas@gmail.com', 'Alajuela', '8345-6789', 'Activo'),
('Ana Fern�ndez', '245678938', 'ana.fernandez@gmail.com', 'Alajuela', '7123-4567', 'Inactivo');

--Cartago--
select * from Estudiantes where Recidencia = 'Cartago';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gerardo Barrantes', '310493084', 'gerardo.barrantes@gmail.com', 'Cartago', '6413-7460', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andrea M�ndez', '345678910', 'andrea.mendez@gmail.com', 'Cartago', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Soto', '345678911', 'jose.soto@yahoo.com', 'Cartago', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gabriela Castillo', '345678912', 'gabriela.castillo@hotmail.com', 'Cartago', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andr�s Solano', '345678913', 'andres.solano@outlook.com', 'Cartago', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valeria Chaves', '345678914', 'valeria.chaves@gmail.com', 'Cartago', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('David Araya', '345678915', 'david.araya@yahoo.com', 'Cartago', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Natalia Vargas', '345678916', 'natalia.vargas@hotmail.com', 'Cartago', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos M�ndez', '345678917', 'carlos.mendez@outlook.com', 'Cartago', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Chac�n', '345678918', 'ana.chacon@gmail.com', 'Cartago', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Arroyo', '345678919', 'luisa.arroyo@yahoo.com', 'Cartago', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo Sol�s', '345678920', 'pablo.solis@hotmail.com', 'Cartago', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura Alvarado', '345678921', 'laura.alvarado@outlook.com', 'Cartago', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego Murillo', '345678922', 'diego.murillo@gmail.com', 'Cartago', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Sof�a Segura', '345678923', 'sofia.segura@yahoo.com', 'Cartago', '7123-4567', 'Activo');

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '345678924', 'juan.rodriguez@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Mar�a P�rez', '345678925', 'maria.perez@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Carlos S�nchez', '345678926', 'carlos.sanchez@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Valeria Chaves', '345678927', 'valeria.chaves@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Pedro G�mez', '345678928', 'pedro.gomez@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Laura Morales', '345678929', 'laura.morales@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Andrea Vargas', '345678930', 'andrea.vargas@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Alejandro Cruz', '345678931', 'alejandro.cruz@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Valentina M�ndez', '345678932', 'valentina.mendez@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Jos� Chac�n', '345678933', 'jose.chacon@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Gabriela Solano', '345678934', 'gabriela.solano@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('David Ram�rez', '345678935', 'david.ramirez@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Sof�a Araya', '345678936', 'sofia.araya@gmail.com', 'Cartago', '7123-4567', 'Activo'),
('Carlos Vargas', '345678937', 'carlos.vargas@gmail.com', 'Cartago', '8345-6789', 'Activo'),
('Ana Fern�ndez', '345678938', 'ana.fernandez@gmail.com', 'Cartago', '7123-4567', 'Inactivo');
--Heredia--
select * from Estudiantes where Recidencia = 'Heredia';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Karla Zamora', '441579410', 'karla.zamora@gmail.com', 'Heredia', '8741-1452', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andr�s Fern�ndez', '445678910', 'andres.fernandez@gmail.com', 'Heredia', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura Ram�rez', '445678911', 'laura.ramirez@yahoo.com', 'Heredia', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego Gonz�lez', '445678912', 'diego.gonzalez@hotmail.com', 'Heredia', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Mar�a Solano', '445678913', 'maria.solano@outlook.com', 'Heredia', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Chaves', '445678914', 'jose.chaves@gmail.com', 'Heredia', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Araya', '445678915', 'ana.araya@yahoo.com', 'Heredia', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Vargas', '445678916', 'carlos.vargas@hotmail.com', 'Heredia', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valentina M�ndez', '445678917', 'valentina.mendez@outlook.com', 'Heredia', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo Chac�n', '445678918', 'pablo.chacon@gmail.com', 'Heredia', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Alvarado', '445678919', 'luisa.alvarado@yahoo.com', 'Heredia', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gabriela Murillo', '445678920', 'gabriela.murillo@hotmail.com', 'Heredia', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('David Segura', '445678921', 'david.segura@outlook.com', 'Heredia', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Natalia Fern�ndez', '445678922', 'natalia.fernandez@gmail.com', 'Heredia', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Javier Ram�rez', '445678923', 'javier.ramirez@yahoo.com', 'Heredia', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '645678924', 'juan.rodriguez@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Mar�a P�rez', '645678925', 'maria.perez@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Carlos S�nchez', '645678926', 'carlos.sanchez@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Valeria Chaves', '645678927', 'valeria.chaves@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Pedro G�mez', '645678928', 'pedro.gomez@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Laura Morales', '645678929', 'laura.morales@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Andrea Vargas', '645678930', 'andrea.vargas@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Alejandro Cruz', '645678931', 'alejandro.cruz@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Valentina M�ndez', '645678932', 'valentina.mendez@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Jos� Chac�n', '645678933', 'jose.chacon@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Gabriela Solano', '645678934', 'gabriela.solano@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('David Ram�rez', '645678935', 'david.ramirez@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Sof�a Araya', '645678936', 'sofia.araya@gmail.com', 'Heredia', '7123-4567', 'Activo'),
('Carlos Vargas', '645678937', 'carlos.vargas@gmail.com', 'Heredia', '8345-6789', 'Activo'),
('Ana Fern�ndez', '645678938', 'ana.fernandez@gmail.com', 'Heredia', '7123-4567', 'Inactivo');

--Guanacaste--
select * from Estudiantes where Recidencia = 'Guanacaste';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Kevin Carballo', '562170317', 'kevin.carballo@gmail.com', 'Guanacaste', '7486-6478', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andrea Castillo', '545678910', 'andrea.castillo@gmail.com', 'Guanacaste', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Solano', '545678911', 'jose.solano@yahoo.com', 'Guanacaste', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gabriela Araya', '545678912', 'gabriela.araya@hotmail.com', 'Guanacaste', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('David Vargas', '545678913', 'david.vargas@outlook.com', 'Guanacaste', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura Chac�n', '545678914', 'laura.chacon@gmail.com', 'Guanacaste', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego M�ndez', '545678915', 'diego.mendez@yahoo.com', 'Guanacaste', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Mar�a Alvarado', '545678916', 'maria.alvarado@hotmail.com', 'Guanacaste', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Ram�rez', '545678917', 'jose.ramirez@outlook.com', 'Guanacaste', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Fern�ndez', '545678918', 'ana.fernandez@gmail.com', 'Guanacaste', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Solano', '545678919', 'carlos.solano@yahoo.com', 'Guanacaste', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valentina Chaves', '545678920', 'valentina.chaves@hotmail.com', 'Guanacaste', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo Araya', '545678921', 'pablo.araya@outlook.com', 'Guanacaste', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Vargas', '545678922', 'luisa.vargas@gmail.com', 'Guanacaste', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andr�s Castillo', '545678923', 'andres.castillo@yahoo.com', 'Guanacaste', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valeria Solis', '504850698', 'Valeria.Solis@yahoo.com', 'Guanacaste', '7823-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Veronica Ramirez', '208440856', 'Veronica.Ramirez@yahoo.com', 'Guanacaste', '8954-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '745678924', 'juan.rodriguez@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Mar�a P�rez', '745678925', 'maria.perez@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Carlos S�nchez', '745678926', 'carlos.sanchez@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Valeria Chaves', '745678927', 'valeria.chaves@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Pedro G�mez', '745678928', 'pedro.gomez@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Laura Morales', '745678929', 'laura.morales@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Andrea Vargas', '745678930', 'andrea.vargas@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Alejandro Cruz', '745678931', 'alejandro.cruz@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Valentina M�ndez', '745678932', 'valentina.mendez@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Jos� Chac�n', '745678933', 'jose.chacon@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Gabriela Solano', '745678934', 'gabriela.solano@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('David Ram�rez', '745678935', 'david.ramirez@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Sof�a Araya', '745678936', 'sofia.araya@gmail.com', 'Guanacaste', '7123-4567', 'Activo'),
('Carlos Vargas', '745678937', 'carlos.vargas@gmail.com', 'Guanacaste', '8345-6789', 'Activo'),
('Ana Fern�ndez', '745678938', 'ana.fernandez@gmail.com', 'Guanacaste', '7123-4567', 'Inactivo');
--Puntarenas--
select * from Estudiantes where Recidencia = 'Puntarenas';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Alexander Romero', '614780136', 'alex.romero@gmail.com', 'Puntarenas', '8763-4126', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura M�ndez', '645678910', 'laura.mendez@gmail.com', 'Puntarenas', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego Chac�n', '645678911', 'diego.chacon@yahoo.com', 'Puntarenas', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Mar�a Araya', '645678912', 'maria.araya@hotmail.com', 'Puntarenas', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Vargas', '645678913', 'jose.vargas@outlook.com', 'Puntarenas', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana Solano', '645678914', 'ana.solano@gmail.com', 'Puntarenas', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Ram�rez', '645678915', 'carlos.ramirez@yahoo.com', 'Puntarenas', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valentina Chaves', '645678916', 'valentina.chaves@hotmail.com', 'Puntarenas', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo M�ndez', '645678917', 'pablo.mendez@outlook.com', 'Puntarenas', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Castillo', '645678918', 'luisa.castillo@gmail.com', 'Puntarenas', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andr�s Araya', '645678919', 'andres.araya@yahoo.com', 'Puntarenas', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gabriela Chac�n', '645678920', 'gabriela.chacon@hotmail.com', 'Puntarenas', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('David Solano', '645678921', 'david.solano@outlook.com', 'Puntarenas', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Natalia Ram�rez', '645678922', 'natalia.ramirez@gmail.com', 'Puntarenas', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Araya', '645678923', 'jose.araya@yahoo.com', 'Puntarenas', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '845678924', 'juan.rodriguez@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Mar�a P�rez', '845678925', 'maria.perez@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Carlos S�nchez', '845678926', 'carlos.sanchez@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Valeria Chaves', '845678927', 'valeria.chaves@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Pedro G�mez', '845678928', 'pedro.gomez@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Laura Morales', '845678929', 'laura.morales@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Andrea Vargas', '845678930', 'andrea.vargas@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Alejandro Cruz', '845678931', 'alejandro.cruz@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Valentina M�ndez', '845678932', 'valentina.mendez@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Jos� Chac�n', '845678933', 'jose.chacon@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Gabriela Solano', '845678934', 'gabriela.solano@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('David Ram�rez', '845678935', 'david.ramirez@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Sof�a Araya', '845678936', 'sofia.araya@gmail.com', 'Puntarenas', '7123-4567', 'Activo'),
('Carlos Vargas', '845678937', 'carlos.vargas@gmail.com', 'Puntarenas', '8345-6789', 'Activo'),
('Ana Fern�ndez', '845678938', 'ana.fernandez@gmail.com', 'Puntarenas', '7123-4567', 'Inactivo');

--Lim�n--
select * from Estudiantes where Recidencia = 'Lim�n';

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Armando Soto', '744103974', 'armando.soto@gmail.com', 'Lim�n', '6412-9514', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Laura Chaves', '745678910', 'laura.chaves@gmail.com', 'Lim�n', '6789-1234', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Diego Ram�rez', '745678911', 'diego.ramirez@yahoo.com', 'Lim�n', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Mar�a Araya', '745678912', 'maria.araya@hotmail.com', 'Lim�n', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Solano', '745678913', 'jose.solano@outlook.com', 'Lim�n', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Ana M�ndez', '745678914', 'ana.mendez@gmail.com', 'Lim�n', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Carlos Chac�n', '745678915', 'carlos.chacon@yahoo.com', 'Lim�n', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Valentina Ram�rez', '745678916', 'valentina.ramirez@hotmail.com', 'Lim�n', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Pablo Vargas', '745678917', 'pablo.vargas@outlook.com', 'Lim�n', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Luisa Solano', '745678918', 'luisa.solano@gmail.com', 'Lim�n', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Andr�s Chaves', '745678919', 'andres.chaves@yahoo.com', 'Lim�n', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Gabriela M�ndez', '745678920', 'gabriela.mendez@hotmail.com', 'Lim�n', '7123-4567', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('David Ram�rez', '745678921', 'david.ramirez@outlook.com', 'Lim�n', '8345-6789', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Natalia Chac�n', '745678922', 'natalia.chacon@gmail.com', 'Lim�n', '6789-2345', 'Activo');
INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Vargas', '745678923', 'jose.vargas@yahoo.com', 'Lim�n', '7123-4567', 'Activo');

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES ('Jos� Vargas', '745678923', 'jose.vargas@yahoo.com', 'Lim�n', '7123-4567', 'Activo');

select * from Carreras where idSede = 3

INSERT INTO Estudiantes (Nombre, Cedula, Correo, Recidencia, Telefono, Estado)
VALUES 
('Juan Rodr�guez', '545678924', 'juan.rodriguez@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Mar�a P�rez', '545678925', 'maria.perez@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Carlos S�nchez', '545678926', 'carlos.sanchez@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Valeria Chaves', '545678927', 'valeria.chaves@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Pedro G�mez', '545678928', 'pedro.gomez@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Laura Morales', '545678929', 'laura.morales@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Andrea Vargas', '545678930', 'andrea.vargas@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Alejandro Cruz', '545678931', 'alejandro.cruz@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Valentina M�ndez', '545678932', 'valentina.mendez@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Jos� Chac�n', '545678933', 'jose.chacon@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Gabriela Solano', '545678934', 'gabriela.solano@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('David Ram�rez', '545678935', 'david.ramirez@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Sof�a Araya', '545678936', 'sofia.araya@gmail.com', 'Lim�n', '7123-4567', 'Activo'),
('Carlos Vargas', '545678937', 'carlos.vargas@gmail.com', 'Lim�n', '8345-6789', 'Activo'),
('Ana Fern�ndez', '545678938', 'ana.fernandez@gmail.com', 'Lim�n', '7123-4567', 'Inactivo');

Select * from Estudiantes;

-------------------------insert de registro estudiantes-------------------------------------------------------------

--A�O 2020--
select * from RegistroEstudiantes where A�o = '2020';

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (1, 1, '2020', 'SI', 'Activo');--1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (9, 6, '2020', 'SI', 'Activo');--2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (12, 11, '2020', 'SI', 'Activo');--3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (17, 21, '2020', 'SI', 'Activo');--4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (20, 23, '2020', 'SI', 'Activo');--5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (24, 27, '2020', 'SI', 'Activo');--6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (33, 31, '2020', 'SI', 'Activo');--7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (39, 33, '2020', 'SI', 'Activo');--8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (50, 39, '2020', 'NO', 'Activo');--9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (58, 42, '2020', 'NO', 'Activo');--10
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (70, 45, '2020', 'NO', 'Activo');--11
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (74, 84, '2020', 'NO', 'Activo');--12
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (79, 101, '2020', 'NO', 'Activo');--13
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (93, 110, '2020', 'NO', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (101, 125, '2020', 'NO', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (110, 125, '2020', 'SI', 'Activo');--16
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (111, 129, '2020', 'NO', 'Activo');--17
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (112, 111, '2020', 'SI', 'Activo');--18
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (125, 112, '2020', 'NO', 'Activo');--19
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (126, 113, '2020', 'SI', 'Activo');--20
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (127, 114, '2020', 'SI', 'Activo');--21
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (128, 115, '2020', 'NO', 'Activo');--22
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (129, 116, '2020', 'SI', 'Activo');--23
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (153, 117, '2020', 'NO', 'Activo');--24
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (154, 118, '2020', 'SI', 'Activo');--25
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (155, 119, '2020', 'NO', 'Activo');--26
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (170, 120, '2020', 'NO', 'Activo');--27
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (171, 121, '2020', 'NO', 'Activo');--28
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (172, 122, '2020', 'NO', 'Activo');--29
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (185, 123, '2020', 'NO', 'Activo');--30
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (186, 133, '2020', 'NO', 'Activo');--30
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (200, 86, '2020', 'NO', 'Activo');--26
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (201, 45, '2020', 'NO', 'Activo');--27
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (202, 79, '2020', 'NO', 'Activo');--28
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (203, 35, '2020', 'NO', 'Activo');--29





--A�O 2021--
select * from RegistroEstudiantes where A�o = '2021';

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (2, 3, '2021', 'NO', 'Activo');--1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (3, 7, '2021', 'SI', 'Activo');--2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (4, 20, '2021', 'SI', 'Activo');--3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (8, 29, '2021', 'NO', 'Activo');--4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (22, 36, '2021', 'SI', 'Activo');--5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (23, 48, '2021', 'SI', 'Activo');--6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (43, 54, '2021', 'SI', 'Activo');--7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (45, 67, '2021', 'NO', 'Activo');--8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (52, 69, '2021', 'SI', 'Activo');--9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (56, 71, '2021', 'NO', 'Activo');--10
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (85, 170, '2021', 'SI', 'Activo');--11
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (89, 171, '2021', 'SI', 'Activo');--12
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (96, 132, '2021', 'SI', 'Activo');--13
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (102, 100, '2021', 'SI', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (105, 112, '2021', 'NO', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (106, 100, '2021', 'SI', 'Activo');--16
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (107, 111, '2021', 'NO', 'Activo');--17
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (113, 124, '2021', 'SI', 'Activo');--31
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (114, 125, '2021', 'NO', 'Activo');--32
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (115, 126, '2021', 'SI', 'Activo');--33
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (130, 127, '2021', 'NO', 'Activo');--34
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (131, 128, '2021', 'SI', 'Activo');--35
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (132, 10, '2021', 'NO', 'Activo');--36
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (150, 11, '2021', 'SI', 'Activo');--37
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (151, 32, '2021', 'SI', 'Activo');--38
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (152, 33, '2021', 'NO', 'Activo');--39
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (156, 34, '2021', 'SI', 'Activo');--40
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (157, 15, '2021', 'NO', 'Activo');--41
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (173, 13, '2021', 'SI', 'Activo');--42
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (174, 1, '2021', 'NO', 'Activo');--43
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (175, 8, '2021', 'SI', 'Activo');--44
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (187, 119, '2021', 'SI', 'Activo');--45
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (188, 109, '2021', 'SI', 'Activo');--45
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (189, 11, '2021', 'SI', 'Activo');--45
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (204, 114, '2021', 'NO', 'Activo');--26
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (205, 69, '2021', 'NO', 'Activo');--27
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (206, 114, '2021', 'NO', 'Activo');--28
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (207, 180, '2021', 'NO', 'Activo');--29

--A�O 2022--
select * from RegistroEstudiantes where A�o = '2022';

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (6, 2, '2022', 'SI', 'Activo');--1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (13, 6, '2022', 'SI', 'Activo');--2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (28, 22, '2022', 'NO', 'Activo');--3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (35, 30, '2022', 'SI', 'Activo');--4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (42, 39, '2022', 'NO', 'Activo');--5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (46, 45, '2022', 'SI', 'Activo');--6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (64, 54, '2022', 'NO', 'Activo');--7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (71, 62, '2022', 'SI', 'Activo');--8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (75, 171, '2022', 'SI', 'Activo');--9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (78, 88, '2022', 'NO', 'Activo');--10
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (94, 92, '2022', 'NO', 'Activo');--11
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (97, 96, '2022', 'SI', 'Activo');--12
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (99, 99, '2022', 'NO', 'Activo');--13
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (100, 109, '2022', 'NO', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (104, 111, '2022', 'SI', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (116, 14, '2022', 'NO', 'Activo');--46
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (117, 121, '2022', 'SI', 'Activo');--47
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (118, 169, '2022', 'SI', 'Activo');--48
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (119, 60, '2022', 'NO', 'Activo');--49
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (133, 78, '2022', 'SI', 'Activo');--50
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (134, 40, '2022', 'SI', 'Activo');--51
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (135, 46, '2022', 'NO', 'Activo');--52
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (136, 7, '2022', 'SI', 'Activo');--53
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (148, 114, '2022', 'NO', 'Activo');--54
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (149, 4, '2022', 'SI', 'Activo');--55
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (158, 50, '2022', 'SI', 'Activo');--56
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (188, 114, '2022', 'NO', 'Activo');--57
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (189, 22, '2022', 'SI', 'Activo');--58
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (190, 13, '2022', 'NO', 'Activo');--59
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (208, 91, '2022', 'NO', 'Activo');--57
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (209, 114, '2022', 'SI', 'Activo');--58
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (210, 180, '2022', 'NO', 'Activo');--59

--A�O 2023--
select * from RegistroEstudiantes where A�o = '2023';

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (7, 59, '2023', 'SI', 'Activo');--1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (10, 59, '2023', 'SI', 'Activo');--2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (21, 46, '2023', 'NO', 'Activo');--3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (30, 180, '2023', 'SI', 'Activo');--4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (36, 63, '2023', 'NO', 'Activo');--5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (41, 171, '2023', 'SI', 'Activo');--6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (55, 73, '2023', 'NO', 'Activo');--7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (62, 79, '2023', 'SI', 'Activo');--8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (68, 88, '2023', 'SI', 'Activo');--9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (80, 94, '2023', 'NO', 'Activo');--10
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (88, 102, '2023', 'NO', 'Activo');--11
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (90, 180, '2023', 'SI', 'Activo');--12
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (92, 120, '2023', 'NO', 'Activo');--13
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (98, 123, '2023', 'NO', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (103, 129, '2023', 'SI', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (120, 114, '2023', 'SI', 'Activo');--60
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (121, 61, '2023', 'NO', 'Activo');--61
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (137, 116, '2023', 'SI', 'Activo');--62
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (138, 127, '2023', 'NO', 'Activo');--63
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (139, 108, '2023', 'SI', 'Activo');--64
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (146, 119, '2023', 'SI', 'Activo');--65
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (147, 110, '2023', 'NO', 'Activo');--66
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (159, 177, '2023', 'SI', 'Activo');--67
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (160, 12, '2023', 'NO', 'Activo');--68
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (161, 103, '2023', 'SI', 'Activo');--69
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (166, 16, '2023', 'SI', 'Activo');--70
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (167, 65, '2023', 'NO', 'Activo');--71
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (168, 66, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (169, 65, '2023', 'NO', 'Activo');--71
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (179, 66, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (180, 61, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (181, 39, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (191, 66, '2023', 'NO', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (192, 68, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (193, 39, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (194, 56, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (211, 86, '2023', 'NO', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (212, 81, '2023', 'SI', 'Activo');--72
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (213, 88, '2023', 'SI', 'Activo');--72
--A�O 2024--
select * from RegistroEstudiantes where A�o = '2024';

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (18, 42, '2024', 'NO', 'Activo');--1
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (19, 76, '2024', 'SI', 'Activo');--2
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (27, 18, '2024', 'SI', 'Activo');--3
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (31, 91, '2024', 'SI', 'Activo');--4
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (38, 63, '2024', 'SI', 'Activo');--5
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (40, 28, '2024', 'NO', 'Activo');--6
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (47, 84, '2024', 'SI', 'Activo');--7
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (49, 3, '2024', 'SI', 'Activo');--8
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (67, 115, '2024', 'SI', 'Activo');--9
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (72, 50, '2024', 'SI', 'Activo');--10
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (73, 99, '2024', 'NO', 'Activo');--11
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (81, 12, '2024', 'SI', 'Activo');--12
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (84, 77, '2024', 'NO', 'Activo');--13
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (91, 37, '2024', 'SI', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (95, 105, '2024', 'NO', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (108, 36, '2024', 'NO', 'Activo');--14
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (109, 104, '2024', 'NO', 'Activo');--15
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (122, 17, '2024', 'NO', 'Activo');--73
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (123, 28, '2024', 'SI', 'Activo');--74
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (124, 119, '2024', 'SI', 'Activo');--75
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (140, 100, '2024', 'NO', 'Activo');--76
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (141, 1, '2024', 'SI', 'Activo');--77
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (142, 12, '2024', 'SI', 'Activo');--78
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (143, 73, '2024', 'NO', 'Activo');--79
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (144, 75, '2024', 'SI', 'Activo');--80
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (145, 75, '2024', 'SI', 'Activo');--81
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (162, 96, '2024', 'NO', 'Activo');--82
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (163, 97, '2024', 'SI', 'Activo');--83
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (164, 78, '2024', 'SI', 'Activo');--84
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (165, 79, '2024', 'NO', 'Activo');--85
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (182, 77, '2024', 'SI', 'Activo');--84
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (183, 168, '2024', 'NO', 'Activo');--85
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (184, 73, '2024', 'NO', 'Activo');--85

INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (195, 168, '2024', 'SI', 'Activo');--84
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (195, 168, '2024', 'NO', 'Activo');--85
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (197, 77, '2024', 'SI', 'Activo');--84
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (198, 179, '2024', 'NO', 'Activo');--85
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (199, 179, '2024', 'NO', 'Activo');--85
INSERT INTO RegistroEstudiantes (IdEstudiante, IdCarrera, A�o, CarreraDeseada, Estado)
VALUES (214, 179, '2024', 'NO', 'Activo');--85



select * from RegistroEstudiantes where IdCarrera > 147 and IdCarrera < 168
select * from Carreras where idSede = 5
SELECT * FROM Sedes


-----------------------INSERTS DE TRASLADOS----------------------------------
use UCRES;


--SANJOSE
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (1, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 1

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (2, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 2

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (3, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 3

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (4, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 4

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (5, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 5

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (6, 'Rodrigo Facio', 'Sede de Guanacaste', 'Estudio'); -- 6

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (7, 'Rodrigo Facio', 'Sede de Guanacaste', 'Estudio'); -- 7

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (8, 'Rodrigo Facio', 'Sede de Guanacaste', 'Estudio'); -- 8

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (9, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 9

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (10, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 10

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (11, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 11

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (12, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 12

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (13, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 13

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (14, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 14

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (15, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 15


--Alajuela
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (16, 'Sede Interuniversitaria de Alajuela', 'Sede Regional del Atl�ntico', 'Estudio'); -- 1

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (17, 'Sede de Occidente', 'Sede Regional del Atl�ntico', 'Estudio'); -- 2

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (18, 'Sede Interuniversitaria de Alajuela', 'Sede Regional del Atl�ntico', 'Estudio'); -- 3

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (19, 'Sede de Occidente', 'Sede Regional del Atl�ntico', 'Estudio'); -- 4

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (20, 'Sede Interuniversitaria de Alajuela', 'Sede Regional del Atl�ntico', 'Estudio'); -- 5

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (21, 'Sede de Occidente', 'Sede del Sur', 'Estudio'); -- 6

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (22, 'Sede Interuniversitaria de Alajuela', 'Sede del Sur', 'Estudio'); -- 7

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (23, 'Sede de Occidente', 'Sede del Pac�fico', 'Estudio'); -- 8

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (24, 'Sede Interuniversitaria de Alajuela', 'Sede del Pac�fico', 'Estudio'); -- 9

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (25, 'Sede de Occidente', 'Rodrigo Facio', 'Estudio'); -- 10

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (26, 'Sede Interuniversitaria de Alajuela', 'Sede del Sur', 'Estudio'); -- 11

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (27, 'Sede de Occidente', 'Sede del Pacifico', 'Estudio'); -- 12

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (28, 'Sede Interuniversitaria de Alajuela', 'Sede del Pacifico', 'Estudio'); -- 13

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (29, 'Sede de Occidente', 'Sede del Pacifico', 'Estudio'); -- 14

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (30, 'Sede de Occidente', 'Sede Regional del Atl�ntico', 'Estudio'); -- 15

--Cartago

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (31, 'Sede Regional del Atl�ntico', 'Sede del Caribe', 'Estudio'); -- 1

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (32, 'Sede Regional del Atl�ntico', 'Sede del Caribe', 'Estudio'); -- 2

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (33, 'Sede Regional del Atl�ntico', 'Sede del Sur', 'Estudio'); -- 3

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (34, 'Sede Regional del Atl�ntico', 'Sede del Sur', 'Estudio'); -- 4

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (35, 'Sede Regional del Atl�ntico', 'Sede de Occidente', 'Estudio'); -- 5

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (36, 'Sede Regional del Atl�ntico', 'Rodrigo Facio', 'Estudio'); -- 6

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (37, 'Sede Regional del Atl�ntico', 'Sede de Occidente', 'Estudio'); -- 7

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (38, 'Sede Regional del Atl�ntico', 'Sede del Sur', 'Estudio'); -- 8

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (39, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 9

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (40, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 10

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (41, 'Rodrigo Facio', 'Sede del Pac�fico', 'Estudio'); -- 11

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (42, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 12

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (43, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 13

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (44, 'Sede Regional del Atl�ntico', 'Sede del Sur', 'Estudio'); -- 14

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (45, 'Sede Regional del Atl�ntico', 'Sede de Guanacaste', 'Estudio'); -- 15

--Heredia

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (46, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 1

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (47, 'Rodrigo Facio', 'Sede de Guanacaste', 'Estudio'); -- 2

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (48, 'Rodrigo Facio', 'Sede del Caribe', 'Estudio'); -- 3

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (49, 'Rodrigo Facio', 'Sede del Caribe', 'Estudio'); -- 4

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (50, 'Rodrigo Facio', 'Sede Regional del Atl�ntico', 'Estudio'); -- 5

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (51, 'Rodrigo Facio', 'Sede del Caribe', 'Estudio'); -- 6

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (52, 'Rodrigo Facio', 'Sede Regional del Atl�ntico','Estudio'); -- 7

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (53, 'Rodrigo Facio', 'Sede del Caribe', 'Estudio'); -- 8

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (54, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 9

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (55, 'Rodrigo Facio', 'Sede del Sur', 'Estudio'); -- 10

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (56, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 11

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (57, 'Sede del Caribe', 'Sede de Occidente', 'Estudio'); -- 12

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (58, 'Sede del Caribe', 'Sede de Occidente', 'Estudio'); -- 13

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (59, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 14

INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (60, 'Rodrigo Facio', 'Sede de Occidente', 'Estudio'); -- 15

--Guanacaste
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (62, 'Sede de Guanacaste', 'Rodrigo Facio', 'Estudio'); -- 15
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (64, 'Sede de Guanacaste', 'Rodrigo Facio', 'Estudio'); -- 15
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (66, 'Sede de Guanacaste', 'Rodrigo Facio', 'Estudio'); -- 15
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (68, 'Sede de Guanacaste', 'Sede del Pacifico', 'Estudio'); -- 15
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (70, 'Sede de Guanacaste', 'Sede del Pacifico', 'Estudio'); -- 15
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede de Guanacaste', 'Sede de Occidente', 'Estudio'); -- 15

--Puntarenas
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (76, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (72, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (90, 'Sede del Pacifico', 'Sede de Occidente', 'Estudio'); -- 1
--Lim�n
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (91, 'Sede del Caribe', 'Sede de Occidente', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (95, 'Sede del Caribe', 'Rodrigo Facio', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (98, 'Sede del Caribe', 'Sede del Pacifico', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (99, 'Sede del Caribe', 'Rodrigo Facio', 'Estudio'); -- 1
INSERT INTO Traslados (idEstudiante, lugarRecidencia, LugarDeTraslado, MotivoTraslado)
VALUES (105, 'Sede del Caribe', 'Rodrigo Facio', 'Estudio'); -- 1














