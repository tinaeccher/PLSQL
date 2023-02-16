--Tabelas virtuais, que na verdade não existem, mas se comportam como tabelas. 
--São as visões, ou views. São componentes muito importantes de um banco de dados.
--CRIAMOS UMA CONSULTA PARA PODER UTILIZAR DEPOIS
--SÃO USADAS EM RELATÓRIOS

SELECT ESTADO, SUM(NUM_FUNC) FROM CLIENTE GROUP BY ESTADO

SELECT ESTADO, NUM_FUNC FROM ESTADO_FUNC WHERE NUM_FUNC >= 60.


--Quando eu resolvo a consulta de uma view ele primeiro consulta da tabela original para criar a view
-- e da view ele resolve a seleção final. 
--Fica um pouco mais lento. Mas a view é como se fossem relatórios.
SELECT SOMA_EMBALAGENS.EMBALAGEM,SOMA_EMBALAGENS.SOMA_PRECO 
FROM (SELECT EMBALAGEM,     
      SUM(PRECO_DE_LISTA) AS SOMA_PRECO 
      FROM TABELA_DE_PRODUTOS 
      GROUP BY EMBALAGEM) SOMA_EMBALAGENS 
WHERE SOMA_EMBALAGENS.SOMA_PRECO >= 60;

--Sobre a consulta que está dentro dos parênteses vou dar o seguinte comando:
--Para criar uma visão, normalmente colocamos o nome, mas na frente colocamos o prefixo VW_
CREATE VIEW VW_NOME AS --> COMANDO PARA CRIAR A VIEW COM PADRÃO DE NOME E APELIDO


--A diferença é que essa view fica criada no banco, como se fosse uma tabela e é extremamente dinâmica. 
--À medida em que a tabela tiver atualizações, essa view me dará resultados diferentes.
CREATE VIEW TINA_VIEW_SOMA_EMBALAGENS AS 
SELECT EMBALAGEM, 
SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TINA_TB_PRODUTOS
GROUP BY EMBALAGEM;

--DEPOIS DE CRIADA A VIEW É POSSIVEL UTILIZÁ-LA EM CONSULTA
SELECT * FROM TINA_TB_PRODUTOS TP 
INNER JOIN TINA_VIEW_SOMA_EMBALAGENS VW 
ON TP.EMBALAGEM = VW.EMBALAGEM 
WHERE VW.SOMA_PRECO >= 80;

991056931
