

EXEC S_paciente 4


--SELECCIONA PERO DE FORMA ORDENADA--

Select TOP 3 * from Paciente ORDER BY fNacimiento desc


Select TOP 1 * from Turno Order by fechaTurno desc


-- el distinct lo que hace es agrupar los resultados de los registros por el valor que le hemos especificado---
SELECT DISTINCT idpaciente, apellido from Paciente

select * from Paciente
SELECT apellido FROM Paciente GROUP BY apellido

SELECT  apellido, min (idPaciente) from Paciente GROUP BY apellido


select  sum(idpaciente), apellido from Paciente group by apellido

SELECT AVG(idpaciente) from Paciente

select count (idpaciente) from Paciente where apellido = 'Perez'
select * from Turno
insert into Turno values ('2005-02-03 22:09',1,'Esto es una prueba2')

select * from Paciente where nombre = 'Oscar' and apellido = 'Ruiz Diaz'

select DISTINCT apellido from Paciente

Select * from Paciente

Update  paciente set idPais = 'URU' where idPaciente = 20 
Update  paciente set idPais = 'PAR' where idPaciente = 15
Update  paciente set idPais = 'VEZ' where idPaciente = 11
Update  paciente set idPais = 'URU' where idPaciente = 23
Select * from Pais

Select* from Paciente where apellido = ' Diaz' and nombre = 'David' or idPais= 'ESP'

insert into Pais(idPais, pais) values ('PAR', 'Paraguay')

insert into Pais(idPais, pais) values ('VEZ', 'Venezuela'),('BRA', 'Brasil'), ('URU', 'Uruguay')

--para crear un stored procedure--
CREATE PROC S_paciente (
		@idPaciente int
)
AS

Select* from Paciente where idPaciente = @idPaciente

GO


--para llamar a un stored procedure--

EXEC S_paciente 4

--para llamar a un stored procedure--

--para alterar un stored procedure--

alter PROC S_paciente (
		@idPaciente int
)
AS

Select apellido,nombre,idPais,observacion,
(SELECT Pais FROM Pais ps WHERE ps.idPais= pa.idPais)  desPais
from Paciente pa where idPaciente = @idPaciente

GO


--DECLARE @ordenamiento char(1) = 'A'--
--Set @ordenamiento = 'A'--

DECLARE @ordenamiento CHAR(1)
DECLARE @valorordenamiento CHAR(1)

SET @valorordenamiento = ISNULL (@ordenamiento,'a')

PRINT @ordenamiento
