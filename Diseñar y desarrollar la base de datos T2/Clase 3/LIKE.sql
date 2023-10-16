USE factura

/*Like
EL COMODIN PORCENTAJE(%): CUALQUIER CADENA DE CARACTERES
EL COMODIN SUBRAYADO(_): REEMPLAZA UN SOLO CARACTER
EL COMODIN [LISTA DE CARACTERES]: REEMPLAZA EN UN CONJUNTO DE CARACTERES ESPECIFICADO
EL COMODIN [CARACTER-CARACTER]: CARACTER INDIVIDUAL DENTRO DE UN RANGO ESPECIFICADO
EL COMODIN [^]: CUALQUIER CARACTER INDIVIDUAL QUE NO SE ENCUENTRE DENTRO DE UNA LISTA
*/

--LISTAR TODOS LOS NOMBRES DE COMPANIA CUYOS NOMBRE COMIENCEN POR A

SELECT * FROM clientes
WHERE NombreCompa�ia LIKE 'A%'

--1. LISTAR TODOS LOS CAMPOS CUYOS NOMBRES DE CONTACTO TERMINEN EN N

SELECT * FROM clientes
WHERE NombreContacto LIKE '%N'

--2. LISTAR TODOS LOS EMPLEADOS CUYOS CARGOS TENGAN COMO SEGUNDO CARACTER LA LETRA I

SELECT * FROM	Empleados
WHERE cargo LIKE '_I%'

--3. LISTAR LOS EMPLEADOS CUYOS CARGOS COMIENCE POR RE Y TERMINEN EN S

SELECT * FROM Empleados
WHERE cargo LIKE 'RE%S'

--LISTAR DE LA TABLA CLIENTES NOMBRE DE COMPANIA QUE ESTEN EN EL RANGO DE LA B A LA G

SELECT * FROM clientes
WHERE NombreCompa�ia like '[B-G]%'

--LISTAR DE LA TABLA CLIENTES NOMBRE DE COMPA�IA QUE empiecen por B y G

SELECT * FROM clientes
WHERE NombreCompa�ia like '[BG]%'

--LISTAR DE LA TABLA CLIENTES NOMBRE DE COMPA�IA QUE NO ESTEN EN EL RANGO DE LA B A LA G

SELECT * FROM clientes
WHERE NombreCompa�ia like '[^B-G]%'

--NO LISTAR DE LA TABLA CLIENTES NOMBRE DE COMPA�IA QUE EMPIECEN CON LA  B Y LA G

SELECT * FROM clientes
WHERE NombreCompa�ia like '[^BG]%'

--LISTAR DE LA TABLA CLIENTES NOMBRE DE COMPA�IA QUE ESTEN EN EL RANGO A-D Y M-R

select * from clientes
where NombreCompa�ia  like '[A-D ^ M-R]%'