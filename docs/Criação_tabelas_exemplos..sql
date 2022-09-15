use my_finance;

CREATE TABLE plano_contas(
	id int identity(1, 1) NOT NULL,
	descricao varchar(50) NOT NULL,
	tipo char(1) NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE transacao(
	id bigint identity (1, 1) NOT NULL,
	data date NOT NULL,
	valor decimal(18,2) NOT NULL,
	tipo char(1) NOT NULL,
	historico text NULL,
	id_plano_conta int NOT NULL,

	PRIMARY KEY(id),
	FOREIGN KEY(id_plano_conta) references plano_contas
);

-- Alguns Exemplos

INSERT INTO plano_contas(descricao, tipo) VALUES ('Salário', 'C');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Condomínio', 'D');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Alimentação', 'D');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Combustível', 'D');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Compra', 'D');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Conta', 'D');
INSERT INTO plano_contas(descricao, tipo) VALUES ('Mensalidade', 'D');


INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-01', 5000.00, 'R', 'Salário Empresa X', 1); 
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-05', 96.49, 'D', 'Copasa', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-05', 114.73, 'D', 'Cemig', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-09', 280.00, 'D', 'Condomínio', 6);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-10', 478.00, 'D', 'Supermercado', 5);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 200.00, 'D', 'Gasolina', 4);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 270.00, 'D', 'Escola', 7);
INSERT INTO transacao(data, valor, tipo, historico, id_plano_conta) VALUES ('2022-09-15', 260.00, 'D', 'Pilates', 7);