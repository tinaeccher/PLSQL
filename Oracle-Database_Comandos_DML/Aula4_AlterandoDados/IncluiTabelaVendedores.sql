  CREATE TABLE "TABELA_DE_VENDEDORES_FONTE" 
   ("MATRICULA" NVARCHAR2(5), 
	"NOME" NVARCHAR2(100), 
	"PERCENTUAL_COMISSAO" FLOAT(126), 
	"DATA_ADMISSAO" DATE, 
	"DE_FERIAS" NUMBER(1,0), 
	"BAIRRO" NVARCHAR2(50)
   );

Insert into TABELA_DE_VENDEDORES_FONTE (MATRICULA,NOME,PERCENTUAL_COMISSAO,DATA_ADMISSAO,DE_FERIAS,BAIRRO) values ('00235','Marcio Almeida Silva','0,08',to_date('15/08/14','DD/MM/RR'),'0','Tijuca');
Insert into TABELA_DE_VENDEDORES_FONTE (MATRICULA,NOME,PERCENTUAL_COMISSAO,DATA_ADMISSAO,DE_FERIAS,BAIRRO) values ('00236','Claudia Morais','0,08',to_date('17/09/13','DD/MM/RR'),'1','Jardins');
Insert into TABELA_DE_VENDEDORES_FONTE (MATRICULA,NOME,PERCENTUAL_COMISSAO,DATA_ADMISSAO,DE_FERIAS,BAIRRO) values ('00237','Roberta Martins','0,11',to_date('18/03/17','DD/MM/RR'),'1','Copacabana');
Insert into TABELA_DE_VENDEDORES_FONTE (MATRICULA,NOME,PERCENTUAL_COMISSAO,DATA_ADMISSAO,DE_FERIAS,BAIRRO) values ('00238','Pericles Alves','0,11',to_date('21/08/16','DD/MM/RR'),'0','Santo Amaro');
