USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Grados_Eliminar]
    @Id_Grado INT,
    @Id_Modificador INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [SQM_CATALOGOS].[Tbl_Grados]
    SET Id_Estado = 2,
        Id_Modificador = @Id_Modificador,
        Fecha_Modificacion = GETDATE()
    WHERE Id_Grado = @Id_Grado;
END;
GO