
SELECT * FROM TINA_TB_CLIENTES;

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO = '07/10/95';

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO = TO_DATE('07/10/1995','DD/MM/YYYY');

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO > TO_DATE('07/10/1995','DD/MM/YYYY');

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO < TO_DATE('07/10/1995','DD/MM/YYYY');

SELECT * FROM TINA_TB_CLIENTES WHERE TO_CHAR(DATA_NASCIMENTO,'MM') = 9

SELECT TO_CHAR(DATA_NASCIMENTO, 'MM') FROM TINA_TB_CLIENTES
