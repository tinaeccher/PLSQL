delete from tabela_de_produtos 
where codigo_do_produto = '1234567'


select * 
from TINA_PRODUTOS 
where substr(nome_do_produto,1,15) = �Sabor dos Alpes�

--sincronizar as tabelas usando a seguinte regra: quem manda � o conte�do da "tabela_de_produtos_fonte". 
--Se n�o existir linhas na "tabela_de_produto_fonte", elas devem ser exclu�das da tabela de "produtos". 

ALTER TABLE TINA_PRODUTOS
RENAME TO TINA_TB_PRODUTOS_FONTE

--CONSULTA OS PRODUTO DA TINA_TB_PRODUTOS COM TINA_TB_PRODUTOS_FONTE
SELECT
P.CODIGO_DO_PRODUTO AS CODIGO_PRODUTOS,
TPF.CODIGO AS COD_PROD_FONTE,
P.NOME_DO_PRODUTO AS DESCRICAO_PRODUTO,
TPF.DESCRICAO AS NOME_PROD_FONTE
FROM TINA_TB_PRODUTOS P
LEFT JOIN
TINA_TB_PRODUTOS_FONTE TPF
ON P.CODIGO_DO_PRODUTO = TPF.CODIGO

--DELETAR OS PRODUTOS DIFERENTE PARA QUE TINA_TB_PRODUTOS = TINA_TB_PRODUTOS_FONTE

DELETE FROM TINA_TB_PRODUTOS P
WHERE P.CODIGO_DO_PRODUTO IN
( SELECT
P.CODIGO_DO_PRODUTO AS CODIGO_PRODUTOS
FROM TINA_TB_PRODUTOS P
LEFT JOIN
TINA_TB_PRODUTOS_FONTE TPF
ON P.CODIGO_DO_PRODUTO = TPF.CODIGO
WHERE TPF.CODIGO IS NULL
);
