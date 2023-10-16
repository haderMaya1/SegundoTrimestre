--Operadores lógicos or-and-not
use factura
select * from clientes

--Listar los clientes ANTON,CHOPS
select * from clientes
where idCliente in('ANTON','CHOPS')

select * from clientes
where idCliente= 'ANTON' or  idCliente='CHOPS'

select * from Pedidos
where idCliente= 'ANTON' and FormaEnvio=2

--OPERADORES RELACIONALES

select * from productos
--Listar todos los productos con precio unidad mayores a 30
select * from productos
where precioUnidad>30


--1. Listar  los clientes WELLI y HILAA  cuyo cargo sea mayor 40
select * from Pedidos
where idCliente in ('WELLI','HILAA') and Cargo>40

--2. Listar todos los clientes cuyos pais sea Brasil y España y su 
--su region de destino sea  SP TABLA PEDIDOS

select * from Pedidos
where PaisDestinatario in ('Brasil','España') and RegionDestinatario='SP'

--BETWEEN
--Listar los cargos entre 20 y 30 de la tabla pedidos
select * from Pedidos
where Cargo between 20 and 30



use master

create database sql_join

use sql_join

create table  Departameto(
	Id_departamento int primary key,
	nombre_departamento varchar(30),
)

create table Empleado(
	Id_empleado int primary key,
	Id_departamento int,
	nombre_empleado varchar(30),
	foreign key (Id_departamento) references
	Departameto (Id_departamento)
)

insert into Departameto (Id_departamento,nombre_departamento)
values (31,'ventas'),(32,'comercial'),(33,'marketing'),(34,'financiero')

insert into Empleado(Id_empleado,Id_departamento, nombre_empleado)
values (20,31,'Ana'),
       (21,33,'Juan'),
	   (22,33,'Luis'),
	   (23,34,'Gloria'),
	   (24,34,'William'),
	   (25,null,'Julio')

/* Inner Join, Devuelve todas las filas 
cuando hay al menos una coincidencia en ambas tablas*/

select e.nombre_empleado,d.nombre_departamento
from Empleado e inner join Departameto d
On e.Id_departamento=d.Id_departamento


/*
Resultado del codigo
nombre_empleado  nombre_departamento
Ana					ventas
Juan				marketing
Luis				marketing
Gloria				financiero
William				financiero
*/

/*
Left Join. Devuelve todas las filas de la tabla de la izquierda
y las filas coincidentes de la tabla de la derecha
*/

select e.nombre_empleado,d.nombre_departamento
from Empleado e left join Departameto d
On e.Id_departamento=d.Id_departamento

/*Resultado del codigo
nom_empleado    nom_departamento
Ana				ventas
Juan			marketing
Luis			marketing
Gloria			financiero
William			financiero
Julio			NULL
*/



/*
Right Join. Devuelve todas las filas de la tabla de la derecha
y las filas coincidentes de la tabla de la izquierda
*/

select e.nombre_empleado,d.nombre_departamento
from Empleado e right join Departameto d
On e.Id_departamento=d.Id_departamento

/*Resultado del codigo
nom_empleado		nom_departameto
Ana					ventas
NULL				comercial
Juan				marketing
Luis				marketing
Gloria				financiero
William				financiero
*/

/*
outer join:Devuelve todo de las tablas
*/

select e.nombre_empleado,d.nombre_departamento
from Empleado e full join Departameto d
On e.Id_departamento=d.Id_departamento

/*Resultado del codigo
nom_empleado			nom_departamento
Ana						ventas
Juan					marketing
Luis					marketing
Gloria					financiero
William					financiero
Julio					NULL
NULL					comercial
*/

use factura

/*
1. Listar los clientes (Nombre Compañia) que han realizado
almenos un pedido*/

select c.NombreCompañia, c.NombreContacto,p.FechaPedido
from clientes c inner join Pedidos p
on c.idCliente = p.IdCliente

/*
2- Nombre de productos realizados por un cliente
*/

select d.NombreContacto, p.nombreProducto 
from clientes d cross join productos p
