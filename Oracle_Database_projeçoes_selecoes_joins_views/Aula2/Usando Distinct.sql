-- Ao incluir DISTINCT + CAMPO não será mostrado dois registros iguais
-- Mostra apenas o campo com os valores diferentes em tela

SELECT EMBALAGEM FROM TINA_TB_PRODUTOS -- BUSCA TODAS AS EMBALAGENS DOS PRODUTOS

SELECT DISTINCT EMBALAGEM FROM TINA_TB_PRODUTOS WHERE SABOR = 'Maca' -- mostram os produtos que tem a embalagem com saber maçã

SELECT DISTINCT EMBALAGEM, SABOR FROM TINA_TB_PRODUTOS WHERE SABOR = 'Maca' -- mostram a embalagem dos produtos que tem o sabor maçã
