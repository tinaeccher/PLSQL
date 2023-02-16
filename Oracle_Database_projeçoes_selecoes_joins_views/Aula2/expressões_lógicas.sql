---selecção para filtrar produtos de acordo com a condição OR, traz registros de acordo com a condição verdadeira
SELECT * FROM TINA_TB_PRODUTOS P
WHERE P.SABOR = 'Manga' OR P.TAMANHO = '470 ml'

---selecção para filtrar produtos de acordo com a condição OR, traz registros EXCETO a condição verdadeira
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' OR P.TAMANHO = '470 ml')

---selecção para filtrar produtos de acordo com a condição AND, traz registros somente se as duas condições forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE P.SABOR = 'Manga' AND P.TAMANHO = '470 ml'

---seleção para filtrar produtos de acordo com a condição AND, traz registros que não tem duas condições forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' AND P.TAMANHO = '470 ml')

---seleção para filtrar produtos de acordo com a condição OR, traz registros nas condições forem verdadeiras
SELECT * FROM TINA_TB_PRODUTOS P
WHERE NOT (P.SABOR = 'Manga' OR P.SABOR = 'Melancia' OR P.SABOR = 'Laranja')

---seleção para filtrar produtos UTILIZANDO "IN", para trazer registros que contém aquele valor
SELECT * FROM TINA_TB_PRODUTOS P WHERE P.SABOR IN ('Manga', 'Melancia', 'Laranja');

---seleção para filtrar produtos UTILIZANDO "IN", para trazer registros que contém aquele valor e naquela condição
SELECT * FROM TINA_TB_PRODUTOS P WHERE P.SABOR IN ('Manga', 'Melancia', 'Laranja')AND P.Tamanho = '1 Litro'

SELECT * FROM TINA_TB_CLIENTES C
WHERE C.CIDADE IN ('Rio de Janeiro', 'Sao Paulo') and (IDADE bETWEEN 20 and 22)

