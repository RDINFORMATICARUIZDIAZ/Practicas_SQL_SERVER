BEGIN TRANSACTION
COMMIT TRANSACTION
ROLLBACK TRANSACTION


/*SELECT * FROM Paciente

begin transaction
	update paciente set telefono = 444 where apellido = 'Ruiz Diaz'
if @@rowcount = 1
		commit transaction
else
		rollback transaction*/

select * from Turno
begin tran
delete from turno where estado = 1
	if @@rowcount = 1
		commit transaction
	else
		rollback transaction
