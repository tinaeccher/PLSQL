---selec��o para filtrar produtos de acordo com a condi��o OR, traz registros de acordo com a condi��o verdadeira
SELECT * FROM TINA_TB_PRODUTOS P
WHERE P.SABOR = 'Manga' OR P.TAMANHO = '470 ml'

---selec��o para filtrar produtos de acordo com a condi��o OR, traz registros EXCETO a condi��o verdadeira
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' OR P.TAMANHO = '470 ml')

---selec��o para filtrar produtos de acordo com a condi��o AND, traz registros somente se as duas condi��es forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE P.SABOR = 'Manga' AND P.TAMANHO = '470 ml'

---sele��o para filtrar produtos de acordo com a condi��o AND, traz registros que n�o tem duas condi��es forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' AND P.TAMANHO = '470 ml')

---sele��o para filtrar produtos de acordo com a condi��o OR, traz registros nas condi��es forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' OR P.SABOR = 'Melancia' OR P.SABOR = 'Laranja')

---sele��o para filtrar produtos UTILIZANDO "IN", para trazer registros que cont�m aquele valor
SELECT * FROM TINA_TB_PRODUTOS P WHERE P.SABOR IN ('Manga', 'Melancia', 'Laranja');

---sele��o para filtrar produtos UTILIZANDO "IN", para trazer registros que cont�m aquele valor e naquela condi��o
SELECT * FROM TINA_TB_PRODUTOS P WHERE P.SABOR IN ('Manga', 'Melancia', 'Laranja')AND P.Tamanho = '1 Litro'

SELECT * FROM TINA_TB_CLIENTES C
WHERE C.CIDADE IN ('Rio de Janeiro', 'Sao Paulo') and (IDADE bETWEEN 20 and 22)

