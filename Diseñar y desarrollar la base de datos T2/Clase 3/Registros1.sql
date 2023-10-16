--INSERTAR REGISTROS

USE BD_Tablas
INSERT INTO Estudiante(Cod_estudiante, Nom_estudiante)
VALUES ('01','Juan'),('02','Ana'),('03','Lucas'),('04','Dora'),('05','Jorge')

INSERT INTO Asignatura(Cod_asignatura, Nom_asignatura)
VALUES ('10','Algoritmo'),('11','Base de Datos'),('12','Desarrollo Web'),('13','Ingles'),('14','Matematicas')

INSERT INTO Matricula(Cod_estudiante, Cod_asignatura)
VALUES ('01','11'),('01','10'),('01','13'),
	   ('02','14'),('02','13'),('02','10'),('02','11'),
	   ('03','10'),('03','13'),('03','14'),
	   ('04','10'),('04','11'),('04','12'),('04','13'),('04','14')


--LISTAR LOS REGISTROS

--SELECT CAMPO FROM TABLA
--LISTAR LOS ESTUDIANTES

SELECT * FROM Estudiante

SELECT * FROM Asignatura

--LISTAR NOMBRE DE LOS ESTUDIANTES

SELECT Nom_estudiante from Estudiante

--ORDENAR LOS REGISTROS ORDER BY
--LISTAR LOS NOMBRES DE LOS ESTUDIANTES

SELECT * FROM Estudiante
ORDER BY Nom_estudiante

--LISTAR LAS ASIGNATURAS ORDENADAS POR NOMBRE

SELECT * FROM Asignatura
ORDER BY Nom_asignatura

--SE PUEDE ORDENAR POR MAS DE UN CAMPO

SELECT * FROM Estudiante
ORDER BY Nom_estudiante,Cod_estudiante

--ORDENAR EN FORMA DESCENDENTE

SELECT * FROM Asignatura
ORDER BY Nom_asignatura DESC

--CONSULTAS CON PREDICADO
/*
ALL: DEVUELVE TODOS LOS CAMPOS DE LA TABLA

TOP: DEVUELVE UN DETERMINADO NUMERO DE REGISTROS DE LA TABLA

TOP PERCENT: DEVUELVE UN DETERMINADO NUMERO DE REGISTROS DE LA TABLA EN PORCENTAJE

DISTINCT: OMITE LOS REGISTROS CUYOS CAMPOS SELECCIONADOS COINCIDEN TOTALMENTE
*/

SELECT ALL * FROM Asignatura

SELECT TOP 3 * FROM Asignatura

SELECT TOP 3 PERCENT * FROM Asignatura
ORDER BY Nom_asignatura 

SELECT DISTINCT Nom_asignatura from Asignatura

--ALIAS

SELECT DISTINCT Nom_asignatura AS [Nombre Materia] from Asignatura

/*Clausula Where. Selecciona las filas a incluir en los resultados aplicando una 
condición de busqueda. */

--Listar la materia de Algoritmo de la tabla matricula

SELECT * FROM Matricula
WHERE Cod_asignatura='10'

/*LIKE ES UN OPERADOR LOGICO, DETERMINA SI UNA CADENA DE CARACTERES COINCIDE CON UN PATRON ESPECIFICADO */