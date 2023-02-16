--Refaça esse script, incluindo o segundo produto:
-- COD: 32223 -   DESCRICAO: Sabor de Verão - Uva - 1 Litro -   CATEGORIA: Sucos de Frutas

DECLARE
   v_COD produto_exercicio.cod%type := '32223';
   v_DESCRICAO produto_exercicio.descricao%type := 'Sabor de Verão - Uva - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Sucos de Frutas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, v_DESCRICAO, v_CATEGORIA);
   COMMIT;
END;

--EXERCÍCIO APLICADO NA TABELA DE PRODUTOS
DECLARE 
  v_CODIGO TINA_TB_PRODUTOS.codigo_do_produto%TYPE := '32223';
  v_NOME TINA_TB_PRODUTOS.nome_do_produto%TYPE := 'SABOR DE VERAO - LARANJA - 1 LITRO';
  v_EMBALAGEM TINA_TB_PRODUTOS.EMBALAGEM%TYPE := 'PET';
  v_TAMANHO TINA_TB_PRODUTOS.TAMANHO%TYPE := '1 LITRO';
  v_SABOR TINA_TB_PRODUTOS.SABOR%TYPE := 'LARANJA';
  v_PRECO TINA_TB_PRODUTOS.PRECO_DE_LISTA%TYPE := 10;
BEGIN
  INSERT INTO TINA_TB_PRODUTOS
  (codigo_do_produto, nome_do_produto, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA) 
  VALUES 
  (v_CODIGO, v_NOME, v_EMBALAGEM, v_TAMANHO, v_SABOR, v_PRECO);
  COMMIT;
END;

SELECT * FROM TINA_TB_PRODUTOS
