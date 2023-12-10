
exec SEL_HistoriaPaciente 1

ALTER PROC SEL_HistoriaPaciente(
				@idpaciente paciente)

As
set nocount on

/*

SELECT * from Historia
SELECT * from historiaPaciente


*/

IF EXISTS(
			SELECT * FROM Paciente P
			INNER JOIN HistoriaPaciente HP
			ON HP.idPaciente = P.idPais
			INNER JOIN Historia H
			ON H.idHistoria= HP.idHistoria
			INNER JOIN MedicoEspecialidad ME
			ON ME.idMedico = HP.idMedico
			INNER JOIN Medico M
			ON M.idMedico=ME.idMedico
			WHERE P.idPaciente=@idpaciente
)

			SELECT * FROM Paciente P
			INNER JOIN HistoriaPaciente HP
			ON HP.idPaciente = P.idPais
			INNER JOIN Historia H
			ON H.idHistoria= HP.idHistoria
			INNER JOIN MedicoEspecialidad ME
			ON ME.idMedico = HP.idMedico
			INNER JOIN Medico M
			ON M.idMedico=ME.idMedico
			WHERE P.idPaciente=@idpaciente
else
	--PRINT 'No existe historias clinicas para el paciente'
	select 0 as resultado
