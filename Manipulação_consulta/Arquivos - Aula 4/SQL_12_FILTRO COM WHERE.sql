
-- TANTO NA CONSULTA COMO NO UPDATE O WHERE FUNCIONA COMO UM FILTRO, PARA SER MOSTRADO APENAS NAQUELE VALOR ESPEC?FICO
-- WHERE USADO EM UPDATE, DELETE E SELECT S?O FUNDAMENTAIS

SELECT * FROM TINA_TB_PRODUTOS P
WHERE P.PRODUTO LIKE '10%'
AND SABOR = 'Lim?o'

UPDATE TINA_TB_PRODUTOS
SET SABOR = 'C?tricos'
WHERE SABOR = 'Lim?o'
