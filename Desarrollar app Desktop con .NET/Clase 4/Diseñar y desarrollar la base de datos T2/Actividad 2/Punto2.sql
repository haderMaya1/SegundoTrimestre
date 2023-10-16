/*Hader Eldir Maya Muñoz 2340534*/

use master 
create database punto_2
use punto_2

create table EMPLEADO
(
  ID_EMPLEADO char(6) not null,
  NOMBRE varchar (50) not null,
  APELLIDO varchar (50) not null,
  TELEFONO varchar (50) not null,
  EDAD int not null,
)

create table JEFE 
(
   ID_JEFE char (6) not null,
   NOMBRE varchar (50) not null,
   APELLIDO varchar (50) not null,
   TELEFONO varchar (50) not null,
   EDAD int not null,
)

create table TAREAS
(
  ID_TAREA char (6) not null,
  DESC_TAREA varchar (200) not null,
)

-- claves primarias
alter table EMPLEADO
add constraint PK_EMPLEADO primary key (ID_EMPLEADO)

alter table JEFE
add constraint PK_JEFE primary key (ID_JEFE)

alter table TAREAS
add constraint PK_TAREAS primary key (ID_TAREA)

-- tablas CRUD

go

create PROCEDURE PRO_EMPLEADO
  @ID_EMPLEADO char(6) = null,
  @NOMBRE varchar (50) = null,
  @APELLIDO varchar (50) = null,
  @TELEFONO varchar (50) = null,
  @EDAD int  null,
  @MODO char(1)

  as

    if @MODO = 'I'
	begin
	    insert EMPLEADO values (@ID_EMPLEADO,@NOMBRE,@APELLIDO,@TELEFONO,@EDAD)
	end

	if @MODO = 'u'
	begin
	    update EMPLEADO set ID_EMPLEADO = @ID_EMPLEADO, NOMBRE = @NOMBRE, APELLIDO = @APELLIDO, TELEFONO = @TELEFONO, EDAD = @EDAD
     end

	 if @MODO = 'd'
	  begin
	    delete from EMPLEADO where ID_EMPLEADO = @ID_EMPLEADO
	  end
   
   go
   
-- insertar tabla 
insert EMPLEADO values ('2','Yilmar','Morales Castrillon','3216338455','18')
insert EMPLEADO values ('3','Isabela','Mendosa Cataño','3216657435','18')
insert EMPLEADO values ('4','Juanita','Cataño Meneses','3245678645','19')
insert EMPLEADO values ('5','Pepe','Trujillo Mendoza','3216448455','23')
insert EMPLEADO values ('6','Camilo','Cadavid Monsalve','32167778455','25')
insert EMPLEADO values ('7','Adrian','Castrillon Castrillon','3214638455','26')
insert EMPLEADO values ('8','Cristian','Morales Moralres','3216337555','30')

select * from EMPLEADO

go

create procedure PRO_JEFE

   @ID_JEFE char (6) = null,
   @nombre varchar (50) = null,
   @apellido varchar (50) = null,
   @telefono varchar (50) = null,
   @edad int = null,
   @modo_2 char (1)

   as
      if @modo_2 = 'Y'
	  begin	
	     insert JEFE values (@ID_JEFE,@nombre,@apellido,@telefono,@edad)
	end

	if @modo_2 = 'x'
	 begin
	  update JEFE set ID_JEFE = @ID_JEFE, nombre = @nombre, apellido = @apellido,telefono = @telefono, edad = @edad where ID_JEFE =  @ID_JEFE
	 end

	 if @modo_2 = 'z'
	 begin
	 delete from JEFE where ID_JEFE = @ID_JEFE
	 end
	  -- insertar tabla
	  execute PRO_JEFE @modo_2 = 'x'
	 go
	 insert JEFE values ('2','Adrian','Gomez Zapata','3225667789','45')
	 insert JEFE values ('3','Jose','Perez Carmin','3225655789','46')
	 insert JEFE values ('4','Daniela','Perez Soza','3225667799','35')
	 insert JEFE values ('5','Pedro','Zapata Marin','3225667733','29')
	 insert JEFE values ('6','Gabriel','Gomez Zapata','3225667723','55')
	 insert JEFE values ('7','Flor','Torres Meja','3225667728','66')
	 insert JEFE values ('8','Jose manuel','Franco Alvarez','3225667755','56')
	 insert JEFE values ('9','Cristian','Alvarado Gil','3225667774','47')
	 insert JEFE values ('10','Daniel','Torres Zapata','3225667767','48')
	 insert JEFE values ('11','Alejandra','Caballero Ilustre','3225667777','44')
	 insert JEFE values ('12','Michael','Siempre Firme','3225667786','45')
	 insert JEFE values ('13','Hader','Maya Muñoz','3225667733','32')
	 insert JEFE values ('29','Manuela','Gomez Zapata','3225667799','27')

	 select * from JEFE
	
go
create procedure PRO_TAREAS
  @ID_TAREA char (6) = null,
  @DESC_TAREA varchar (50) = null,
  @modo_3 char(1)

  as
  if @modo_3 = 'T'
   begin
    insert TAREAS values (@ID_TAREA,@DESC_TAREA)
 end

 if @modo_3 = 'W'
  begin
    update TAREAS set ID_TAREA= @ID_TAREA, @DESC_TAREA = @DESC_TAREA
 end

 if @modo_3 = 'K'
 begin 
   delete from TAREAS where ID_TAREA = @ID_TAREA
end

-- insertar tablas 
    
go
execute PRO_TAREAS @modo_3 = 'T' ,@ID_TAREA = '05', @DESC_TAREA = 'OFIMATICA' 
insert TAREAS values ('01','REUNION'),('02','TRABAJO FRENETICO'),('03','DESCANSO CORTO'),('04','TRABAJO LEVE')

select * from TAREAS