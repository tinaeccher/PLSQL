SELECT TC.BAIRRO
FROM TINA_TB_CLIENTES TC
UNION
SELECT TV.BAIRRO
FROM TINA_TB_VENDEDORES TV


SELECT DISTINCT TC.BAIRRO
FROM TINA_TB_CLIENTES TC
UNION 
SELECT DISTINCT TV.BAIRRO
FROM TINA_TB_VENDEDORES TV


SELECT DISTINCT TC.BAIRRO, 'CLIENTE' AS ORIGEM
FROM TINA_TB_CLIENTES TC
UNION ALL
SELECT DISTINCT TV.BAIRRO,'FORNECEDOR' AS ORIGEM  
FROM TINA_TB_VENDEDORES TV

SELECT BAIRRO, 'CLIENTE' AS ORIGEM FROM TINA_TB_CLIENTES
UNION ALL --TRAZ TODOS OS REGISTROS
SELECT BAIRRO, 'FORNECEDOR' AS ORIGEM  FROM TINA_TB_VENDEDORES

--MOSTRA OS CLIENTES QUE TEM NO MESMO BAIRRO DA SEDE DE VENDEDORES
--SELECIONA CLIENTES ONDE O BAIRRO SEJA O MESMO BAIRRO DOS VENDEDORES
SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN 
(SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);


