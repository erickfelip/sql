-- Criando uma 'View' para armazenar a consulta. 

CREATE VIEW XLS_MUNICIPIO_UF AS 
    SELECT a.NR_SEQUENCIA "Sequ�ncia", 
       a.CD_MUNICIPIO_IBGE "C�digo Munic�pio", 
       a.DS_MUNICIPIO "Munic�pio", 
       a.CD_UF_IBGE "C�digo UF"
FROM MUNICIPIO a
     WHERE a.CD_UF_IBGE IN(42, 52)
     AND (a.DS_MUNICIPIO LIKE '%S�o%' OR a.DS_MUNICIPIO LIKE '%Santa%')
     ORDER BY NR_SEQUENCIA
     
     -- SELECT * FROM XLS_MUNICIPIO_UF
     
--------------------------------------------------------------------------------