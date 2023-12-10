
---TABLA TEMPORAR EN MEMORIA
DECLARE @mitabla TABLE(id int identity(1,1), pais varchar(50))

insert into @mitabla values ( 'VENEZUELA')
insert into @mitabla values ( 'HONDURAS')
insert into @mitabla values ( 'NICARAGUA')
insert into @mitabla values ( 'ELSALVADOR')
insert into @mitabla values ( 'COSTARICA')
insert into @mitabla values ( 'CHILE')
insert into @mitabla values ( 'MEXICO')
insert into @mitabla values ( 'BOLIVIA')

SELECT * FROM @mitabla

---TABLA TEMPORAR FISICA

CREATE TABLE #mitabla(id int IDENTITY(1,1), nombre VARCHAR(50), apellido varchar(50))

insert into #mitabla values('Maria','Lula')
insert into #mitabla values('Federico','Gonzalez')
insert into #mitabla values('Oscar','Espinoza')
insert into #mitabla values('Clotilde','Marzano')
insert into #mitabla values('Mirian','Marin')

select * from #mitabla

DROP TABLE #mitabla

---script
---select * from TurnoPaciente
---select * from paciente
DECLARE @TURNOS table (id int IDENTITY (1,1), idturno turno, idpaciente paciente)
declare @idpaciente paciente
set @idpaciente=2
insert into @TURNOS (idturno, idpaciente)
	select TP.idTurno, P.idPaciente from Paciente P
		inner join TurnoPaciente TP
		on TP.idPaciente = P.idPaciente


		DECLARE @I INT, @total int
		SET @I= 1
		set @total = (SELECT COUNT(*) FROM @TURNOS)
		WHILE @I<= @total

		BEGIN 
			IF (SELECT idpaciente FROM @TURNOS WHERE id = @I) <>@idpaciente

			delete  from @TURNOS where id = @i
		SET @I= @I+1
		END

		select * from Paciente P
			inner join @TURNOS T
			on T.idpaciente = P.idpaciente

		----select * from @TURNOS