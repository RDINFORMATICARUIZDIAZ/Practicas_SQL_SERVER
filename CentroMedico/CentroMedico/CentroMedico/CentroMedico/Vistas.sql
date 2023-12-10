

select * from PacientesYTurnosPendientes

create VIEW PacientesYTurnosPendientes As

select P.nombre, P.idPaciente, p.apellido,t.idTurno, t.estado from Paciente P
inner join TurnoPaciente TP
on TP.idPaciente = p.idPaciente
inner join turno T
on T.idTurno = TP.idTurno

where isnull(t.estado,0) = 0