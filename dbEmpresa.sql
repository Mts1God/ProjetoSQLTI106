drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

create table tbFuncionarios(
codfunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
cnpj char(18),
inscrEst char(15),
email varchar(100),
telefone char(10),
primary key(codForn)
);

create table tbUsuarios(
codusu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc)references tbFuncionarios(codfunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal(9,2) check(valor >= 0),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbClientes(
codcli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
telefone char(10),
primary key(codCli)
);


create table tbVendas(
codVend int not null auto_increment,
codProd int not null,
codCli int not null,
codusu int not null,
dataVenda date,
horaVenda time,
quantidade int,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli),
foreign key(codusu)references tbUsuarios(codusu)
);



desc tbFuncionarios;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbClientes;
desc tbVendas;


insert into tbFuncionarios(nome,email,cpf,salario,sexo)values('Mateus Felipe Ribeiro','mateus@gmail.com','50373478882', '2299.00','M');

insert into tbFornecedores(nome,cnpj,inscrEst,email,telefone) values('bmw','21.212.223.0001/38','233.567.474.-110','sac@bmw.com','94987-6543');

insert into tbUsuarios(nome,senha,codfunc)values('paulo.msilva','1234567',1);

insert into tbProdutos(descricao,quantidade,valor,codForn)values('Banana',12,10.35,1);

insert into tbClientes(nome,email,cpf,telefone) values('Paulo Albuquerque','paulo.alb@gmail.com','245.236.767-89','93476-6543');

insert into tbVendas(codProd,codcli,codusu,dataVenda,horaVenda,quantidade)values(1,1,1,'2022/12/25','15:42:35',10);


select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;
