/*Hader Eldir Maya Muņoz 2340534*/

use factura

/*
1. Listar los clientes (Nombre Compaņia) que han realizado
almenos un pedido*/

select c.NombreCompaņia, c.NombreContacto,p.FechaPedido
from clientes c inner join Pedidos p
on c.idCliente = p.IdCliente

/*
2-- nombre categoria y nombre compaņia de clientes
*/
-

select CA.nombrecategoria, CL.NombreCompaņia
from categorias CA inner join productos PR
on CA.idcategoria = PR.idCategoria
inner join detallesdepedidos DT
on PR.idproducto = DT.idproducto
inner join Pedidos PE
on PE.IdPedido = DT.idpedido
inner join clientes CL
on CL.idCliente = PE.IdCliente


