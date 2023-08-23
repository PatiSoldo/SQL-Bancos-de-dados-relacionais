CREATE DATABASE db_empresa;
USE db_empresa;


CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar(200) not null,
idade int,
data_contratacao varchar(20) not null,
cargo varchar (130) not null,
salario decimal not null,
primary key (id)
);

INSERT INTO tb_funcionarios(nome,idade,data_contratacao,cargo,salario) values ("Paulo Oliveira",28,"23/08/2019","Auxiliar Administrativo",1700.00);
INSERT INTO tb_funcionarios(nome,idade,data_contratacao,cargo,salario) values ("Gabriela Martins",32,"07/02/2021","Desenvolvedora Junior",3800.00);
INSERT INTO tb_funcionarios(nome,idade,data_contratacao,cargo,salario) values ("Maria de Lourdes",45,"12/10/2016","Cozinheira",1400.00);
INSERT INTO tb_funcionarios(nome,idade,data_contratacao,cargo,salario) values ("Francisco Alves",49,"13/04/2015","Gerente de Produtos",4200.00);
INSERT INTO tb_funcionarios(nome,idade,data_contratacao,cargo,salario) values ("Alessandra Gonçalves",34,"07/07/2022","Analista Financeiro",2500.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario >2000.00;
SELECT * FROM tb_funcionarios WHERE salario <2000.00;

UPDATE tb_funcionarios SET salario=2100.00 WHERE id=1;