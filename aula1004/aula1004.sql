CREATE TABLE DEPARTAMENTO
(
	id_departamento int PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	ativo boolean not null
);

CREATE TABLE COLABORADOR
(
	id_colaborador int PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	cpf varchar(14) not null,
	data_nascimento varchar(10) not null,
	data_admissao varchar(10) not null,
	idDepartamento int,
	CONSTRAINT fk_departamento FOREIGN KEY
	(idDepartamento) references DEPARTAMENTO(id_departamento)
);

CREATE TABLE CONTROLE_EPI
(
	id_EPI int PRIMARY KEY NOT NULL,
	descricao varchar(150) not null,
	data_fabricacao varchar(10) not null,
	data_vencimento varchar(10) not null
);

CREATE TABLE ENTREGA_EPI
(
	id_entegaEPI int PRIMARY KEY NOT NULL,
	data_entega varchar(10) not null,
	idColaborador int,
	idEPI int,
	CONSTRAINT fk_colaborador FOREIGN KEY
	(idColaborador) references COLABORADOR(id_colaborador),
	CONSTRAINT fk_controleEPI FOREIGN KEY
	(idEPI) references CONTROLE_EPI(id_EPI)
);

select * from DEPARTAMENTO
select * from COLABORADOR
select * from CONTROLE_EPI
select * from ENTREGA_EPI

INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (1, 'RECURSOS HUMANOS', true);
INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (2, 'FINANCEIRO', true);
INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (3, 'SEGURANÇA', true);
INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (4, 'SUPORTE', true);
INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (5, 'GERENTE', true);
INSERT INTO DEPARTAMENTO (id_departamento, nome, ativo)
	 VALUES (6, 'RECEPÇÃO', true); 
 



INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (1,'Diego Hellstrom','111.111.111.11','25/10/1997','07/05/2021',1);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (2,'Ana Claudia Scheffer','222.222.222-22','31/03/1998','02/09/2020',2);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (3,'Jessica Possenti','333.333.333-33','18/08/1997','04/12/2021',3);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (4,'Gabriele Rosa','444.444.444-44','25/02/1999','03/01/2018',4);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (5,'Nicole Nascimento','555.555.555-55','06/11/1999','08/08/2021',5);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (6,'Gustavo Borges','666.666.666-66','21/06/1999','04/05/2020',6);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (7,'Mateus Martins','777.777.777-77','08/09/2003','07/06/2021',4);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (8,'Anna Pontes','888.888.888-88','14/04/2002','05/05/2017',1);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (9,'Laura Tofolo','999.999.999-99','14/08/2002','07/07/2018',2);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (10,'Chantal Carnevalli','123.456.789-00','25/03/2002','03/11/2021',4);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (11,'Gabriele Scheffer','987.654.321-00','16/01/2001','02/09/2019',4);
INSERT INTO COLABORADOR (id_colaborador, nome, cpf, data_nascimento, data_admissao, idDepartamento)
	 VALUES (12,'Gustavo Nava','123.456.789-11','13/02/1994','01/04/2020',3);
