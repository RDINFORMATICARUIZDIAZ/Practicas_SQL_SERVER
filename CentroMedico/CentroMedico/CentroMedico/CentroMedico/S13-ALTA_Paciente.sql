

--exec ALTA_Paciente '645433','Jorge','Lopez','20180518','calle 1','MEX','','jorgelopez@gmail.com',''
alter proc ALTA_Paciente(
			@cedula varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fnacimiento varchar(8),
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20)='',
			@email varchar(30),
			@observacion observacion=''
			)

as

set nocount on
--- para monitoreal con SQL Profiler
declare @a bigint=0
while @a <= 1500000
	set @a = @a + 1

	print @a
	--------------------------------------------------
IF NOT EXISTS(SELECT * from Paciente WHERE cedula=@cedula)
BEGIN
	INSERT INTO Paciente (cedula,nombre,apellido,fnacimiento,domicilio,idpais,telefono,email,observacion)
	VALUES (@cedula,@nombre,@apellido,@fnacimiento,@domicilio,@idpais,@tel,@email,@observacion)
	print 'El paciente se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe.'
	return
END



