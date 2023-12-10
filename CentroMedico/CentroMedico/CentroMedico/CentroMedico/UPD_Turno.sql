/*
select * from Turno
select * from TurnoPaciente



*/

exec UDP_Turno 3,4,'Nunca olvides el Where'

alter PROC UDP_Turno(
						@idTurno Turno,
						@estado tinyint,
						@observacion observacion

						)


AS
set nocount on

If exists ( SELECT * FROM Turno where idTurno = @idTurno)
		UPDATE Turno set estado = @estado,
						observacion = @observacion

		WHERE idTurno=@idTurno

else
	SELECT 0 AS RESULTADO