/*DROP  TABLE Archivo
DROP  TABLE Artículo
DROP  TABLE Usuarios*/


CREAR  TABLA  Usuarios (
	UsuarioID nvarchar ( 100 ) PRIMARY KEY ,
	Contraseña nvarchar ( 100 ) NOT NULL ,
	Nombre nvarchar ( 200 ),
	Correo electrónico nvarchar ( 500 ),
	Administrador BIT  NOT NULL DEFAULT 0 
	
)

CREATE  TABLE  Publicacion (
	IDpublicacion bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	

	FechaCreacion datetime NOT NULL DEFAULT getdate (),
		
	Texto Text NOT NULL ,
	Titulo Text  NOT NULL ,	
	Categoria nvarchar(50)		
)
CREATE TABLE  Categoria (
	IDCategoria bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	
	Nombre nvarchar(50),
	NombreArchivo nvarchar ( 500 ),	
	Imagen de contenido,	
	Etiquetas nvarchar(50)
)

CREATE TABLE  Etiqueta (
	IDEtiqueta bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	
	Tag nvarchar(50),
	link nvarchar ( 500 )
)

CREATE TABLE  Enlace (
	IDlink bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	
	link nvarchar(50)
)