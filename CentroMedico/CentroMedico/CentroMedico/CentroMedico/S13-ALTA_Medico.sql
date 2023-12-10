
/*
select * from Medico
select * from MedicoEspecialidad

Update  Medico set nombre = 'Faubricio' where idMedico = 2

*/

EXEC ALTA_medico 'Milciades','Perez',1,'Medico Auxiliar'

alter proc ALTA_Medico(
			@nombre varchar(50),
			@apellido varchar(20),
			@idEspecialidad int,
			@descripcion varchar(50)
			)

as
set nocount on

IF NOT EXISTS(SELECT TOP 1 idmedico from Medico WHERE nombre=@nombre and apellido = @apellido)
BEGIN
	
	INSERT INTO Medico (nombre, apellido)
	VALUES (@nombre,@apellido)
		
	declare @auxIdmedico int
	set @auxIdmedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad (Idmedico, idEspecialidad,descripcion)
	VALUES (@auxIdmedico, @idEspecialidad,@descripcion)

	print 'El Médico se agregó correctamente'
	return

	
END
ELSE
BEGIN
	print 'El Médico ya existe.'
	return
END


