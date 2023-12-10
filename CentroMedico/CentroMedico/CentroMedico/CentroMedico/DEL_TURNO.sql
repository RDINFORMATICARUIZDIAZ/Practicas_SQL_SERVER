/*
select * from Turno
select * from TurnoPaciente



*/

exec DEL_Turno 2

ALTER PROC DEL_Turno(
						@idTurno Turno
						

						)


AS
set nocount on

If exists ( SELECT * FROM Turno where idTurno = @idTurno)
begin
		DELETE FROM TurnoPaciente WHERE idturno = @idTurno
		DELETE FROM Turno WHERE idturno= @idturno
		

		end
else
	SELECT 0 AS RESULTADO