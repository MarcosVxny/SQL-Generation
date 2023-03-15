CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
arma varchar(255),
primary key (id)
);

INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Feiticerio", "Bola de Fogo", "Cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Arqueiro", "Chuva de Flechas", "Arco e Flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Lendario", "Desconhecida", "Desconhecida");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Guerreiro", "Escudo", "Espada");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Curandeiro", "Ressureição", "Gaze");

SELECT * FROM tb_classes;
SELECT nome, habilidade, arma FROM tb_classes;


CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(100),
nivel int, 
ataque int, 
defesa int, 
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classes(id)
);


INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mago", 100, 300, 100, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Princesa", 100, 3000, 2800, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mago de Gelo", 100, 2000, 2000, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Barbaro", 10, 1000, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Cavaleiro", 1000, 1300, 1110, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Spooky", 500, 2300, 3000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Curinha", 400, 1800, 2200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("PequenoZ", 300, 1300, 850, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Neymar", 150, 2100, 900, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%Mago%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 2;

SELECT * FROM tb_personagens;

SELECT 
id AS Código, 
nome AS Nome_Personagem,
nivel AS Nível,
ataque AS Ataque,
defesa AS Defesa
FROM tb_personagens;

SELECT 
tb_personagens.nome AS Nome_Personagem,
tb_classes.nome AS Classe,
ataque,
defesa
habilidade,
arma    
FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;