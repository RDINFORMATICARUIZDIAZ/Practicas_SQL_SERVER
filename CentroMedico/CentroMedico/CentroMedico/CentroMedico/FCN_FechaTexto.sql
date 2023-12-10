
print  dbo.FCN_FechaTexto ('20231208')



ALTER FUNCTION FCN_FechaTexto(@fecha datetime)

RETURNS VARCHAR(60)

AS
BEGIN


DECLARE @dia varchar(20)
declare @mes varchar(20)
DECLARE @fechatexto varchar (50)

set @dia = (case when datepart(dw,@fecha) = 1 then 'Domingo ' + convert(char(2),datepart(dd,@fecha))
				when datepart(dw,@fecha) = 2 then 'Lunes ' + convert(char(2),datepart(dd,@fecha))
				when datepart(dw,@fecha) = 3 then 'Martes ' + convert(char(2),datepart(dd,@fecha))
				when datepart(dw,@fecha) = 4 then 'Miercoles ' + convert(char(2),datepart(dd,@fecha))
				when datepart(dw,@fecha) = 5 then 'Viernes ' + convert(char(2),datepart(dd,@fecha))
				when datepart(dw,@fecha) = 6 then 'Sabado ' + convert(char(2),datepart(dd,@fecha))
			END)

set @mes = (case when datepart(mm,@fecha)= 1 then 'Enero'
				when datepart(mm,@fecha)= 2 then 'Febreto'
				when datepart(mm,@fecha)= 3 then 'Marzo'
				when datepart(mm,@fecha)= 4 then 'Abril'
				when datepart(mm,@fecha)= 5 then 'Mayo'
				when datepart(mm,@fecha)= 6 then 'Junio'
				when datepart(mm,@fecha)= 7 then 'Julio'
				when datepart(mm,@fecha)= 8 then 'Agosto'
				when datepart(mm,@fecha)= 9 then 'Septiembre'
				when datepart(mm,@fecha)= 10 then 'Octubre'
				when datepart(mm,@fecha)= 11 then 'Noviembre'
				when datepart(mm,@fecha)= 12 then 'Diciembre'
			END)

set @fechatexto = @dia + ' ' + @mes
RETURN @fechatexto

END