--- Insertar un nuevo campo a la tabla
Alter Table PAciente ADD estado smallint

---Cambiar el tipo de datos de la columna de la tabla
Alter Table PAciente ALter Column estado bit

--Eliminar una columna de una tabla
Alter Table PAciente Drop column estado


select *from Paciente



create table ejemplo (ejemplo0 int IDENTITY (1,1), elemplo1 int ,ejemplo2 int)

drop table ejemplo
select * from ejemplo
TRUNCATE table ejemplo

insert into ejemplo (elemplo1,ejemplo2) values(4,3)
---------------------------------------------------------------------
CREATE TYPE pais FROM char(3)


select dbo.nombrefun (256)
alter FUNCTION nombrefun (@var int)
RETURNS INT

AS
BEGIN
	SET @VAR = @VAR * 5
	return @VAR
END
---------------------------------------------------------------------