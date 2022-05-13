-- FILTRANDO AS CONSULTAS 

SELECT * FROM MUNICIPIO 
    WHERE CD_UF_IBGE IN(42, 52)
    AND (DS_MUNICIPIO LIKE '%São%' OR DS_MUNICIPIO LIKE '%Santa%')

-- FILTRANDO PELO CD_UF_IBGE E QUE O DS_MUNICIPIO CONTENHA A PALAVRÃO 'SÃO' 
-- % = 'CONTER' 


SELECT NR_SEQUENCIA, 
       CD_MUNICIPIO_IBGE, 
       DS_MUNICIPIO, 
       CD_UF_IBGE
FROM MUNICIPIO 
     WHERE CD_UF_IBGE IN(42, 52)
     AND (DS_MUNICIPIO LIKE '%São%' OR DS_MUNICIPIO LIKE '%Santa%')
     
-- Usando o Between

SELECT * FROM MUNICIPIO
    WHERE CD_UF_IBGE 
    BETWEEN 1 AND 30 
    ORDER BY CD_UF_IBGE
     
-- Gerando uma consulta limpa sem campos nulos, somente os desejados.

--------------------------------------------------------------------------------

-- Adicionando 'alias' as colunas.

SELECT a.NR_SEQUENCIA "Sequência", 
       a.CD_MUNICIPIO_IBGE "Código Município", 
       a.DS_MUNICIPIO "Município", 
       a.CD_UF_IBGE "Código UF"
FROM MUNICIPIO a
     WHERE a.CD_UF_IBGE IN(42, 52)
     AND (a.DS_MUNICIPIO LIKE '%São%' OR a.DS_MUNICIPIO LIKE '%Santa%')
     ORDER BY NR_SEQUENCIA

     
--------------------------------------------------------------------------------


SELECT * FROM TESTE
SELECT * FROM TESTE_2

CREATE TABLE TESTE (A1 VARCHAR2(2),B2 NUMBER)
CREATE TABLE TESTE_2 (A2 VARCHAR(2), B3 NUMBER)

SELECT B2 FROM TESTE 
INNER JOIN TESTE_2
ON TESTE.B2 = TESTE_2.B3

--------------------------------------------------------------------------------
-- JOINS 
-- INNER JOIN:

SELECT * FROM PALETTE_A

SELECT * FROM PALETTE_B


CREATE TABLE PALETTE_A(
    ID INT PRIMARY KEY,
    COLOR VARCHAR2 (100)  NOT NULL)
    
CREATE TABLE PALETTE_B(
    ID INT PRIMARY KEY,
    COLOR VARCHAR2 (100)  NOT NULL
    )

SELECT 
    A.ID ID_A,
    A.COLOR ,
    B.ID ID_B,
    B.COLOR 
FROM 
    PALETTE_A A
INNER JOIN PALETTE_B B ON A.COLOR = B.COLOR

--------------------------------------------------------------------------------    
-- LEFT JOIN 

SELECT 
    A.ID ID_A, 
    A.COLOR COLOR_A,
    B.ID ID_B,
    B.COLOR COLOR_B
FROM 
    PALETTE_A A
LEFT JOIN PALETTE_B B ON A.COLOR = B.COLOR

--------------------------------------------------------------------------------
-- RIGHT JOIN

SELECT 
    A.ID ID_A, 
    A.COLOR COLOR_A,
    B.ID ID_B,
    B.COLOR COLOR_B
FROM 
    PALETTE_A A
RIGHT JOIN PALETTE_B B ON A.COLOR = B.COLOR

--------------------------------------------------------------------------------
-- DISTINCT

SELECT * FROM MUNICIPIO

SELECT DISTINCT(CD_UF_IBGE),DS_MUNICIPIO FROM MUNICIPIO ORDER BY CD_UF_IBGE

--------------------------------------------------------------------------------