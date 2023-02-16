---INCLUSAO DE SEGMENTO
DECLARE
  v_ID TINA_TB_SEGMERCADO.ID%TYPE := 5;
  v_DESCRICAO TINA_TB_SEGMERCADO.DESCRICAO%TYPE := 'Esportistas';
BEGIN
  INSERT INTO TINA_TB_SEGMERCADO (ID, DESCRICAO) VALUES (v_ID, UPPER(v_DESCRICAO));
  COMMIT;
END;

select * from TINA_TB_SEGMERCADO

---ALTERACAO DE SEGMENTO
DECLARE
  v_ID TINA_TB_SEGMERCADO.ID%TYPE := 3;
  v_DESCRICAO TINA_TB_SEGMERCADO.DESCRICAO%TYPE := 'Atacadista';
BEGIN
  UPDATE TINA_TB_SEGMERCADO SET DESCRICAO = UPPER(v_DESCRICAO) WHERE ID = v_ID;
  COMMIT;
END;

--EXCLUSAO DE SEGMENTO
DECLARE
  v_ID TINA_TB_SEGMERCADO.ID%TYPE := 5;
BEGIN
  DELETE FROM TINA_TB_SEGMERCADO WHERE ID = v_ID;
  COMMIT;
END;
