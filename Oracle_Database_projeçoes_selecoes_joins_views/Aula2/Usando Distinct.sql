-- Ao incluir DISTINCT + CAMPO n�o ser� mostrado dois registros iguais
-- Mostra apenas o campo com os valores diferentes em tela

SELECT EMBALAGEM FROM TINA_TB_PRODUTOS -- BUSCA TODAS AS EMBALAGENS DOS PRODUTOS

SELECT DISTINCT EMBALAGEM FROM TINA_TB_PRODUTOS WHERE SABOR = 'Maca' -- mostram os produtos que tem a embalagem com saber ma��

SELECT DISTINCT EMBALAGEM, SABOR FROM TINA_TB_PRODUTOS WHERE SABOR = 'Maca' -- mostram a embalagem dos produtos que tem o sabor ma��
