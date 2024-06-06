-----------Procedimientos Alamcenados------------
CREATE OR ALTER PROCEDURE ObtenerEstudiantesPorProvincia
    @Anio INT
AS
BEGIN
    SELECT E.Residencia, COALESCE(COUNT(RE.IdEstudiante), 0) AS Cantidad
    FROM Estudiantes E
    INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
    --INNER JOIN Carreras C ON C.idCarrera = RE.IdCarrera 
    --INNER JOIN Sedes S ON S.IdSede = C.idSede
    --INNER JOIN Ubicaciones U ON U.IdUbicacion = S.IdUbicacion
    WHERE RE.Año = @Anio  and RE.Estado ='Activo'
    GROUP BY E.Residencia;
END;
EXECUTE ObtenerEstudiantesPorProvincia @Anio=2024;

----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CarreraDeseadaSI
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
EXECUTE CarreraDeseadaSI ;
----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE CarreraDeseadaNO
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
EXECUTE CarreraDeseadaNO ;
----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  ObternerCantMatriculasxSedexAnio
    @Anio INT
AS
BEGIN
    SELECT S.NombreSede, COALESCE(COUNT(RE.IdEstudiante), 0) AS Cantidad
    FROM Sedes S
    LEFT JOIN Carreras C ON S.IdSede = C.idSede
    LEFT JOIN RegistroEstudiantes RE ON C.idCarrera = RE.IdCarrera AND RE.Año = @Anio AND RE.Estado = 'Activo'
    GROUP BY S.NombreSede;
END;

EXECUTE ObternerCantMatriculasxSedexAnio @Anio = 2024;


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

EXECUTE ObtenerCantEstudiantesTransladoxanio @Anio = 2022;
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

----------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE ObtenerMatriculasxAnios
AS
BEGIN
    SELECT  RE.Año, COALESCE(COUNT(RE.IdEstudiante), 0) AS Cantidad
	 FROM RegistroEstudiantes RE
	 WHERE  RE.Estado ='Activo'
	 GROUP BY RE.Año
END;
Exec ObtenerMatriculasxAnios
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE AniosDisponibles
AS
BEGIN
    SELECT  RE.Año  
	 FROM RegistroEstudiantes RE
	 WHERE  RE.Estado ='Activo'
	 GROUP BY RE.Año 

END;
Exec AniosDisponibles;
------------------------------------------------------------------------------------------NUEVOS------------------------------------------------------------L
CREATE OR ALTER  PROCEDURE CantTotalEstuxProvAll
AS
BEGIN
    SELECT E.Residencia  , COALESCE(COUNT(E.IdEstudiante), 0) AS Cantidad
    FROM Estudiantes E
    INNER JOIN RegistroEstudiantes RE ON E.idEstudiante = RE.IdEstudiante
    --INNER JOIN Carreras C ON C.idCarrera = RE.IdCarrera 
    --INNER JOIN Sedes S ON S.IdSede = C.idSede
    --INNER JOIN Ubicaciones U ON U.IdUbicacion = S.IdUbicacion
    WHERE RE.Estado ='Activo'
    GROUP BY E.Residencia;
END;
EXECUTE CantTotalEstuxProvAll ;
------------------------------------------------------------------------------------------idk
CREATE OR ALTER PROCEDURE CantTrasladxCarrDeseadNo
AS
BEGIN
    SELECT RE.CarreraDeseada ,COUNT(RE.IdEstudiante) AS Cantidad
    FROM RegistroEstudiantes RE
    INNER JOIN Traslados T ON T.idEstudiante = RE.IdEstudiante 
    WHERE RE.CarreraDeseada = 'NO' AND RE.Estado ='Activo'
	GROUP BY RE.CarreraDeseada ;
END;
EXECUTE CantTrasladxCarrDeseadNo ;

-----------------------------------------------idk

CREATE OR ALTER PROCEDURE CantTrasladxCarrDeseadSi
AS
BEGIN
    SELECT RE.CarreraDeseada, COUNT(RE.IdEstudiante) AS Cantidad
    FROM RegistroEstudiantes RE
    INNER JOIN Traslados T ON T.idEstudiante = RE.IdEstudiante 
    WHERE RE.CarreraDeseada = 'SI' AND RE.Estado ='Activo'
	GROUP BY RE.CarreraDeseada ;
END;
EXECUTE CantTrasladxCarrDeseadSi ;

--------------------------------------------------------L
CREATE OR ALTER PROCEDURE CantEstudxCarrDeseadSixSede
AS
BEGIN
   SELECT S.NombreSede, COALESCE(COUNT(CASE WHEN RE.CarreraDeseada = 'SI' THEN 1 END), 0) AS Cantidad
	FROM Sedes S
	LEFT JOIN Carreras C ON S.IdSede = C.idSede
	LEFT JOIN RegistroEstudiantes RE ON C.idCarrera = RE.IdCarrera AND RE.Estado ='Activo'
	GROUP BY S.NombreSede;
END;

EXECUTE CantEstudxCarrDeseadSixSede ;
--------------------------------------------------------L
CREATE OR ALTER PROCEDURE CantEstudxCarrDeseadNoxSede
AS
BEGIN
    SELECT S.NombreSede, COALESCE(COUNT(CASE WHEN RE.CarreraDeseada = 'NO' THEN 1 END), 0) AS Cantidad
	FROM Sedes S
	LEFT JOIN Carreras C ON S.IdSede = C.idSede
	LEFT JOIN RegistroEstudiantes RE ON C.idCarrera = RE.IdCarrera AND RE.Estado = 'Activo'
	GROUP BY S.NombreSede;
END;
EXECUTE CantEstudxCarrDeseadNoxSede ;

--------------------------------------------------------
CREATE OR ALTER PROCEDURE CantDeMatrXTransladxSede
AS
BEGIN
    SELECT S.NombreSede, COALESCE(COUNT(T.IdEstudiante), 0) AS Cantidad
    FROM Sedes S
    LEFT JOIN Carreras C ON S.IdSede = C.idSede
    LEFT JOIN RegistroEstudiantes RE ON C.idCarrera = RE.IdCarrera
    LEFT JOIN Traslados T ON T.idEstudiante = RE.IdEstudiante
    WHERE RE.CarreraDeseada = 'NO' AND RE.Estado ='Activo'
    GROUP BY S.NombreSede;
END;

EXECUTE CantDeMatrXTransladxSede ;

--------------------------------------------------------
CREATE OR ALTER  PROCEDURE MostrarCarrerasPorSedeYCantMatr
    @NombreSede NVARCHAR(100)
AS
BEGIN
    SELECT 
        C.Nombre AS NombreCarrera,
        COUNT(RE.IdEstudiante) AS Cantidad
    FROM Sedes S
    LEFT JOIN Carreras C ON S.IdSede = C.IdSede
    LEFT JOIN RegistroEstudiantes RE ON C.IdCarrera = RE.IdCarrera
    WHERE S.NombreSede = @NombreSede and Re.Estado = 'Activo'
    GROUP BY  C.Nombre;
END;
EXECUTE MostrarCarrerasPorSedeYCantMatr @NombreSede = 'Sede de Occidente';
----------------------------------------------------------------------------------------------------------------
CREATE OR ALTER   PROCEDURE SedesDisponibles
AS
BEGIN
    SELECT NombreSede
	FROM Sedes
END;

EXECUTE SedesDisponibles
select * from Sedes
----------------------------------------------------------------------------------------------------------------
CREATE OR ALTER   PROCEDURE CarrerasXSedes
AS
BEGIN
    SELECT C.idCarrera,C.Nombre, S.NombreSede
	FROM Sedes S
	INNER JOIN Carreras C ON C.idSede = S.IdSede
	order by NombreSede
END;

EXECUTE CarrerasXSedes
select * from Sedes

----------------------------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE sedeXCarrera
    @idCarrera INT
AS
BEGIN
    SELECT S.NombreSede
    FROM Sedes S
    INNER JOIN Carreras C ON S.IdSede = C.IdSede
    WHERE C.IdCarrera = @idCarrera
    GROUP BY S.NombreSede;
END;

execute sedeXCarrera @idCarrera= 52