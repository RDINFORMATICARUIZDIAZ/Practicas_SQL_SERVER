NSERT INTO paciente (nombre,apellido,fnacimiento,domicilio,idpais,telefono,email,observacion)
values ('Valentin','Ruiz Diaz','2017-01-20','Avda Nose 21', 'ESP','','',''),('MILCIADES',' Diaz','2017-01-20','Avda Nose 21', 'ESP','','','')
select * from Paciente


UPDATE Paciente set nombre = 'David' Where Paciente.idPaciente = 4

select estado from Turno group by estado having Count (estado)=2
Select * from Turno

Select * From Paciente where apellido=' Diaz' and nombre = 'MILCIADES' AND idPaciente=22

//**USO DEL OPERADOR OR, EN ESPAÑOL ES IGUAL A DECIR O SE CUMPLE ESTO O ESTO**//
Select * From Paciente where apellido=' Diaz' OR nombre = 'MILCIADES'

SELECT * FROM Turno WHERE estado IN(2,1,3)

SELECT * FROM Paciente WHERE apellido IN(' Diaz','Perez','Ruiz Diaz')

SELECT * FROM Paciente WHERE nombre NOT LIKE '%I%'

SELECT * FROM Turno WHERE fechaTurno BETWEEN '20000101'AND '20221231'