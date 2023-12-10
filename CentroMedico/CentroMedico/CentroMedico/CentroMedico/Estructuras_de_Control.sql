/*
DECLARE @idpaciente int
DECLARE @idturno int
SET @idpaciente = 7
IF @idpaciente = 7
BEGIN
	set @idturno = 20
	select * from Paciente where idPaciente = @idpaciente
	print @idturno

	IF EXISTS (select * from Paciente where idPaciente = 2)
		print 'Existe'
END
*/

DECLARE @contador int = 0
WHILE @contador <= 10
BEGIN
	print @contador 
	SET @contador = @contador + 1
	IF @contador = 3
		BREAK
	/*return
	print 'Hola'*/
END
print 'SIGUE EJECUTANDO'


BEGIN TRY
	SET @contador = 'TEXTP'
END TRY

BEGIN CATCH
	PRINT 'No es posible asignar un texto a una variable nùmerica'
END CATCH
		




/* Declarar condicional case */

DECLARE @valor int
DECLARE @resultado char(10)=''
set @valor = 20

set @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
						WHEN @valor = 20 THEN 'VERDE'
						WHEN @valor = 30 THEN 'ROJO'
						END)
PRINT @resultado

SELECT *, (case when estado=1 then 'verde'
				when estado=2 then 'Rojo'
			else
				'NEGRO'
				END) as colorTurno FROM Turno

		
