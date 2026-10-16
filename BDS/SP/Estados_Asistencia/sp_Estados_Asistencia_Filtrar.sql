USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Estados_Asistencia_Filtrar]
    @Busqueda VARCHAR(100) = NULL
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
    WHERE @Busqueda IS NULL 
       OR @Busqueda = ''
       OR Nombre_Estado LIKE '%' + @Busqueda + '%'
       OR Descripcion LIKE '%' + @Busqueda + '%'
END;
GO