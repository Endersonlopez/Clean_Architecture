USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Grados_Listar]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id_Grado,
        Id_Sede,
        Nombre_Grado,
        Id_Estado,
        Id_Creador,
        Fecha_Creacion,
        Id_Modificador,
        Fecha_Modificacion
    FROM [SQM_CATALOGOS].[Tbl_Grados]
    WHERE Id_Estado = 1
    ORDER BY Nombre_Grado ASC;    
END;
GO