DROP DATABASE db_generation_game_online;
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
nome varchar(50) not null,
descricao varchar(200) not null,
primary key (id)
);

INSERT INTO tb_classes(nome,descricao) values("Guerreiro","Personagens focados em combate corpo a corpo.");
INSERT INTO tb_classes(nome,descricao) values("Mago","Personagens que usam magia para atacar e denfender.");
INSERT INTO tb_classes(nome,descricao) values("Arqueiro","Personagens especializados em ataques à distância.");
INSERT INTO tb_classes(nome,descricao) values("Ladrão","Personagens ágeis e furtivos.");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(50) not null,
nivel int,
poder_ataque decimal not null,
poder_defesa decimal not null,
primary key (id),
classes_id bigint,
foreign key (classes_id) references tb_classes(id)
);

INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Aragon",30,2500,1800,1);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Gandalf",28,1800,2200,2);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Legolas",25,2100,1500,3);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Sombra",32,2200,"1200",4);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Galares",20,800,1000,2);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Luna",18,1700,1200,1);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Predino",21,2800,1600,3);
INSERT INTO tb_personagens(nome,nivel,poder_ataque,poder_defesa,classes_id) values ("Aligro",27,1900,700,2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque>2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT  tb_personagens.nome,tb_personagens.nivel,tb_personagens.poder_ataque,tb_personagens.poder_defesa,tb_classes.nome,tb_classes.descricao FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT  tb_personagens.nome,tb_personagens.nivel,tb_personagens.poder_ataque,tb_personagens.poder_defesa,tb_classes.nome,tb_classes.descricao FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id where tb_classes.id="mago";
 






