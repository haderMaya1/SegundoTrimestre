/*Hader Eldir Maya Muñoz 2340534*/

/*  VARIABLES EN SQL
Las variables son extremadamente utiles en los scripts de sql esto 
ofrece la flexibilidad necesaria para crear herramientas poderosas para usted, se podra observar de su gran utlidad
en los entornos dinamicos de sql. Además este es utlizado para generar bucles los cuales controla cuantas veces se desea
repetir una linea de codigo.
*/

-- Por Ejemplo

DECLARE @Nombre NVARCHAR(100),
		@Recuperación NVARCHAR(100),
		@Record INT,
		@ActualRecord INT,
		@SQL NVARCHAR(MAX)

/*
DECLARE es el comando usado para indicar las variables que se van a utlizar, despues se le asigna 
el nombre de la variable y por ultimo se declara el tipo de dato y por ultimo la cantidad datos que va a alvergar ese tipo de dato.

En la liena 13 indicamos el nombre de la variable y luego el tipo de dato, y por ultimo, le damos una cantidad a guardar en la variable.
En el resto de lineas realizamos lo mismo pero sin necesidad de colocar la cantidad datos ya que es de tipo entero*/

--Una vez que tenemos la variable declarada @Record como de tipo entero podemos emplear el SET al igual que con
--la variable @ActualRecord

SET @Record = 10

SET @ActualRecord = 20

/* 
Al declarar el @Record como tipo entero podemos utilizar el SET para poder asignarle un balor 
tal y como realizamos en el ejemplo por lo que se esta empleando el SET para llamar el dato que se encuentra denominado de tipo entero 
para luego asignarle su valor correspondiente
*/
-------------------------------------------------------------------------------------------------------------------------------------------
/*ESTRUCTURAS EN SQL

La estructura basica de SQL se basa de 4 cosas importantes: SELECT, WHILE , SWITCH y CONDICIONALES
*/

-- SELECT

DECLARE @ID INT 
DECLARE @NOMBRE VARCHAR(50) = 'YILMAR'

SET @ID = 17

SELECT @ID, @NOMBRE

-- CON ESTE ESTAMO INDICANDO UN VALOR DE TIPO ENTERO Y OTRO DE TIPO VARHCAR Y CON EL SELECT LO MOSTRAREMOS EN PANTALLA

--CICLO WHILE

DECLARE @Contador as int=0

WHILE @Contador <= 9
BEGIN
 SET @Contador= @Contador+1
 SELECT @Contador
END
-- Con el ciclo buscamos que la variable @Contador se contabilice hasta cumplir la condición

--CONDICIONAL

DECLARE @EDAD INT 

SET @EDAD = 24
SELECT @EDAD

IF @EDAD >= 18
BEGIN
   SELECT 'ES MAYOR DE EDAD'
END
ELSE
  BEGIN
   SELECT 'ES MENOR DE EDAD'
END
-- EN ESTA CONDICIONAL ESTAMOS INDICANDO SI UNA PERSONA ES MAYOR DE EDAD

-- CICLO SWITCH

DECLARE @SALARIO FLOAT = 750000
-- SWITCH
SELECT CASE @SALARIO WHEN 750000 THEN 'GANA EL MINIMO'
                     WHEN 900000 THEN 'GANA EL MINIMO MAS AUXILIO'
					 WHEN 7000000 THEN 'GANA UN SALARIO INTEGRAL'
					 ELSE 'INDEFINIDO' END
-- CON ESTE ESTAMOS IDENTIFICANDO CUANTO ES LO QUE ESTA GANANDO UNA PERSONA TENIENDO EN CUENTA LOS VALORES ASIGNADOS

-- LISTA DE LOS 10 PRIMEROS NUMEROS NATURALES

DECLARE @NUMERO INT = 0

WHILE @NUMERO <=9
BEGIN 
  SET @NUMERO = @NUMERO + 1
  SELECT @NUMERO
END

-- DIGA SI UN NUMERO ES PRIMO O NO

DECLARE @NUMEROS INT 
DECLARE @ACUMULADOR INT = 1
DECLARE @A INT = 0

SET @NUMEROS = 4


WHILE @ACUMULADOR <= @NUMEROS
BEGIN
  SET @ACUMULADOR = @ACUMULADOR + 1
IF (@NUMEROS % @ACUMULADOR = 0)
    BEGIN
	SET  @A = @A + 1

 END
END
 IF (@A != 2)
 BEGIN
   SELECT 'SI ES PRIMO'
END
  ELSE
  BEGIN 
     SELECT 'NO ES PRIMO'
END

-- AVERIGUAR SI UNA PERSONA ES MAYOR DE EDAD
DECLARE @EDAD_ INT = 19
SELECT @EDAD_

IF @EDAD_ >= 18
BEGIN
   SELECT 'ES MAYOR DE EDAD'
END
  ELSE
    BEGIN
	  SELECT ' ES MENOR DE EDAD'
END





