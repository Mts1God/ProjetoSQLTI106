drop database dbestacionamento;

create database dbestacionamento;

use dbestacionamento;


create table estacionamento(
codigo int auto_increment,
placa varchar(8),
cor varchar(30),
modelo char(30),
ano char(4),
dataentrada date,
horaentrada time,
datasaida date,
horasaida time,	
primary key (codigo)
);

insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('WRT-2376', 'Vermelho', 'Fiat Uno', '1999', '2022/04/21', '13:22', '2022/04/21', '21:32');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('GTR-7316', 'Preto', 'Nissan GTR', '2018', '2022/04/21', '07:28', '2022/04/21', '18:47');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('SHE-5567', 'Branco', 'Ford Mustang shelby eleonor', '1995', '2022/04/23', '14:55', '2022/04/25', '15:38');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('JAS-5863', 'Roxo', 'Toyota Corolla', '2023', '27/04/2022', '10:37', '28/04/2022', '21:31');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('JSI-8878', 'Amarelo', 'Fiat-Uno', '1999', '28/04/2022', '09:57', '28/04/2022', '16:44');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('HAK-7382', 'Azul', 'Fusca', '1980', '29/04/2022', '13:05', '30/04/2022', '01:45');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('LAK-2829', 'Preto', 'gol', '2005', '30/04/2022', '13:45', '30/04/2022', '22:59');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('GGD-7521', 'Branco', 'Creta', '2019', '02/05/2022', '13:33', '02/05/2022', '21:00');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('ZXC-8873', 'Vermelho', 'Palio', '1999', '03/05/2022', '06:30', '03/05/2022', '07:32');
insert into estacionamento ( placa, cor, modelo, ano, dataentrada, horaentrada, datasaida, horasaida ) values ('LKJ-7590', 'Preto', 'Maverick', '1999', '05/05/2022', '14:55', '05/05/2022', '21:00');

desc estacionamento;

update estacionamento set ano = ano '1985' where placa 'WRT-2376';
update estacionamento set ano = ano '2008' where  placa 'GTR-7316';
update estacionamento set ano = ano '2006' where placa 'HAK-7382';
update estacionamento set ano = ano '2003' where placa 'GGD-7521';
update estacionamento set ano = ano '2001' where placa 'LKJ-7590';
select * from estacionamento;

delete from estacionamento where placa = 'WRT-2376';
delete from estacionamento where placa = 'JAS-5863';
delete from estacionamento where placa = 'HAK-7382';
delete from estacionamento where placa = 'ZXC-8873';
select * from estacionamento;

select * from estacionamento where modelo like '%Nissan GTR%';