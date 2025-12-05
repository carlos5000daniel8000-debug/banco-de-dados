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

delete from livros where id = 2;
delete from livros;
drop table livros;
create table usuarios;

use usuarios;

create table usuarios(
nome varchar(20),
ID int auto_increment PRIMARY KEY,
email varchar(200),
idade int 
);

insert into usuarios (nome,id,email,idade) value
('daniel','25','carlos5000','20'),
('carlos','35','carlos50','21'),
('clara','24','clara5','23');


select * from usuarios;

select * from usuarios where nome = 'clara';

/*______________________________________________________________________________*/

create database escola;

use escola;

create table alunos(
id int auto_increment PRIMARY KEY,
nome varchar(20),
idade int,
serie varchar(100),
cidade varchar(100)
);

drop table alunos;






insert into alunos (id,nome,idade,serie) value
(25,'Daniel','25','Primeiro Ano'),
(34,'Clra','15', 'Segundo Ano'),
(36,'Bruno','65','Terceiro Ano');

select * from alunos;
/*So exibir alunos*/
select nome, idade from alunos;
/*Exebir apenas nomes e idades*/
select * from alunos where serie = 'Segundo Ano';
/*exibir serie dos alunos*/

update alunos
set idade = 10
where id=2;

set sql_safe_updates =0;

delete from alunos where id =1;
delete from alunos;
drop table alunos;

create table cursos (
id int auto_increment primary KEY,
nome varchar(50),
idade int,
cidade varchar(50),
carga_horaria varchar(50)
);


CREATE table matriculas (
id INT auto_increment primary KEY,
alunos_id INT,
cursos_id INT,
data_matriculas DATE,
foreign key (alunos_id) references alunos(id),
foreign key (cursos_id) references cursos(id)
);

INSERT INTO alunos (nome, idade, cidade)
VALUEs
('Maria Silva', 20, 'São Paulo'),
('João Santos', 22, 'Rio de Janeiro'),
('Ana Souza', 19, 'Belo Horizonte'),
('Carlos Pereira', 25, 'Curitiba');

INSERT INTO cursos (nome, carga_horaria)
VALUES
('Banco de Dados', 40),
('Lógica de Programação', 60),
('Desenvolvimento Web', 80);

insert into matriculas (alunos_id,cursos_id,data_matriculas)
value
(1,1,'2024-02-15'),
(2,2,'2024-03-10'),
(3,1,'2024-04-05'),
(4, 3, '2024-05-20');

select data_matriculas
from matriculas

select carga_horaria
from cursos

select idade
from alunos

select cidade
from cursos

select nome, idade
from alunos
where idade>20;

select nome, cidade
from alunos
where cidade = 'São Paulo';

select nome, carga_horaria
from cursos
where carga_horaria < 70;

