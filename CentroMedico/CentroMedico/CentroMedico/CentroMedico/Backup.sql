


DECLARE @fecha CHAR(12)
DECLARE @path varchar(150)
declare @name varchar(20)

set @fecha =convert(char(8), getdate(),112) + replace(convert(char(5),getdate(),108),':','')
set @path = 'C:\Prueba\CentroMedico\Backup_SQLSERVER\CentroMedico' + @fecha + '.bak'
set @name= 'CentroMedico1'+ @fecha

---print convert(char(8), getdate(),115)
---print replace(convert(char(5),getdate(),108),':','')

BACKUP DATABASE CentroMedico1

to disk = @path
WITH NO_COMPRESSION, NAME= @name