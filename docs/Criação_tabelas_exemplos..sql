create database my_finance;

use my_finance;

create table plano_contas(
	id int identity(1, 1) not null,
	descricao varchar(50) not null,
	tipo char(1) not null,

	primary key(id)
);

create table transacao(
	id bigint identity (1, 1) not null,
	data datetime not null,
	valor decimal(18,2) not null,
	tipo char(1) not null,
	historico text null,
	id_plano_conta int not null,

	primary key(id),
	foreign key(id_plano_conta) references plano_contas
);

-- Inserçao de alguns exemplos

insert into plano_contas(descricao, tipo) values ('Aluguel', 'D');
insert into plano_contas(descricao, tipo) values ('Alimentação', 'D');
insert into plano_contas(descricao, tipo) values ('Combustível', 'D');
insert into plano_contas(descricao, tipo) values ('Viagens', 'D');
insert into plano_contas(descricao, tipo) values ('Salário', 'C');


insert into transacao(data, valor, tipo, historico, id_plano_conta)
	values ('2022-08-11 21:35:00', 100.47, 'D', 'Gasolina para viagem', 3);
insert into transacao(data, valor, tipo, historico, id_plano_conta)
	values ('2022-08-11 21:35:00', 48.32, 'D', 'Almoço', 2);
insert into transacao(data, valor, tipo, historico, id_plano_conta)
	values (getdate()-1, 35.87, 'D', 'Almoço', 2);
insert into transacao(data, valor, tipo, historico, id_plano_conta)
	values (getdate()-10, 10000.00, 'C', 'Salário Empresa X', 2);