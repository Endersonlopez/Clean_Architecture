USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Grados_Actualizar]
    @Id_Grado INT,
    @Id_Sede INT,
    @Id_Estado INT,
    @Nombre_Grado VARCHAR(100),
    @Id_Modificador INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [SQM_CATALOGOS].[Tbl_Grados]
    SET Id_Sede = @Id_Sede,
        Nombre_Grado = @Nombre_Grado,
        Id_Estado = @Id_Estado,
        Id_Modificador = @Id_Modificador,
        Fecha_Modificacion = GETDATE()
    WHERE Id_Grado = @Id_Grado;
END;
GO