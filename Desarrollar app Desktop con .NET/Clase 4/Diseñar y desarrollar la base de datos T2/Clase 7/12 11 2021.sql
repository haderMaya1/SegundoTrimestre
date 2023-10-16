-- FECHAS
--MUESTRA EL LENGUAJE
select @@LANGUAGE

--cambiar el lenguaje
set language spanish

--FUNCIONES	
select GETDATE () -- fecha actual
--extraer partes de una fecha(año,mes,dia)

select DATEPART(year,getdate())--extrae el año a la fecha actual
select DATEPART(MONTH,GETDATE())--extrae el mes a la fecha actual
select datepart(DAY,GETDATE())--extraer el dia a la fecha inicial

--otra forma de extraer partes de una fecha
select  YEAR(GETDATE())
select MONTH(GETDATE())
select DAY (GETDATE())

--nombre del mes
select datename(MONTH,GETDATE())

--diferencia entre fechas
select datediff(day,'2021/01/01', '2021/01/05')--diferencia entre dias
select datediff(year,'2020/01/01', '2021/01/01')-- diferencia entre años
select datediff(MONTH,'2021/01/01', '2021/05/01')--diferencia en meses

--Adicion entre fechas
select DATEADD(dd,8,'2021/01/01')--agregar 8 dias a la fecha
select DATEADD(YYYY,2,'2021/01/01')-- agregar 2 años a la fecha
select DATEADD(MM,8,'2021/01/01')--agregar 2 meses a la fecha

select * from empleados

-- listar todos los empleados contratados en el año 92
select * from Empleados
where year(fechacontratacion)=1993

-- listar todos los empleados que cumplan un añoe en enero
select * from Empleados
where month(fechacontratacion)=01

-- listar todos los empleados del año 92 y 93 cuyo sueldo basico queda nulo
select * from empleados
where year(FechaContratacion) in ('1992', '1993') and sueldoBasico is NULL --para estraer de una lista los nulos es IS NULL

/* listar el mes 8 del año 94 de la fecha pedido de la tabla pedido,
solo los idempleados que sean 3 y 5, que el region destinatario
sea nulo y forma de envios seal 2 y 3*/

select * from Pedidos
where month(FechaPedido)= 08 and YEAR (FechaPedido)= 1994 and IdEmpleado in (3,4) and RegionDestinatario is null and formaEnvio in (2,3)

-- sumar la cantidad de producto de la tabla pedidos en el año 94,agregados
-- por nombre de producto, solo aquellas de cantidades menores a 50
-- (tablas: productos, pedidos, detallespedido)

select p.nombreProducto, sum(cantidad)
from productos P inner join detallesdepedidos D
on P.idproducto = D.idproducto
inner join Pedidos PE
on PE.IdPedido = D.idpedido
where year(FechaPedido)= 1994
group by P.nombreProducto
having sum(cantidad)<50
