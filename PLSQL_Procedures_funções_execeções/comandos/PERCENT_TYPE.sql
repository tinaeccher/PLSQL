DECLARE
  v_ID TINA_TB_SEGMERCADO.ID%TYPE := 3;
  v_DESCRICAO TINA_TB_SEGMERCADO.DESCRICAO%TYPE := 'ATACADO';
BEGIN
  INSERT INTO TINA_TB_SEGMERCADO (ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
  COMMIT;
END;

select * from TINA_TB_SEGMERCADO
