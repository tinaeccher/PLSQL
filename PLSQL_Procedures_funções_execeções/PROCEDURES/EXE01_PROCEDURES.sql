BEGIN
  TINA_PRC_INCLUINDO_PRODUTOS('33854','Frescor da Montanha - 1 Litro','PET','1 LITRO','LARANJA',10);
END;
BEGIN
  TINA_PRC_INCLUINDO_PRODUTOS('89254','Frescor da Montanha - Aroma Uva - 1 Litro','PET','1 LITRO','UVA',10);
END;

BEGIN
  TINA_PRC_ALTERA_PRODUTOS('33854','Frescor da Montanha - Aroma Laranja - 1 Litro');
END;

BEGIN
  TINA_PRC_EXCLUINDO_PRODUTO('89254');
END;

SELECT * FROM TINA_TB_PRODUTOS
