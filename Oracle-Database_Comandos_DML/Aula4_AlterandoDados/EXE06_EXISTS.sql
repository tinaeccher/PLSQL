--Dentre alternativas, qual representa um comenta que lista o 
--nome dos funcionários que possuem dependentes, usando apenas o comando EXISTS

SELECT DISTINCT TF.NOME_FUNCIONARIO
FROM TAB_FUNCIONARIO TF
WHERE EXISTS
(SELECT 1 FROM TAB_DEPENDENTE TD
WHERE TF.COD_FUNCIONARIO = TD.COD_FUNCIONARIO);
