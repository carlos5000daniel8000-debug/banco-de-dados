create database db_biblioteca;

use db_biblioteca;

create table livros(
id int auto_increment primary key,
titulo varchar (100),
autor varchar (50),
ano_publicacao int
);

insert into livros (id, titulo, autor, ano_publicacao) value
(1,'Dom Casmurro','Machado de Assis', 1899),
(2,'O Alienista','Machado de Assis',1882),
(3,'Memorias Postumas de Bras Cubas','Machado de Assis',1881),
(4,'Capitaes da Areia','Jorge Amado',1937);

select * from livros;

select titulo, ano_publicacao from livros;

select * from livros where autor = 'Machado de Assis';

set sql_safe_Updates=0;

update livros 
set ano_publicacao= 1938
where titulo = 'Capitaes da Areia';
