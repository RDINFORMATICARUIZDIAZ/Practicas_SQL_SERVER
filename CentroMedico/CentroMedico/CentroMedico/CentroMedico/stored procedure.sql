/*declare @fecha smalldatetime
set @fecha = '20230323 20:23:23'
	print @fecha*/
	/*Esto es un stored procedure para poder insertar personas a nuestra base de datos*/

exec ALTA_Paciente '5505343','Jorge','Lopez','20180518','calle 1','BRA','','jorgelopez@gmail.com','Esto es una prueba para ver si realiza el inser que acabamos de crear'
exec ALTA_Paciente '1087660','Manuel','Cacerez','20180314','calle ultima','PAR','','manuelcacerez@gmail.com','Esto es para que te mortifiques'

Select * from Pais
Select * from Paciente

CREATE proc ALTA_Paciente(
			@cedula varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fnacimiento varchar(8),
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20)='',
			@email varchar(30),
			@observacion varchar(1000)=''
			)

as

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

