/*Hader Eldir Maya Mu�oz 2340534*/

use factura

/*
1. Listar los clientes (Nombre Compa�ia) que han realizado
almenos un pedido*/

select c.NombreCompa�ia, c.NombreContacto,p.FechaPedido
from clientes c inner join Pedidos p
on c.idCliente = p.IdCliente

/*
2-- nombre categoria y nombre compa�ia de clientes
*/
-

select CA.nombrecategoria, CL.NombreCompa�ia
from categorias CA inner join productos PR
on CA.idcategoria = PR.idCategoria
inner join detallesdepedidos DT
on PR.idproducto = DT.idproducto
inner join Pedidos PE
on PE.IdPedido = DT.idpedido
inner join clientes CL
on CL.idCliente = PE.IdCliente


