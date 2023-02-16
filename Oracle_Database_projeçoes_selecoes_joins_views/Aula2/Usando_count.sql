-- COUNT(CAMPO) INDICA A QUANTIDADE DE LINHAS COM REGISTRO NA TABELA 

SELECT 
COUNT(CAMPO)
FROM <Nome da Tabela>
WHERE <Filtro>

--RETORNOU TODOS OS CAMPOS COM 31 LINHAS ORDENADAS DE FORMA CRESCENTE
SELECT * FROM TINA_TB_PRODUTOS P
ORDER BY P.NOME_DO_PRODUTO ASC -- DO MENOR PARA O MAIOR

--RETORNA TODOS OS REGISTROS DA TABELA DE PRODUTOS QUE TEM O CAMPO NOME PREENCHIDO
select count(NOME_DO_PRODUTO) from TINA_TB_PRODUTOS; 

--RETORNA TODOS OS REGISTROS DA TABELA DE PRODUTOS QUE TEM O CAMPO ID PREENCHIDO
select count(id) from Produtos; 

select *
from TINA_TB_PRODUTOS P
where P.NOME_DO_PRODUTO is not null; 


--RETORNA 29 REGISTROS DA TABELA DE PRODUTOS QUE TEM O CAMPO SABOR PREENCHIDO
select count(SABOR) 
from TINA_TB_PRODUTOS
WHERE SABOR = 'MANGA'

SELECT * FROM TINA_TB_PRODUTOS 
WHERE SABOR IS NULL 


--RETORNA SABOR NULL = 0
SELECT 
COUNT(SABOR) 
FROM TINA_TB_PRODUTOS 
WHERE SABOR IS NULL 


-- CONTA TODOS OS REGISTROS DA TABELA
SELECT 
COUNT(*) 
FROM TINA_TB_PRODUTOS; 


-- count(algum_campo) pois voc� teria certeza que nunca seria nulo
select count(1) from TINA_TB_PRODUTOS;

--ALTERA TODOS O SABOR DA TABELA DE PRODUTOS PARA NULL
UPDATE TINA_TB_PRODUTOS
SET SABOR = NULL 
WHERE CODIGO_DO_PRODUTO =  1078680


--ALTERA TODOS OS CAMPOS DA TABELA PARA NULL
alter table TINA_TB_PRODUTOS
modify column empresa 
  varchar(200) default '' not null;
