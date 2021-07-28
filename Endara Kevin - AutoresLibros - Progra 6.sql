/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 16                          */
/* Created on:     18/04/2017 04:29:12 PM                       */
/*==============================================================*/
/*			ENDARA LÓPEZ KEVIN JOSEPH							*/

create database autores_libros_Progra6
go


use autores_libros_Progra6
go



select * from autores

/*==============================================================*/
/* Table: autores                                               */
/*==============================================================*/
create table autores 
(
   id_autores           INT NOT NULL IDENTITY,
   autor_uno_nombre     varchar(50)                    not null,
   autor_dos_nombre     varchar(50)                    default null,
   autor_tres_nombre    varchar(50)                    default null,
   constraint pk_autores primary key clustered (id_autores)
);

/*==============================================================*/
/* Index: autores_pk                                            */
/*==============================================================
create unique clustered index autores_pk on autores (
id_autores asc
);*/

/*==============================================================*/
/* Table: libros                                                */
/*==============================================================*/
create table libros 
(
   id_libro				INT NOT NULL IDENTITY,
   titulo               varchar(150)               not null,
   id_autores           int                        not null,
   editorial            varchar(100)               not null,
   fecha_publicacion    varchar(10)                not null,
   idioma               varchar(50)                not null,
   numero_paginas       int                        not null,
   constraint pk_libros primary key clustered (id_libro)
);

/*==============================================================*/
/* Index: libros_pk                                             */
/*==============================================================
create unique clustered index libros_pk on libros (
titulo asc
);*/

/*==============================================================*/
/* Index: publica_fk                                            */
/*==============================================================
create index publica_fk on libros (
id_autores asc
);*/

alter table libros
   add constraint fk_libros_publica_autores foreign key (id_autores)
      references autores (id_autores)




--*************************AUTORES PROCESO ALMACENADO*******************************
---(C) CREATE
create procedure create_autor(
	@autor_uno_nombre     varchar(50),
	@autor_dos_nombre     varchar(50),
	@autor_tres_nombre    varchar(50)
)as
begin
begin try
	begin transaction
	--intentar insertar el registro
	insert into autores(
		--id_autores,
		autor_uno_nombre,
		autor_dos_nombre,
		autor_tres_nombre)
	values(
		--@id_autores
		@autor_uno_nombre,
		@autor_dos_nombre,
		@autor_tres_nombre		
	)
	commit transaction
end try
begin catch
	rollback transaction
end catch
end


---(R) READ
create procedure select_autores
as begin
	select * from autores
end


create procedure select_autor(
	@id_autor int
)
as begin
	select * from autores where id_autores=@id_autor
end



---(U) UPDATE
create procedure update_autores(
	@id_autores			  INT,
	@autor_uno_nombre     varchar(50),
	@autor_dos_nombre     varchar(50),
	@autor_tres_nombre    varchar(50)
)as
begin
begin try
	begin transaction
		update autores set autor_uno_nombre=@autor_uno_nombre, autor_dos_nombre=@autor_dos_nombre, autor_tres_nombre=@autor_tres_nombre
		where id_autores=@id_autores
	commit transaction
end try
begin catch
	rollback transaction
end catch
end



---(D) DELETE
create  procedure delete_autor(
	@id_autores int
)as begin
begin try
	begin transaction
	delete from autores where id_autores=@id_autores
	commit transaction
end try
begin catch
	rollback transaction
end catch
end



exec [dbo].[create_autor] 'Kevin','Jose',null
exec [dbo].[create_autor] 'Sebastian',null,null
exec [dbo].[create_autor] 'Kevin','Sebastian',null
exec [dbo].[create_autor] 'Kevin',null,null

--exec [dbo].[select_autores]

--exec [dbo].[select_autor] 4

--exec [dbo].[update_autores] 4, 'Fausto','Carlos',null

--exec [dbo].[delete_autor] 4




--*************************LIBROS PROCESO ALMACENADO*******************************
---(C) CREATE
create procedure create_libro(
   @titulo               varchar(150),
   @id_autores           int,
   @editorial            varchar(100),
   @fecha_publicacion    varchar(10),
   @idioma               varchar(50),
   @numero_paginas       int
)as
begin
begin try
	begin transaction
	--intentar insertar el registro
	insert into libros(
		--id_libro				INT NOT NULL IDENTITY,
		titulo,
		id_autores,
		editorial,
		fecha_publicacion,
		idioma,
		numero_paginas)
	values(
		--@id_libro,
		@titulo,
		@id_autores,
		@editorial,
		@fecha_publicacion,
		@idioma,
		@numero_paginas	
	)
	commit transaction
end try
begin catch
	rollback transaction
end catch
end



---(R) READ
create procedure select_libros
as begin
	select * from libros
end


create procedure select_libro(
	@id_libro int
)
as begin
	select * from libros where id_libro=@id_libro
end



---(U) UPDATE
create procedure update_libro(
   @id_libro			 INT,
   @titulo               varchar(150),
   @id_autores           int,
   @editorial            varchar(100),
   @fecha_publicacion    varchar(10),
   @idioma               varchar(50),
   @numero_paginas       int
)as
begin
begin try
	begin transaction
		update libros set titulo=@titulo, id_autores=@id_autores, editorial=@editorial, 
			fecha_publicacion=@fecha_publicacion, idioma=@idioma, numero_paginas=@numero_paginas
		where id_libro=@id_libro
	commit transaction
end try
begin catch
	rollback transaction
end catch
end


---(D) DELETE
create  procedure delete_libro(
	@id_libro int
)as begin
begin try
	begin transaction
	delete from libros where id_libro=@id_libro
	commit transaction
end try
begin catch
	rollback transaction
end catch
end



exec [dbo].[create_libro] 'Harry Potter', 1,'SALAMANDRA','2001-01-01','Español',354
exec [dbo].[create_libro] 'Las Cronicas de Narnia', 2,'SALAMANDRA','1954-09-01','Español',150
exec [dbo].[create_libro] 'Mentes Poderosas', 2,'Molino','2007-01-03','Español',400
exec [dbo].[create_libro] 'IT (ESO)', 3,'Molino','1980-01-03','Español',1000


--exec [dbo].[select_dlibros]

--exec [dbo].[select_libro] 1

--exec [dbo].[update_libro] 1, 'Harry Potter', 1,'SALAMANDRA','2001-01-01','Español',250

--exec [dbo].[delete_libro] 4
