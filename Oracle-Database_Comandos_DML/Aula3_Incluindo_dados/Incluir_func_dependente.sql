--banco que chama de informações gerenciais, um banco para relatórios, 
--onde ele não vai ter uma entrada de dados através de uma aplicação, 
--o que você faz um processo chamado de ETL, que vem do nome de Extract Transform Load.
--extrair, transformar e carregar. 
--O processo de ETL é muito usado quando você quer popular outro banco baseado em dados 
--que estão espalhados na empresa, por exemplo, eu quero concentrar os dados em um único banco.

--Importado os arquivos
--cliente.tsv
SELECT * FROM TINA_TB_CLIENTES

--vendedores.csv
SELECT * FROM TINA_TB_VENDEDORES

--projetos.csv
select * from tina_tb_projeto

--funcionário_dependente.csv
select * from tina_tb_dependente

select * from tina_tb_funcionario

