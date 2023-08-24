CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id bigint auto_increment,
    nome VARCHAR(50) not null,
    descricao VARCHAR(200)not null,
    primary key (id)
    );
    
  INSERT INTO tb_categorias (nome,descricao) values("Salgada","Pizzas salgadas com diversos ingredientes");
  INSERT INTO tb_categorias (nome,descricao) values("Doce","Pizzas doces e saborosas");
  
  SELECT * FROM tb_categorias;
  
  CREATE TABLE tb_pizzas (
    id bigint auto_increment,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL not null,
    ingredientes varchar(200) not null,
    id_categoria bigint,
    primary key (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ("Calabresa", 40.00,"Calabresa, cebola e queijo", 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ("Margherita", 45.00, "Molho de tomate, mussarela e manjericão", 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values("Frango com Catupiry",50.00,"Frango desfiado,catupiry e milho",1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ("Chocolate com Morango",35,"Chocolate,morango e leite condensado",2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ("Banana com Canela",30,"Banana,canela e açúcar",2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ('Portuguesa',45.00,'Presunto,mussarela,ovos,cebola e azeitona',1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values ('Quatro Queijos',55.00,'Mussarela,provolone,gorgonzola e parmesão',1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) values  ('Romeu e Julieta',40.00, 'Goiabada e queijo',2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT  tb_pizzas.nome,tb_pizzas.preco,tb_pizzas.ingredientes,tb_categorias.nome,tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT  tb_pizzas.nome,tb_pizzas.preco,tb_pizzas.ingredientes,tb_categorias.nome,tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id 	WHERE tb_categorias.id="2";
