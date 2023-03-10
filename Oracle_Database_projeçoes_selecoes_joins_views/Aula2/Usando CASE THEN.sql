--CLASSIFICA??O DOS CAMPOS DE FUNCION?RIOS POR CLIENTE
--todo cliente que tem mais de 20 funcion?rios ? um grande cliente. Sen?o, ele ser? um pequeno cliente
SELECT CLIENTE 
       (CASE 
        WHEN NUM_FUNC >= 20 -- QUANDO NUMERO DE FUNCIONARIOS ? MAIOR QUE 20
        THEN ?GRANDE?  -- ENT?O ? UM GRANDE CLIENTE
        ELSE ?PEQUENO? -- SENAO ? UM PEQUENO CLIENTE
        END) 
FROM CLIENTE

-- seguinte crit?rio de classifica??o: 
--os produtos caros s?o aqueles que custam mais do que 12 unidades monet?rias. 
-- Os produtos em conta est?o entre 7 e 12. 
-- E os produtos baratos s?o os que t?m um pre?o de lista menor do que 7.

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA, -- SELECIONA OS CAMPOS 
       (CASE 
       WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO' -- QUANDO PRECO FOR MAIOR QUE 12 CLASSIFICA COMO CARO
       WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' -- QUANDO PRECO FOR MENO QUE 7 R MAIOR QUE 12 CLASSIFICA COMO EM CONTA
       ELSE 'PRODUTO BARATO' --SEN?O CLASSIFICA COMO PRODUTO_BARATO
       END) AS CLASSIFICACAO -- ALIAS PARA AS CONDI??ES
FROM TINA_TB_PRODUTOS
ORDER BY CLASSIFICACAO --ORDENADO PELA ALIAS

--EXERCICIO
--Para cada cliente, temos seus limites de cr?dito mensais. Liste somente os nomes dos clientes e os classifique por:
--Acima ou igual a 150.000 de limite de cr?dito - Clientes grandes
--Entre 150.000 e 110.000 de limite de cr?dito - Clientes m?dios
--Menores que 110.000 de limite de cr?dito - Clientes pequenos

SELECT * FROM TINA_TB_CLIENTES

SELECT NOME,
(CASE 
      WHEN LIMITE_DE_CREDITO >= 150000 THEN 'CLIENTE GRANDE'
      WHEN LIMITE_DE_CREDITO >= 110000 AND LIMITE_DE_CREDITO < 150000 THEN 'CLIENTE MEDIO'
      ELSE 'CLIENTE PEQUENO'
      END) AS TAMANHO_CLIENTE 
FROM TINA_TB_CLIENTES
ORDER BY TAMANHO_CLIENTE 
           
