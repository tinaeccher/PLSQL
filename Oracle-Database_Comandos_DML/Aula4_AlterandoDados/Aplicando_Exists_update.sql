SELECT V.MATRICULA AS MATRICULA_VENDEDORES,
V.DE_FERIAS AS FERIAS_VENDEDORES
FROM TINA_TB_VENDEDORES V
WHERE EXISTS
(select 1 from TINA_TB_VENDEDORES_FONTE tvf 
where v.matricula = tvf.matricula)

UPDATE TINA_TB_VENDEDORES V
SET V.DE_FERIAS =
(
  SELECT TVF.DE_FERIAS FROM TINA_TB_VENDEDORES_FONTE TVF
  WHERE V.MATRICULA = TVF.MATRICULA )
  WHERE EXISTS
  (SELECT 1 FROM TINA_TB_VENDEDORES_FONTE TVF
   WHERE V.MATRICULA = TVF.MATRICULA )
  
