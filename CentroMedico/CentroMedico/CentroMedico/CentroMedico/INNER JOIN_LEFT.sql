INNER JOIN


SELECT * FROM Paciente
select * from TurnoPaciente

select * from Paciente P
inner join TurnoPaciente TP
on TP.idPaciente = P.idPaciente


--- Izquierda-----

select * from Paciente P
left join TurnoPaciente TP
on TP.idPaciente = P.idPaciente

---Derecha---
select * from Paciente P
Right join TurnoPaciente TP
on TP.idPaciente = P.idPaciente


-------------------------------------------------------
select * from Turno 
union all
select * from Turno 