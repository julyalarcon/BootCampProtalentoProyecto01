drop database if exists Protalento01;
create database if not exists Protalento01;
use Protalento01;

create table usuarios(
	correo varchar(100) not null primary key,
	clave blob, 
	fechaCreacion date not null,
	fechaUltimoAcceso datetime not null,
	-- se agrega para bloquear al usuario
	intentosFallidos tinyint not null default 0
);

create table if not exists categorias(
	id bigint auto_increment primary key,
	descripcion varchar(100)
);

