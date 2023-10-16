use factura


/**/
--listar las cantidades de los productos
use factura

select p.nombreProducto, d.cantidad
from productos p inner join detallesdepedidos d 
on p.idproducto = d.idproducto


-- nombre categoria y nombre compañia de clientes

select CA.nombrecategoria, CL.NombreCompañia
from categorias CA inner join productos PR
on CA.idcategoria = PR.idCategoria
inner join detallesdepedidos DT
on PR.idproducto = DT.idproducto
inner join Pedidos PE
on PE.IdPedido = DT.idpedido
inner join clientes CL
on CL.idCliente = PE.IdCliente

--Sumar 2 unidades a las cantidades
select cantidad, cantidad+2 AumentoDos from detallesdepedidos

--Sumar el 25% al precio
select preciounidad, preciounidad+ ( preciounidad*0.25) VeintiCincoPc from detallesdepedidos

select preciounidad, preciounidad*1.25 Aumento from detallesdepedidos

--Calcular el total

select preciounidad, cantidad, preciounidad*cantidad Total from detallesdepedidos

--FUNCIONES DE AGREGADO: Promedio, suma, maximo, minimo, contar

--Sumar las cantidades de la tabla detalles pedido
select sum(cantidad) from detallesdepedidos
select max(cantidad) from detallesdepedidos
select min(cantidad) from detallesdepedidos
select min(cantidad) from detallesdepedidos
select count(cantidad) from detallesdepedidos
select avg(cantidad) from detallesdepedidos

select * from Pedidos

--Contar los pedidos realizados por idpedido
select idpedido,count(idproducto)
from detallesdepedidos
group by idpedido

--Sumar las cantidades por idproducto
select idproducto, sum(cantidad)
from detallesdepedidos
group by idproducto
 

 --Calcular el promedio de precio unidad por idproducto
 --solo aquellos precios que sean menores a
 -- 8.769230, solo los idproductos 75,33 y 54

 select idproducto, avg(preciounidad)
 from detallesdepedidos
 where idproducto in (75,33,54)
 group by idproducto 
 having avg(preciounidad)<8.769230
 

 --Sumar las cantidades de productos realizadas por los
 --clientes agrupadas por nombre producto

 select nombreProducto, sum (cantidad)
 from detallesdepedidos, productos
 group by nombreProducto, cantidad

 --Having. Condicional para las funciones de agregado

/*Recordatorio de funciones de agregados

*/

select sum(preciounidad) from detallesdepedidos
select avg(preciounidad) from detallesdepedidos
select max(preciounidad) from detallesdepedidos
select min(preciounidad) from detallesdepedidos
select count(preciounidad) from detallesdepedidos

--Mostrar en una variable el numero de clientes

select * from clientes
select COUNT(NombreCompañia) from clientes

--Como almacenar en una variable el numero de clientes
declare	@entero int
set @entero = (select COUNT (*) from clientes)
print @entero

--Otra forma

declare @entero1 int
select @entero1 = count (*) from clientes 
print @entero1


--1. Sumar en una variable llamada suma_salario, la suma de los salarios
--de los empleados

declare @suma_salario decimal
select @suma_salario=sum(sueldoBasico) from Empleados
where sueldoBasico is not null
print @suma_salario

--2. Almacenar en una variable llamada suma_salario1, la suma de 
--los salarios de los empleados Representante de ventas

declare @suma_salario1 decimal
select @suma_salario1=sum(sueldoBasico) from Empleados
where cargo = 'Representante de ventas' and  sueldoBasico is not null 
print @suma_salario1

--Estructuras condicionales 
--Averiguar si una persona es mayor de edad 
declare @edad int
set @edad =11
if (@edad >= 18)
begin
	print 'Es mayor de edad'
end
else
begin
	print 'es menor de edad'
end

/*Calcular la bonificación de un empleado si ese realiza
ventas superiores a 5000000, la bonificación es del 3% sobre las ventas*/

declare @venta float = 7000000
if (@venta > 5000000)
begin
	select @venta=@venta * 0.03
	print @venta
end
else
begin 
	print 'no tiene bonificacion'
end

--Estructuras ciclicas
--Listar los numeros del 1 al 10


--Tabla de multiplicar del 9
declare @num int
declare @contador int
declare @mul int
set @contador=0
set @num=9
while (@contador<10)
  begin
	set @contador+=1;
	set @mul=@num*@contador
	print @mul
  end
go

 --Estructuras de casos
/*Pedir un número al usuario y mostrar el nombre del dia al que
  --corresponde (1=lunes)*/

declare @dia int
set @dia = 1
	select case @dia
	when 1 then 'Lunes'
	when 2 then 'Martes'
	when 3 then 'Miercoles'
	when 4 then 'Jueves'
	when 5 then 'Viernes'
	when 6 then 'Sabado'
	when 7 then 'Domingo'
end
go

/*Implementar un script ingresar un nuevo departamento, en caso de registrar
duplicidad en el nombre del departamento mostrar un mensaje que diga:
Departamento ya registrado, en caso contrario insertar dicho registro*/

use sql_join

select * from Departameto

declare @id int = 39
declare @nombre varchar(30)='Produccion'
if exists (select * from Departameto where nombre_departamento=@nombre)
begin
	print 'Departamento ya se encuentra registrado'
end
else
begin
	insert into Departameto(Id_departamento,nombre_departamento)
	values(@id,@nombre)
	print 'Departamento registrado correctamente'
end