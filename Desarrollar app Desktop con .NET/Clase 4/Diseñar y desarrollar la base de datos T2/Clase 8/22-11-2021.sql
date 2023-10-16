--Tipos de subconsultas
--Escalonadas o Escaleras
/*Listar los productos donde el precio unidad sea mejor a la 
media del precio unidad
*/

use factura
select avg(precioUnidad) from productos --28.9922077

select nombreProducto,precioUnidad from productos
where precioUnidad<(select avg(precioUnidad) from productos)

/*2 listar las unidades en existencia que sean menores al valor
maximo de unidades en existencia
*/

select MAX(unidadesEnExistencia) from productos --

select nombreProducto,unidadesEnExistencia from productos
where unidadesEnExistencia < (Select max (unidadesEnExistencia) from productos)

--Subconsultas con Having

/*devolver todas compañias que tienen el mismo numero del 
producto Manzanas secas Manjimup
*/

select * from productos where nombreProducto='Manzanas secas Manjimup'

--Pasos 
--A. Contar los productos por nombre de compañia
select c.NombreCompañia, count (pr.idproducto)
from Pedidos p inner join clientes c
on p.IdCliente=c.idCliente
inner join detallesdepedidos dp
on p.IdPedido=dp.idpedido
inner join productos pr
on dp.idproducto=pr.idproducto
group by c.NombreCompañia

--B. Contar por Idproducto, el prodicto "MSM"
--por compañoa
select count (pr.idproducto)
from Pedidos p inner join clientes c
on p.IdCliente=c.idCliente
inner join detallesdepedidos dp
on p.IdPedido=dp.idpedido
inner join productos pr
on dp.idproducto=pr.idproducto
where pr.nombreProducto='Manzanas secas Manjimup'

--Juntar los codigos
select c.NombreCompañia, count (pr.idproducto)
from Pedidos p inner join clientes c
on p.IdCliente=c.idCliente
inner join detallesdepedidos dp
on p.IdPedido=dp.idpedido
inner join productos pr
on dp.idproducto=pr.idproducto
group by c.NombreCompañia
HAVING count(pr.idproducto)=(select  count(pr.idproducto)
from Pedidos p inner join clientes c
on p.IdCliente=c.idCliente
inner join detallesdepedidos d
on p.IdPedido=d.idpedido
inner join productos pr
on d.idproducto=pr.idproducto
where pr.nombreProducto='Manzanas secas Manjimup')

--SUBCONSULTAS DE LISTAS (Dando nombre a la consulta)
/*Devuelve un listado de todos los productos que tienen un precio
mayor o igual al precio medio de todos los productos del proveedor*/


--PASOS

--Consulta interna
select idProveedor,avg(precioUnidad) from productos
group by idProveedor

select nombreProducto from productos p
inner join (select idProveedor,avg(precioUnidad) AS media from productos
group by idProveedor) AS t
on p.idProveedor=t.idProveedor
where p.precioUnidad>=t.media