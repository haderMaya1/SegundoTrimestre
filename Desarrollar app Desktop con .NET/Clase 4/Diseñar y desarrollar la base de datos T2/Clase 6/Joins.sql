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