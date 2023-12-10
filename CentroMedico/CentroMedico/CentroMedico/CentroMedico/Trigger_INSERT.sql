
---Select * from Pacientelog
----Trigger que inserta un log cuando alguien inserta Datos con el pais MEX

CREATE TRIGGER PacienteCreados On Paciente
AFTER INSERT 
AS

IF (SELECT idpais FROM inserted) = 'MEX'
	INSERT INTO Pacientelog (idPaciente,idpais,fechaAlta)

		SELECT I.idPaciente,i.idPais, getdate() FROM inserted I



---- TRIGGER DE TIPO UPDATE

	----Primeramente agregamos en la Tabla pacientelog un campo mas
----ALTER TABLE Pacientelog ADD fechaModificacion DATETIME


ALTER TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS

IF EXISTS (SELECT idpaciente FROM Pacientelog 
			WHERE idpaciente = (SELECT idPaciente FROM inserted))

	UPDATE Pacientelog SET fechaModificacion = GETDATE()
			WHERE idpaciente = (SELECT idPaciente FROM inserted)

ELSE
	INSERT INTO Pacientelog (idpaciente,idpais, fechaModificacion)

	SELECT idPaciente, idPais, GETDATE() from inserted


--- select * from Paciente where idPaciente = 1

UPDATE Paciente SET nombre = 'Oscar Antonio' WHERE idPaciente = 10



---  REALIZAREMOS UN TRIGGER EN DONDE ELIMINAREMOS DATOS PERO DETANDI REGISTROS
--- PRIMERAMENTE AGREAMOS UN CAMPO "fechaBaja" en la tabla Pacientelog

----ALTER TABLE Pacientelog ADD fechaBaja DATETIME

CREATE TRIGGER PacientesEliminados ON Paciente
FOR DELETE
AS

IF EXISTS (SELECT idpaciente FROM PacienteLog
			WHERE idpaciente = (SELECT idpaciente FROM Deleted))
	UPDATE PacienteLog SET fechaBaja = GETDATE()
		WHERE idpaciente = (SELECT idpaciente FROM Deleted)
ELSE
	INSERT INTO PacienteLog (idpaciente, idpais, fechaBaja)
	SELECT idPaciente, idPais, GETDATE() FROM Deleted

	delete  from Paciente where idPaciente=10
	--- select * from Paciente where idPaciente = 1
