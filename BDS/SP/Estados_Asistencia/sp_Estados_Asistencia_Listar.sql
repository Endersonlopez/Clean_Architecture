USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Estados_Asistencia_Listar]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id_Estado_Asistencia,
        Nombre_Estado,
        Descripcion,
        Fecha_Creacion,
        Fecha_Modificacion,
        1 AS Id_Estado,
        1 AS Id_Creador,
        CAST(NULL AS INT) AS Id_Modificador
    FROM [SQM_CATALOGOS].[Tbl_Estados_Asistencia]
    ORDER BY Id_Estado_Asistencia ASC;
END;
GO