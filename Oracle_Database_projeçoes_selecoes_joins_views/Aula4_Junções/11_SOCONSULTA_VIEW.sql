--Tabelas virtuais, que na verdade n�o existem, mas se comportam como tabelas. 
--S�o as vis�es, ou views. S�o componentes muito importantes de um banco de dados.
--CRIAMOS UMA CONSULTA PARA PODER UTILIZAR DEPOIS
--S�O USADAS EM RELAT�RIOS

SELECT ESTADO, SUM(NUM_FUNC) FROM CLIENTE GROUP BY ESTADO

SELECT ESTADO, NUM_FUNC FROM ESTADO_FUNC WHERE NUM_FUNC >= 60.


--Quando eu resolvo a consulta de uma view ele primeiro consulta da tabela original para criar a view
-- e da view ele resolve a sele��o final. 
--Fica um pouco mais lento. Mas a view � como se fossem relat�rios.
SELECT SOMA_EMBALAGENS.EMBALAGEM,SOMA_EMBALAGENS.SOMA_PRECO 
FROM (SELECT EMBALAGEM,     
      SUM(PRECO_DE_LISTA) AS SOMA_PRECO 
      FROM TABELA_DE_PRODUTOS 
      GROUP BY EMBALAGEM) SOMA_EMBALAGENS 
WHERE SOMA_EMBALAGENS.SOMA_PRECO >= 60;

--Sobre a consulta que est� dentro dos par�nteses vou dar o seguinte comando:
--Para criar uma vis�o, normalmente colocamos o nome, mas na frente colocamos o prefixo VW_
CREATE VIEW VW_NOME AS --> COMANDO PARA CRIAR A VIEW COM PADR�O DE NOME E APELIDO


--A diferen�a � que essa view fica criada no banco, como se fosse uma tabela e � extremamente din�mica. 
--� medida em que a tabela tiver atualiza��es, essa view me dar� resultados diferentes.
CREATE VIEW TINA_VIEW_SOMA_EMBALAGENS AS 
SELECT EMBALAGEM, 
SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TINA_TB_PRODUTOS
GROUP BY EMBALAGEM;

--DEPOIS DE CRIADA A VIEW � POSSIVEL UTILIZ�-LA EM CONSULTA
SELECT * FROM TINA_TB_PRODUTOS TP 
INNER JOIN TINA_VIEW_SOMA_EMBALAGENS VW 
ON TP.EMBALAGEM = VW.EMBALAGEM 
WHERE VW.SOMA_PRECO >= 80;

991056931
