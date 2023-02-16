--Na atividade onde pretend�amos obter os produtos que venderam mais que 394000 litros, executamos esta consulta abaixo
--Mas quero que na resposta desta consulta apare�a n�o somente o c�digo do produto, mas tamb�m o nome do produto. Como fazer?

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO HAVING SUM(QUANTIDADE) > 394000 
ORDER BY SUM(QUANTIDADE) DESC
SELECT INF.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO SUM(INF.QUANTIDADE) FROM TINA_TB_ITENS_NOTAS_FISCAIS INF
INNER JOIN TINA_TB_PRODUTOS P --coloca inner join para acessar a outra tabela
IN INF.CODIGO_DO_PRODUTO = TO.CODIGO_DO_PRODUTO -- coloca os campos que dever�o ser cruzados para mostrar as informa��es d select
GROUP BY INF_CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO HAVING SUM(INF_QUANTIDADE) > 394000 
ORDER BY SUM(INF_QUANTIDADE) DESC;

--Resolu��o
SELECT INF.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO,
SUM(INF.QUANTIDADE)
FROM TINA_TB_ITENS_NOTAS_FISCAIS INF
INNER JOIN TINA_TB_PRODUTOS P --coloca inner join para acessar a outra tabela
ON INF.CODIGO_DO_PRODUTO = P.CODIGO_DO_PRODUTO -- coloca os campos que dever�o ser cruzados para mostrar as informa��es d select
GROUP BY INF.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO 
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;
