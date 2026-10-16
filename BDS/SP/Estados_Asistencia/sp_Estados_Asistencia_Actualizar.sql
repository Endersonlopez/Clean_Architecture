USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Estados_Asistencia_Actualizar]
    @Id_Estado_Asistencia INT,
    @Nombre_Estado VARCHAR(100),
    @Descripcion VARCHAR(250),
    @Fecha_Modificacion DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [SQM_CATALOGOS].[Tbl_Estados_Asistencia]
    SET Nombre_Estado = @Nombre_Estado,
        Descripcion = @Descripcion,
        Fecha_Modificacion = ISNULL(@Fecha_Modificacion, GETDATE())
    WHERE Id_Estado_Asistencia = @Id_Estado_Asistencia;
END;
GO