----FUNCIONES----------
-----------------------------Izquierda-----
declare @var varchar(20)
set  @var ='Ramiro'
print left(@var,3)
-----------------------------Derecha------
declare @var1 varchar(20)
set  @var1 ='Ramiro'
print Right(@var1,4)
---------------------------------------------------------------------------
declare @var3 varchar(20)
declare @var2 varchar(20)
set @var3 = 'LUI"Z'
set @var2 = 'Gonz@alez'

--print LOWER (@var3) + UPPER (@VAR3)

---print left (@var3,len(@var3)-1) --+ left (@var2,4)
 ---UPPER ES (MAYUSCULA) Y LOWER ES(minuscula)

 ---La función REPLACE nos permite reeplazar un caracter por otro en una variable strin
select replace (@var2,'@','')


---Este cadena de scrip es para escribir un nombre que comience con mayuscula y luego continue con minuscula
----La funciòn LEN lo que hace es contar la cantidad de caracteres que hay en una variable char o varchar
PRINT upper (left(@var3,1)) + lower(right(@var3,len(@var3)-1)) + ' ' +  upper (left(@var2,1)) + lower(right(@var2,len(@var2)-1))

---La Función REPLICATE nos permite repetir un caracter o una cadena de catacteres la cantidad que nosotros le espesifiquemos
Print REPLICATE ('0',10)

---Funciones LTRIM Y RTRIM PERMITE ELIMINAR ESPACIOS EN BLANCO TANTO A LA IZQUIERDA COMO A LA DERECHA
---------------------------------------------------------------------------
declare @var5 varchar(20)
declare @var6 varchar(20)
set @var5 = '           LUIZ            '
set @var6 = '          Gonzalez'

--SELECT LTRIM(RTRIM(@var5)) +' '+ LTRIM(RTRIM(@var6)) + ' '+ '*'

SELECT CONCAT(LTRIM(RTRIM(@var5)),' ',LTRIM(RTRIM(@var6)))


SELECT GETDATE ()
SELECT GETUTCDATE()



---RESIBE TRES PARAMETROS---
SELECT DATEADD(DAY,0,getdate())

select datediff(month,getdate(),'20230223')

select datepart(dw,getdate())

select isdate

print isdate(getdate())
/*
declare @numero money
set @numero = 500.70
print @numero
*/

declare @fecha datetime
set @fecha = getdate()
print @fecha

---SELECT CAST(idpaciente as money) FROM Paciente

---select CAST(@numero as int) NUMERO 

print convert (char(30), @fecha,104)



