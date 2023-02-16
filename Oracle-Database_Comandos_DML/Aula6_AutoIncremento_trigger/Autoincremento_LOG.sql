
CREATE TABLE TINA_TB_IDENTITY_PADRAO
(
ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
DESCRICAO VARCHAR(20) NOT NULL,
ENDERECO VARCHAR(100) NULL,
CIDADE VARCHAR(60) DEFAULT ON NULL 'Rio de Janeiro',
DATA_CRIACAO DATE DEFAULT ON NULL SYSDATE,
PRIMARY KEY(ID));

SELECT * FROM TINA_TB_IDENTITY_PADRAO

INSERT INTO TINA_TB_IDENTITY_PADRAO
(DESCRICAO, ENDERECO, CIDADE, DATA_CRIACAO) 
values 
('cliente 1', 'Rua do Comercio', 'Sao Paulo', to_date('2022-01-01', 'yyyy-mm-dd'));

INSERT INTO TINA_TB_IDENTITY_PADRAO
(DESCRICAO) 
values 
('cliente 2');
