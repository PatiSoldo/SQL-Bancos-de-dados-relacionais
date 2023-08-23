CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id  bigint auto_increment,
nome varchar(130) not null,
idade int,
genero varchar(20) not null,
nota decimal not null,
ano_escolar varchar(50) not null,
primary key (id)
);

INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Bernardo",12,"Masculino", 9.0, "9°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Julia",10,"Feminino", 5.0, "7°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Marcos",8,"Masculino", 7.0, "5°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Larissa",7,"Feminino",10.0, "1°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Gabriel",11,"Masculino", 8.0, "8°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Arthur",12,"Masculino", 6.0, "9°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Clarisse",10,"Feminino", 8.0, "7°série");
INSERT INTO tb_estudantes(nome,idade,genero,nota,ano_escolar) values ("Adriano",9,"Masculino", 10.0, "8°série");

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota>7.0;
SELECT * FROM tb_estudantes WHERE nota<7.0;

UPDATE tb_estudantes SET nota=6.00 WHERE id=2;
