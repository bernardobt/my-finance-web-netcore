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
	data date not null,
	valor decimal(18,2) not null,
	tipo char(1) not null,
	historico text null,
	id_plano_conta int not null,

	primary key(id),
	foreign key(id_plano_conta) references plano_contas
);

-- Alguns Exemplos

insert into plano_contas(descricao, tipo) values ('Salário', 'C');
insert into plano_contas(descricao, tipo) values ('Condomínio', 'D');
insert into plano_contas(descricao, tipo) values ('Alimentação', 'D');
insert into plano_contas(descricao, tipo) values ('Combustível', 'D');
insert into plano_contas(descricao, tipo) values ('Compra', 'D');
insert into plano_contas(descricao, tipo) values ('Conta', 'D');
insert into plano_contas(descricao, tipo) values ('Mensalidade', 'D');


INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-01', 5000.00, 'R', 'Salário Empresa X', 1); 
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-05', 96.49, 'D', 'Copasa', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-05', 114.73, 'D', 'Cemig', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-09', 280.00, 'D', 'Condomínio', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-10', 478.00, 'D', 'Supermercado', 5);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 200.00, 'D', 'Gasolina', 4);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 270.00, 'D', 'Escola', 7);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 260.00, 'D', 'Pilates', 7);