CREATE DATABASE aula01;

USE aula01;

CREATE TABLE produtos(
	nome VARCHAR(30),
    valor FLOAT
);

ALTER TABLE produtos
ADD estoque INT
AFTER nome;

ALTER TABLE produtos
DROP COLUMN estoque;

ALTER TABLE produtos
RENAME TO celulares;

DROP TABLE celulares;

DESCRIBE celulares;

truncate table celulares;

INSERT INTO celulares VALUES ("Galaxy S20", 5000);

INSERT INTO celulares (nome) VALUES ("Galaxy A30");

INSERT INTO celulares VALUES
("LG K12", 1400),
("iPhone 11", 4000),
("Galaxy J5", 1500),
("Xiaomi NOte 9", 2100),
("iPhone 11 Pro Max", 8600);

SELECT * FROM celulares;

SELECT nome FROM celulares;

SELECT COUNT(*) as "Quantidade" FROM celulares;

SELECT SUM(valor) as "Soma dos valores" FROM celulares;

SELECT AVG(valor) as "Média dos valores" FROM celulares;

SELECT MAX(valor) as "Maior valor" FROM celulares;

SELECT MIN(valor) as "Menor valor" FROM celulares;

SELECT * FROM celulares ORDER BY valor;

SELECT * FROM celulares ORDER BY valor ASC;

SELECT * FROM celulares ORDER BY valor DESC;

SELECT * FROM celulares WHERE valor >= 2000;

SELECT * FROM celulares WHERE nome LIKE "g%";

SELECT * FROM celulares WHERE nome LIKE "%0";

SELECT * FROM celulares WHERE nome LIKE "%i%";

SELECT * FROM celulares WHERE nome LIKE "%galaxy%" AND valor <= 2000;

SELECT * FROM celulares WHERE valor IS NULL;

SELECT * FROM celulares WHERE valor IS NOT NULL;

SET SQL_SAFE_UPDATES = 0;

UPDATE celulares  SET valor = 1700 WHERE  valor IS NULL;


DELETE FROM celulares WHERE nome LIKE "%galaxy%";

DROP DATABASE aula01;