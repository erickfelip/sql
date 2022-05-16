-- AVG = MEDIA
-- ROUND = RETORNA AS CASAS DECIMAIS EXPECIFICADAS 

SELECT * FROM SALARIO

CREATE TABLE SALARIO(
    CARGO VARCHAR2(255)NOT NULL,
    SALARIO NUMBER(30) NOT NULL
)

INSERT INTO SALARIO (
    CARGO, 
    SALARIO
)VALUES('AUX. ENFERMAGEM',2320)

SELECT ROUND(AVG(SALARIO), 2) AS MEDIA FROM SALARIO
--------------------------------------------------------------------------------
-- SUM 
-- REALIZA SOMA 

SELECT ROUND (SUM (SALARIO), 2)AS "SOMA SALARIO" FROM SALARIO

--------------------------------------------------------------------------------
-- COUNT 
-- VERIFICA OS REGISTRO NA TABELA
SELECT COUNT (*) FROM SALARIO

--------------------------------------------------------------------------------
-- MAX, MIN E MEDIA

SELECT * FROM SALARIO

SELECT MAX(SALARIO) AS "Max", MIN(SALARIO)AS "Min"FROM SALARIO


SELECT ROUND(AVG(SALARIO), 2) AS MEDIA FROM SALARIO

--------------------------------------------------------------------------------
-- UPPER, LOWER 

SELECT LOWER(CARGO)AS "Lower Case" FROM SALARIO 
SELECT UPPER(CARGO)AS "Upper Case" FROM SALARIO 

--------------------------------------------------------------------------------
-- RANK

SELECT CARGO, SALARIO, 
    RANK () OVER(ORDER BY SALARIO DESC)
    AS "Rank de Salários" 
    FROM SALARIO
    
--------------------------------------------------------------------------------
-- CONCATENAR 

SELECT CARGO || ' R$ ' || SALARIO AS "Salários" FROM SALARIO

--------------------------------------------------------------------------------
-- CREATE INDEXES

SELECT * FROM SALARIO

CREATE UNIQUE INDEX IDX_CARGO ON SALARIO(CARGO)

--------------------------------------------------------------------------------
-- CASCADE/RESTRICT

