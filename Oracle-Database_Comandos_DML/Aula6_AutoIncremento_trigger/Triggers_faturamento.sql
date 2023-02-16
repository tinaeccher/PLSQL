--INSERE A NOTA
INSERT INTO TINA_TB_NOTAS_FISCAIS (NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('004', to_date('2022-01-02', 'yyyy-mm-dd'), '1471156710', '00235', 0.10);

--INSERE O ITEM
INSERT INTO TINA_TB_ITENS_NOTAS_FISCAIS (NUMERO, CODIGO_DO_PRODUTO, QUANTIDADE, PRECO) 
VALUES ('004','1000889',18,21.10);

--DEPOIS DE INCLUIR O ITEM 004 DEVERÁ DELETAR A TABELA
--ATUALIZAR AS INFORMAÇÕES
DELETE FROM TINA_TB_FATURAMENTO;
INSERT INTO TINA_TB_FATURAMENTO
(SELECT nf.data_venda, 
  SUM(itn.quantidade * itn.preco) AS faturamento 
  FROM TINA_TB_NOTAS_FISCAIS nf 
  INNER JOIN TINA_TB_ITENS_NOTAS_FISCAIS itn 
  ON nf.numero = itn.numero 
  GROUP BY nf.data_venda);

CREATE TRIGGER TG_TINA_TB_FATURAMENTO
AFTER INSERT ON TINA_TB_ITENS_NOTAS_FISCAIS
BEGIN
 DELETE FROM TINA_TB_FATURAMENTO;
 INSERT INTO TINA_TB_FATURAMENTO
  (SELECT nf.data_venda, 
   SUM(itn.quantidade * itn.preco) AS faturamento 
   FROM TINA_TB_NOTAS_FISCAIS nf 
   INNER JOIN TINA_TB_ITENS_NOTAS_FISCAIS itn 
   ON nf.numero = itn.numero 
   GROUP BY nf.data_venda);
END;

--INSERE A NOTA 5
INSERT INTO TINA_TB_NOTAS_FISCAIS (NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('006', to_date('2023-01-03', 'yyyy-mm-dd'), '1471156710', '00235', 0.10);

INSERT INTO TINA_TB_ITENS_NOTAS_FISCAIS (NUMERO, CODIGO_DO_PRODUTO, QUANTIDADE, PRECO) 
VALUES ('006','1000889',40,10);

--nota foi inserida e atualizado o faturamento
SELECT * FROM TINA_TB_FATURAMENTO
WHERE DATA_VENDA >= TO_DATE('2023-01-01', 'yyyy-mm-dd')


-----------------

--Porém a trigger não altera\atualiza ou deleta as notas

update TINA_TB_ITENS_NOTAS_FISCAIS 
set quantidade = 1000 
where numero = '005';


delete from itens_notas where numero = '005'
delete from notas where numero = '005';

--Ao fazer isso eu estou mudando a trigger para que ela seja rodada, 
--que ela seja executada os comandos que estão entre o begin e end 
--não somente quando eu for incluir dados na tabela, mas quando eu for alterar e excluir.
CREATE OR REPLACE TRIGGER TG_TINA_TB_FATURAMENTO
AFTER INSERT OR REPLACE OR DELETE ON TINA_TB_ITENS_NOTAS_FISCAIS
BEGIN
 DELETE FROM TINA_TB_FATURAMENTO;
 INSERT INTO TINA_TB_FATURAMENTO
  (SELECT nf.data_venda, 
   SUM(itn.quantidade * itn.preco) AS faturamento 
   FROM TINA_TB_NOTAS_FISCAIS nf 
   INNER JOIN TINA_TB_ITENS_NOTAS_FISCAIS itn 
   ON nf.numero = itn.numero 
   GROUP BY nf.data_venda);
END;



--INSERE A NOTA 7
INSERT INTO TINA_TB_NOTAS_FISCAIS (NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('007', to_date('2023-01-03', 'yyyy-mm-dd'), '1471156710', '00235', 0.10);

INSERT INTO TINA_TB_ITENS_NOTAS_FISCAIS (NUMERO, CODIGO_DO_PRODUTO, QUANTIDADE, PRECO) 
VALUES ('007','1000889',40,10);

--nota foi inserida e atualizado o faturamento
SELECT * FROM TINA_TB_FATURAMENTO
WHERE DATA_VENDA >= TO_DATE('2023-01-01', 'yyyy-mm-dd')


-----------------
