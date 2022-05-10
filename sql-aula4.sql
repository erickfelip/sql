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
-- Criando uma 'View' para armazenar a consulta. 

CREATE VIEW XLS_MUNICIPIO_UF AS 
    SELECT a.NR_SEQUENCIA "Sequência", 
       a.CD_MUNICIPIO_IBGE "Código Município", 
       a.DS_MUNICIPIO "Município", 
       a.CD_UF_IBGE "Código UF"
FROM MUNICIPIO a
     WHERE a.CD_UF_IBGE IN(42, 52)
     AND (a.DS_MUNICIPIO LIKE '%São%' OR a.DS_MUNICIPIO LIKE '%Santa%')
     ORDER BY NR_SEQUENCIA
     
     SELECT * FROM XLS_MUNICIPIO_UF