
--EXERCICIO
--Complemente este relat�rio, listando somente os que tiveram vendas inv�lidas 
--Calculando a diferen�a entre o limite de venda m�ximo e o realizado, em percentuais.
SELECT
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS V�LIDAS'
ELSE 'VENDAS INV�LIDAS' END) AS RESULTADO,
ROUND((1 - (TC.VOLUME_DE_COMPRA/TV.QUANTIDADE_TOTAL)) * 100,2) -- mostra somente os clientes com limites estourados
FROM TINA_TB_CLIENTES TC
INNER JOIN
(SELECT
NF.CPF,
TO_CHAR(NF.DATA_VENDA,'MM-YYYY') AS MES_ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM
TINA_TB_NOTAS_FISCAIS NF
INNER JOIN
TINA_TB_ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
CPF, TO_CHAR(NF.DATA_VENDA,'MM-YYYY')) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '02-2015'
AND (TC.VOLUME_DE_COMPRA - TV.QUANTIDADE_TOTAL) < 0
