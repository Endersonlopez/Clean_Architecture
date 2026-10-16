USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Estados_Asistencia_Insertar]
    @Nombre_Estado VARCHAR(100),
    @Descripcion VARCHAR(250),
    @Fecha_Creacion DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [SQM_CATALOGOS].[Tbl_Estados_Asistencia] (
        Nombre_Estado,
        Descripcion,
        Fecha_Creacion
    )
    VALUES (
        @Nombre_Estado,
        @Descripcion,
        ISNULL(@Fecha_Creacion, GETDATE())
    );
END;
GO