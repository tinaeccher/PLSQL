--Essa variável será verdadeiro para a minha sessão, ou seja, 
--para a conexão que está aberta no momento. 
--Mudar o conteúdo dessa variável permite que eu consiga criar usuários e 
--dar acesso a esses novos usuários ao meu ambiente Oracle.
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE

CREATE USER TINA_ECCHER IDENTIFIED BY TINA1234 DEFAULT TABLESPACE USERS;--USUÁRIO E SENHA

GRANT CONNECT, RESOURCE TO TINA_ECCHER

