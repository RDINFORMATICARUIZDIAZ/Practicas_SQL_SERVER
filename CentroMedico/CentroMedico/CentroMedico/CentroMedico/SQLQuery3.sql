select * from Especialidad


update Especialidad set especialidad= 'Dermatología' where idEspecialidad=6

exec ALTA_Especialidad 'Cirugía Plástica y Reconstructiva'


create proc ALTA_Especialidad(
				@Especialidad varchar (50)
)
as


set nocount on

IF NOT EXISTS (select top 1 idEspecialidad from Especialidad where especialidad=@Especialidad)
BEGIN
	INSERT INTO Especialidad (especialidad)
	VALUES (@Especialidad)
	print 'La especialida se agrego correctamente, a buena hora'
	return
END
ELSE
BEGIN
	PRINT 'Ya existe, no insistas'
	return
END
	