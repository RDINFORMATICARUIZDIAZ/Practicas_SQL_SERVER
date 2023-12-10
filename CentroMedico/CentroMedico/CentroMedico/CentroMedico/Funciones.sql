
--FUNCIONES ESCALARES


CREATE FUNCTION nombrefun (@var int)
RETURNS int

As

BEGIN
	set @var=@var * 5
	return @var
END

---select * from Paciente
select dbo.concatenar ('Lopez','Roberto')
select dbo.obtenerPais(1)

CREATE FUNCTION concatenar (
							@apellido varchar (50),
							@nombre varchar(50)
							)
RETURNS varchar(100)

As

BEGIN
	declare @resultado varchar(100)
	set @resultado = @apellido +', '+ @nombre
	return @resultado
END


CREATE FUNCTION obtenerPais(
		@idpaciente paciente
							)
	RETURNS CHAR(50)

	AS
	BEGIN
		DECLARE @pais varchar(50)
		set @pais = ( Select PA.pais FROM Paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente=@idPaciente)
		RETURn @pais 
	END


	--FUNCIONES DE TIPO TABLA

select * from dbo.listaPaises()

select * from dbo.listaPaises()
CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idpais char(3), pais varchar(50))
AS
BEGIN
	
	INSERT INTO @paises values('ESP','Espaa')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Per?')
	INSERT INTO @paises values('ARG','Argentina')

	RETURN

END




