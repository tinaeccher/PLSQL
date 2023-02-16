CREATE TABLE TINA_TB_SEGMERCADO
(
ID NUMBER(5)
,DESCRICAO VARCHAR2(100)
);

--ALTERA A TABELA TINA_TB_CLIENTES
--CREATE TABLE TINA_TB_CLIENTE
(
ID NUMBER(5)
,RAZAO_SOCIAL VARCHAR2(100)
,CNPJ VARCHAR2(20)
,SEGMERCADO_ID NUMBER(5)
,DATA_INCLUSAO DATE
,FATURAMENTO_PREVISTO NUMBER(10,2)
,CATEGORIA VARCHAR2(20)
);


ALTER TABLE TINA_TB_SEGMERCADO ADD CONSTRAINT SEGMERCACO_ID_PK
PRIMARY KEY (ID);

ALTER TABLE TINA_TB_CLIENTE ADD CONSTRAINT CLIENTE_ID_PK
PRIMARY KEY (ID);

ALTER TABLE TINA_TB_CLIENTE ADD CONSTRAINT CLIENTE_SEGMERCADO_ID
FOREIGN KEY (SEGMERCADO_ID) REFERENCES SEGMERCADO (ID);
