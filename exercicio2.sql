CREATE DATABASE bancodeteste;
use bancodeteste;
CREATE TABLE colaboradores(
codigo int AUTO_INCREMENT,
nome varchar(30) NOT NULL,
email varchar(50),
sexo varchar(30),
idade int ,
salario DECIMAL(10,2),
PRIMARY KEY (codigo)
);

desc colaboradores;

INSERT INTO colaboradores( nome, email, sexo, idade, salario) VALUES ("Ricardo",
"ricoarrigoni@gmail.com", "masculino", 22, 1000.00 ) ;
INSERT INTO colaboradores( nome, email, sexo, idade, salario) VALUES ( "João",
"joao@gmail.com", "masculino", 35, 1670.00) ;
INSERT INTO colaboradores( nome, email, sexo, idade, salario) VALUES ( "Maria",
"maria@gmail.com", "feminino", 33, 2100.00) ;
INSERT INTO colaboradores( nome, email, sexo, idade, salario) VALUES ( "Pedro",
"pedro@gmail.com", "masculino", 25 ,2400.00) ;
INSERT INTO colaboradores( nome, email, sexo, idade, salario) VALUES ( "Jorge",
"jorge@gmail.com", "masculino", 20, 2150.00) ;

SET SQL_SAFE_UPDATES = 1;

UPDATE colaboradores SET salario = 1200 WHERE codigo = 2;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;