CREATE TABLE DEPARTAMENTO
(
	codigo int PRIMARY KEY NOT NULL,
	descricao varchar(200) not null
);

CREATE TABLE FUNCIONARIO
(
	codigo int PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	endereco varchar(150) not null,
	telefone varchar(15) not null,
	cod_departamento int, 
	CONSTRAINT fk_departamento FOREIGN KEY
	(cod_departamento) references DEPARTAMENTO(codigo)
);

CREATE TABLE DEPENDENTES
(
	codigo int PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	data_nascimento varchar(10) not null,
	cod_funcionario int,
	CONSTRAINT fk_funcionario FOREIGN KEY
	(cod_funcionario) references FUNCIONARIO(codigo) 
);

CREATE TABLE SALARIOS
(
	codigo int PRIMARY KEY NOT NULL,
	id_funcionario int,
	CONSTRAINT fk_funcionario FOREIGN KEY
	(id_funcionario) references FUNCIONARIO(codigo),
	valor_salario decimal(12,2) not null,
	data_alteracao varchar(10) not null
);

Select * from DEPARTAMENTO
Select * from FUNCIONARIO
Select * from DEPENDENTES
Select * from SALARIOS

INSERT INTO DEPARTAMENTO (codigo, descricao)
	 VALUES (1, 'Recursos Humanos');
INSERT INTO DEPARTAMENTO (codigo, descricao)
	 VALUES (2, 'Desenvolvimento');
INSERT INTO DEPARTAMENTO (codigo, descricao)
	 VALUES (3, 'Suporte');

INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (1, 'Anna Julia','Rua Professor Domingues, 825','(45)99999-9999',1);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (2, 'Beatriz','Rua Carlos Flores, 465','(45)88888-8888',1);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (3, 'Laura', 'Rua Israel Davigo, 7621', '(45)77777-7777', 2);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (4, 'Anna Claudia', 'Rua Carlos Piorezan, 83', '(45)66666-6666', 3);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (5, 'Chantal', 'Rua Das Flores, 763', '(45)55555-5555', 2);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (6, 'Jessica', 'Rua Floriano Peixonto, 6737', '(45)44444-4444', 3);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (7, 'Gabriele', 'Rua Fernando Pessoa, 763','(45)33333-3333', 2);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (8, 'Gustavo', 'Rua Porto Velho, 1245','(45)22222-2222', 3);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (9, 'Nicole', 'Rua Visconde do Rio Branco', '(45)11111-1111', 1);
INSERT INTO FUNCIONARIO (codigo, nome, endereco, telefone, cod_departamento)
	 VALUES (10, 'Patricia', 'Rua Castro Alves', '(45)00000-0000', 2);
	 
INSERT INTO DEPENDENTES (codigo, nome, data_nascimento, cod_funcionario)
	 VALUES (1, 'Fabio','15/04/2010', 1);
INSERT INTO DEPENDENTES (codigo, nome, data_nascimento, cod_funcionario)
	 VALUES (2, 'Carla', '23/06/2013', 5);
INSERT INTO DEPENDENTES (codigo, nome, data_nascimento, cod_funcionario)
	 VALUES (3, 'Felipe', '09/01/2016', 8);
INSERT INTO DEPENDENTES (codigo, nome, data_nascimento, cod_funcionario)
	 VALUES (4, 'Bruna', '30/09/2018', 3);
INSERT INTO DEPENDENTES (codigo, nome, data_nascimento, cod_funcionario)
	 VALUES (5, 'Fernando', '18/10/2009', 10);
	 
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (1, 5, 1850.00, '16/04/2020');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (2, 7, 2260.00, '05/03/2021');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (3, 8, 3450.00, '20/09/2019');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (4, 10, 1990.00, '01/11/2020');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (5, 3, 2450.00, '12/07/2021');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (6, 4, 3400.00, '25/06/2022');
INSERT INTO SALARIOS (codigo, id_funcionario, valor_salario, data_alteracao)
	 VALUES (7,1, 3600.00, '10/10/2020');


