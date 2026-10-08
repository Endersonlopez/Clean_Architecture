USE DB_Control_Asistencias;
GO

CREATE OR ALTER PROCEDURE [SQM_CATALOGOS].[sp_Grados_Insertar]
    @Id_Sede INT,
    @Nombre_Grado VARCHAR(100),
    @Id_Estado INT,
    @Id_Creador INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [SQM_CATALOGOS].[Tbl_Grados] (
        Id_Sede, 
        Nombre_Grado, 
        Id_Estado, 
        Id_Creador, 
        Fecha_Creacion
    )
    VALUES (
        @Id_Sede, 
        @Nombre_Grado, 
        @Id_Estado, 
        @Id_Creador, 
        GETDATE()
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Nuevo_Id;
END;
GO