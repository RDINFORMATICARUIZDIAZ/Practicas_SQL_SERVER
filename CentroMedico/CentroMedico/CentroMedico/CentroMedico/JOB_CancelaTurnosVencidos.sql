SELECT * FROM Turno

Use CentroMedico1
Go
update turno set estado = 4 where convert(char(8),fechaTurno,112)< convert(char(8),getdate(),112) and estado = 0