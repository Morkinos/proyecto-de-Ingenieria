-----------Procedimientos Alamcenados------------
alter PROCEDURE ObtenerEstudiantesPorProvincia
    @Anio INT
AS
BEGIN
    SELECT E.Recidencia, COUNT(E.idEstudiante) AS Cantidad
    FROM Estudiantes E
    INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
    --INNER JOIN Carreras C ON C.idCarrera = RE.IdCarrera 
    --INNER JOIN Sedes S ON S.IdSede = C.idSede
    --INNER JOIN Ubicaciones U ON U.IdUbicacion = S.IdUbicacion
    WHERE RE.Año = @Anio  and RE.Estado ='Activo'
    GROUP BY E.Recidencia;
END;
EXECUTE ObtenerEstudiantesPorProvincia @Anio=2021;
----------------------------------------------------------------------------------------
alter PROCEDURE CarreraDeseadaSI
AS
BEGIN
    SELECT RE.CarreraDeseada, COUNT(RE.CarreraDeseada) AS Cantidad
    FROM RegistroEstudiantes RE
    --INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
    --INNER JOIN Carreras C ON C.idCarrera = RE.IdCarrera 
    --INNER JOIN Sedes S ON S.IdSede = C.idSede
    --INNER JOIN Ubicaciones U ON U.IdUbicacion = S.IdUbicacion
    WHERE RE.CarreraDeseada = 'si'  and RE.Estado ='Activo'
    GROUP BY RE.CarreraDeseada;
END;
----------------------------------------------------------------------------------------
alter PROCEDURE CarreraDeseadaNO
AS
BEGIN
    SELECT RE.CarreraDeseada, COUNT(RE.CarreraDeseada) AS Cantidad
    FROM RegistroEstudiantes RE
    --INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
    --INNER JOIN Carreras C ON C.idCarrera = RE.IdCarrera 
    --INNER JOIN Sedes S ON S.IdSede = C.idSede
    --INNER JOIN Ubicaciones U ON U.IdUbicacion = S.IdUbicacion
    WHERE RE.CarreraDeseada = 'NO'  and RE.Estado ='Activo'
    GROUP BY RE.CarreraDeseada;
END;
----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE ObtenerMatriculasxSedeyAnio
    @Anio INT
AS
BEGIN
    SELECT S.NombreSede, COUNT(RE.IdEstudiante) AS Cantidad
    FROM RegistroEstudiantes RE
	INNER JOIN Carreras C ON RE.IdCarrera = C.idCarrera
	INNER JOIN Sedes S ON C.idSede = S.IdSede
	WHERE RE.Año = @Anio and RE.Estado ='Activo'
    GROUP BY S.NombreSede;
END;

--EXECUTE ObtenerMatriculasxSedeyAño @Anio = 2020;
----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE ObtenerCantEstudiantesTransladoxanio
    @Anio INT
AS
BEGIN
    SELECT COUNT(T.idEstudiante) AS Cantidad
	 FROM Traslados T
	 INNER JOIN Estudiantes E ON T.idEstudiante = E.idEstudiante
	 INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
	 WHERE RE.Año = @Anio  and RE.Estado ='Activo'
	 
END;
----------------------------------------------------------------------------------------SIGUE AQUI------------------------------
CREATE OR ALTER PROCEDURE ObtenerCantEstudiantesTransladoxsede
AS
BEGIN
    SELECT  S.NombreSede , COUNT(T.idTraslado) AS Cantidad
	 FROM Traslados T
	 INNER JOIN Estudiantes E ON T.idEstudiante = E.idEstudiante
	 INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
	 INNER JOIN Carreras C ON RE.IdCarrera = C.idCarrera
	 INNER JOIN Sedes S ON C.idSede = S.IdSede
	 WHERE RE.Estado ='Activo'
	 GROUP BY S.NombreSede
END;
EXEC ObtenerCantEstudiantesTransladoxsede;


SELECT *  FROM Sedes
SELECT *  FROM Traslados

update Sedes
set NombreSede = 'Sede_del_Pacifico'
where IdSede = 4;
----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE ObtenerMatriculasxAnios
AS
BEGIN
    SELECT  RE.Año, COUNT(RE.idEstudiante) AS Cantidad
	 FROM RegistroEstudiantes RE
	 WHERE  RE.Estado ='Activo'
	 GROUP BY RE.Año
END;

------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE ObtenerMatriculasxAnios
AS
BEGIN
    SELECT  RE.Año, COUNT(RE.idEstudiante) AS Cantidad
	 FROM RegistroEstudiantes RE
	 WHERE  RE.Estado ='Activo'
	 GROUP BY RE.Año
END;

CREATE OR ALTER PROCEDURE AniosDisponibles
AS
BEGIN
    SELECT  RE.Año  
	 FROM RegistroEstudiantes RE
	 WHERE  RE.Estado ='Activo'
	 GROUP BY RE.Año 

END;

