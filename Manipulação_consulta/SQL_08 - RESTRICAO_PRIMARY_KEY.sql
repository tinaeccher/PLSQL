
INSERT INTO TB_PRODUTOS (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Ver�o - 470 ml - Manga', 'Lata',
'470 ml','Manga',5.18);

SELECT * FROM TINA_TB_PRODUCT

DELETE FROM TINA_TB_PRODUCT
WHERE ID_PRODUCT = '1078680';
--ALTERA A TABELA COLOCANDO UMA RESTRI��O PARA A CHAVE PRIMARIA
--COM O TIPO DA RESTRI��O DE CHAVE PRIMARIA PAA O CAMPO PRODUTO

ALTER TABLE TINA_TB_PRODUCT ADD CONSTRAINT PK_TINA_TB_PRODUCT 
PRIMARY KEY (ID_PRODUCT); ---INSERIDO O TIPO DE RESTRICAO DE CHAVE PRIMARIA + COLUNA


ALTER TABLE T_PESSOA
ADD CONSTRAINT ck_uf
CHECK (uf IN (�RJ�,�SP�,�MG�,�ES�));

