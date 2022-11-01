-- apagar o banco de dados
drop database dbloja;

-- criando banco de dados
create database dbloja;

-- visualizando o banco de dados
show databases;

-- acessando o banco de dados
use dbloja;

-- criando as tabelas para o banco de dados
create table tbFuncionarios(
codfunc int auto_increment,
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codfunc)
); 

create table tbUsuarios(
codusu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codusu)
);

-- visualizando as tabelas no banco de dados
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Jão da Silva','jão.da.silva@gmail.com','258.247.443-23','98766-5444');

insert into tbFuncionarios(nome,email,cpf,tel)
values('Joana da Silva','joana.da.silva@gmail.com','258.247.334-83','98556-5444');

insert into tbUsuarios(nome,senha)values('jão.da.silva','123456');

insert into tbUsuarios(nome,senha)values('joana.da.silva','123456');

-- visualizando os registros da tabela
select * from tbFuncionarios;
select * from tbUsuarios;

-- alterar os registros das tabelas
update tbUsuarios set senha = '12345678' where codusu = 2;


select * from tbUsuarios;

-- excluindo os registros das tabelas
delete from tbUsuarios where codusu=2;

select * from tbUsuarios;