-- FAZER INNER JOIN PARA INSERIR A COMBINAÇÃO DAS INFORMAÇÕES ENTRE COLUNAS COMUNS
-- SELECIONANDO OS MESMO VALORES DESSA COLUNAS - Chaves estrangeiras

SELECT TINA_TB_CLIENTES.CIDADE, 
       TINA_TB_CLIENTES.ESTADO,
       TINA_TB_MOVIMENTOS.DATA,
       TINA_TB_MOVIMENTOS.VALOR_VENDA
FROM TINA_TB_CLIENTES
INNER JOIN TINA_TB_MOVIMENTOS ON TINA_TB_CLIENTE.CLIENTE = TINA_TB_MOVIMENTOS.CLIENTE -- chave estrangeira ligando o campo cliente

--COLOCANDO ALIAS NAS TABELAS PARA SIMPLIFICAR
SELECT C.CIDADE, 
       C.ESTADO,
       C.DATA,
       C.VALOR_VENDA
FROM TINA_TB_CLIENTES C
INNER JOIN TINA_TB_MOVIMENTOS M 
ON TINA_TB_CLIENTE.CLIENTE = M.CLIENTE



-- EXERCICIO
-- SABER O NUMERO DE NOTAS FISCAIS POR VENDEDOR

SELECT * FROM TINA_TB_VENDEDORES

SELECT * FROM TINA_TB_NOTAS_FISCAIS

SELECT MATRICULA, 
COUNT(*) AS NUMERO_DE_NOTAS --informa o numero de linhas da tabela de acordo com o campo
FROM TINA_TB_NOTAS_FISCAIS 
GROUP BY MATRICULA

--mostrar os vendedores e matrícula
SELECT NF.MATRICULA,
       V.NOME 
FROM TINA_TB_VENDEDORES V
INNER JOIN TINA_TB_NOTAS_FISCAIS NF
ON NF.MATRICULA = V.MATRICULA
GROUP BY NF.MATRICULA, V.NOME;


--RESOLUÇÃO - mostra o numero de notas por vendedores
       
SELECT NF.MATRICULA, 
       TV.NOME, 
COUNT(*) AS NUMERO_DE_NOTAS 
FROM TINA_TB_VENDEDORES TV 
INNER JOIN TINA_TB_NOTAS_FISCAIS NF 
ON NF.MATRICULA = TV.MATRICULA 
GROUP BY NF.MATRICULA, TV.NOME;



