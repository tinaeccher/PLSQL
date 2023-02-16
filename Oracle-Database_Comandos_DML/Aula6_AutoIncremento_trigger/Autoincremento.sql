--IDENTITY - NUMERO INTEIRO CRESCENTE
-- Se o campo n�o estiver no comando INSERT, 
--o valor que ser� inclu�do ser� o padr�o definido na cria��o da tabela.
--O campo estar� preenchido com o seu padr�o, caso ele n�o seja declarado no INSERT.
--Um campo de Identity por tabela
--for�ar o valor do autoincremento no Insert

CREATE TABLE TINA_TB_IDENTITY
(
ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
DESCRICAO VARCHAR(20),
PRIMARY KEY(ID));


-- GENERATED BY DEFAULT ON NULL AS IDENTITY - gerar o campo Identity como padr�o
SELECT * FROM TINA_TB_IDENTITY

INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 1') --Qndo inserir o cliente ser� atribu�do o numero 1

INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 2')

INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 3')

DELETE FROM TINA_TB_IDENTITY WHERE ID = 2

INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 4')

DELETE FROM TINA_TB_IDENTITY WHERE ID = 4

INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 5')

SELECT * FROM TINA_TB_IDENTITY
--ao incluir o registro for�ando o ID 7, a sequencia � quebrada
INSERT INTO TINA_TB_IDENTITY (ID,DESCRICAO) VALUES (7,'CLIENTE 7')

SELECT * FROM TINA_TB_IDENTITY

--Ao incluir um novo registro, ocorrer� erro de restri��o, por que o id 7 foi inserido manualmente.
--se fazer a inser��o novamente pula o id para o pr�ximo da �ltima inclus�o.
INSERT INTO TINA_TB_IDENTITY (DESCRICAO) VALUES ('CLIENTE 6')
