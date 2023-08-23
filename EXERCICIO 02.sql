DROP db_ecommerce;
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(100)not null,
descricao varchar(130)not null,
preco decimal not null,
categoria varchar (50)not null,
estoque int,
primary key (id)
);

INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Celular","Iphone 13",6700.00,"Eletrônicos",30);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Fone","Fone de ouvido sem fio",299.00,"Eletrônicos",15);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Tênis Air Jordan","Edição Limitada",1200.00,"Roupas",17);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Relógio","Relógio a prova d'água original",740.00,"Acessórios",26);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Óculos de sol","Óculos de sol Chilli Beans",149.90,"Acessórios",50);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Boné","Boné New era",99.90,"Acessórios",25);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Perfume","Perfume Carolina Herrera Citrico",690.00,"Cosmésticos",20);
INSERT INTO tb_produtos(nome,descricao,preco,categoria,estoque) values ("Smartwatch","Smartwatch Xiaomi Multifuncional",350.00,"Eletrônicos",30);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco>500.00;
SELECT * FROM tb_produtos WHERE preco<500.00;

UPDATE tb_produtos SET estoque=50 WHERE id=6;

