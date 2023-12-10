EXEC SEL_EspecialidadesMedicas

CREATE PROC SEL_EspecialidadesMedicas

AS
set nocount on

---Select * from especialidad
IF EXISTS (SELECT * FROM Especialidad)

	SELECT * FROM Especialidad

ELSE
	SELECT 0 AS RESULTADO
