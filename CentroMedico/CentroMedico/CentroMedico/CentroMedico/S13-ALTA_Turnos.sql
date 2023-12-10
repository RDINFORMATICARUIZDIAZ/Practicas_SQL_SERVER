/*select * from Turno
select * from turnopaciente
select* from Medico
select* from Paciente

insert into Medico (nombre,apellido)
values ('Faubrico', 'Gomez')
select * from turno
select * from paciente
select * from turnopaciente
select * from medico
Select * from turnopaciente
select * from TurnoEstado

insert into medico values(2,'Pablo','Ramirez')
*/
EXEC ALTA_turno '20140514 03:20',10,1,'Otro intento'
--EXEC ALTA_turno '20220406 09:15',23,2,'El pacientee'

alter proc ALTA_Turno(
			@fechaTurno char(14), --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

as

/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)
set nocount on
*/
set nocount on

IF NOT EXISTS(SELECT TOP 1 idturno from Turno WHERE fechaturno=@fechaTurno)
BEGIN
	INSERT INTO Turno (fechaturno,estado,observacion)
	VALUES (@fechaTurno,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'El turno se agregó correctamente'
	return

	
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END