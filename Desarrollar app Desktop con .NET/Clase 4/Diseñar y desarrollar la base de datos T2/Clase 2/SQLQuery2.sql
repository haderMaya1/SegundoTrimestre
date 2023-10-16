--poner en uso una base de datos
USE master

--crear base de datos
CREATE DATABASE BD_Tablas

use BD_Tablas

--Ejemplo de tabla recursiva
CREATE TABLE Empleado
(
	Id_Empleado char (6) not null primary key,
	Nombre		varchar(50) not null,
	Apellido	varchar(50) not null,
	Fecha_Ingreso	date,
	Id_Jefe		char (6) not null,
	--Crear clave foranea
	foreign key	(Id_Jefe) references Empleado(Id_Empleado)
)

--CONSTRAINT
--El siguiente ejemplo de recursividad usando constraint y alter

CREATE TABLE Empleado_1
(
	Id_Empleado_1 char (6) not null,
	Nombre		varchar(50) not null,
	Apellido	varchar(50) not null,
	Fecha_Ingreso	date,
	Id_Jefe_1		char (6) not null--Campo que lleva la foranea
)

--Agregar clave primaria
Alter table Empleado_1
Add constraint Pk_Empleado_1 Primary key (Id_Empleado_1)

--Agregar clave foranea
Alter table Empleado_1
Add constraint Fk_Id_Jefe_1 foreign key (Id_Jefe_1)
References Empleado_1(Id_Empleado_1)

/* Ejemplo de UNO A MUCHOS
Relacion entre Pais-Continente
*/

create table Continente
(
	Cod_continente char(6) not null,
	Nombre_continente varchar(50) not null
)

create table Pais
(
	Cod_pais char(6) not null,
	Cod_continente char(6)not null,
	Nombre_pais varchar(50)not null
)

--Agregar claves primaria
Alter table Continente
Add constraint Pk_continente Primary key (Cod_continente)

Alter table Pais
Add constraint Pk_pais Primary key (Cod_pais)


--Agregar la foranea
Alter table Pais
Add constraint Fk_pais foreign key (Cod_continente)
References Continente(Cod_continente)

--Ejemplo de relacion de muchos a muchos
--Relacion entre Estudiantes-Asignatura

Create table Estudiante
(
	Cod_estudiante char (6) not null,
	Nom_estudiante varchar (50) not null
)

Create table Asignatura
(
	Cod_asignatura char (6) not null,
	Nom_asignatura varchar (50) not null
)

Create table Matricula
(
	Cod_estudiante char (6) not null,
	Cod_asignatura char (6) not null	
)

--Asignar llaves primarias
Alter table Estudiante
Add constraint Pk_Estudiante Primary key (Cod_estudiante) 

Alter table Asignatura
Add constraint Pk_Asignatura Primary key (Cod_asignatura)

--Asignar clave compuesta

Alter table Matricula
Add constraint Pk_Matricula  Primary key (Cod_estudiante, Cod_asignatura)

--Asignar llaves foraneas

Alter table Matricula
Add constraint Fk_Matricula_Estudiante Foreign key (Cod_estudiante)
References Estudiante(Cod_estudiante)

Alter table Matricula
Add constraint Fk_Matricula_Asignatura Foreign key (Cod_asignatura)
References Asignatura(Cod_asignatura)

drop table Asignatura 
drop table Estudiante
drop table Matricula

--Relacion de 1 a 1
CREATE TABLE tbl_Persona
(
	doc_dni  char(15) not null,
	Nombre varchar(50) not null,
	edad int

)

CREATE TABLE tbl_Documento
(
	doc_dni  char(15) not null,
	fecha_naci  date,
	fecha_expe  date,
	lugar_expe varchar(50)
)

--Agregar claves primarias
ALTER TABLE tbl_Persona
ADD CONSTRAINT PK_tbl_Persona PRIMARY KEY (doc_dni)

ALTER TABLE tbl_Documento
ADD CONSTRAINT PK_tbl_Documento PRIMARY KEY (doc_dni)
--Agregar claves foraneas

ALTER TABLE tbl_Persona
ADD CONSTRAINT FK_tbl_Persona FOREIGN KEY (doc_dni)
REFERENCES tbl_Documento(doc_dni )