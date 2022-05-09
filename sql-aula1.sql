--() NOME DAS COLUNAS
--NR_SEQUENCIA = ID //PRIMARY KEY
--VARCHAR2 = armazena caracteres alfanum�ricos de tamanho vari�vel, 
--entre 1 e 4000 bytes ou caracteres.

--NUMBER (10,2) 10 REFERENTE AOS DIGITOS, E O 2 REFERENTE AS CASAS DECIMAIS APOS
--A VIRGULA.

CREATE TABLE PESSOA_FISICA(
    NR_SEQUENCIA INTEGER,
    DT_CRIACAO DATE, 
    DT_ALTERACAO DATE, 
    NM_PESSOA_FISICA VARCHAR2(255),
    DT_NASCIMENTO DATE, 
    NR_CPF VARCHAR2(11),
    QT_ALTURA NUMBER(3,2)
    )
    
SELECT * 
  FROM PESSOA_FISICA
  
  
CREATE TABLE UF(
    NR_SEQUENCIA INTEGER,
    DT_CRIACAO DATE,
    DT_ALTERACAO DATE,
    CD_UF_IBGE NUMBER(2),
    SG_UF VARCHAR2(2),
    DS_UF VARCHAR(255)
    
)


CREATE TABLE MUNICIPIO(
    NR_SEQUENCIA INTEGER,
    DT_CRIACAO DATE,
    DT_ALTERACAO DATE,
    CD_MUNICIPIO_IBGE NUMBER(7),
    DS_MUNICIPIO VARCHAR2(255)
)


CREATE TABLE PESSOA_FISICA_ENDERECO(
    NR_SEQUENCIA INTEGER,
    DT_CRIACAO DATE,
    DT_ALTERACAO DATE,
    NR_SEQ_PESSOA_FISICA INTEGER,
    NR_SEQ_UF INTEGER,
    NR_SEQ_MUNICIPIO INTEGER,
    DS_LOGRADOURO VARCHAR2(255),
    NR_ENDERECO INTEGER,
    DS_BAIRRO VARCHAR2(255),
    NR_CEP NUMBER(8)
)






SELECT * FROM
    PESSOA_FISICA ORDER BY NR_SEQUENCIA 
    --ADICIONANDO VALORES A NOVA COLUNA
    UPDATE PESSOA_FISICA SET OBSERVACAO = 226548
    

    INSERT INTO PESSOA_FISICA(
    OBSERVACAO
    )VALUES(123)
    
    --UPDATE COLUMN OBSERVACAO INTO PESSOA FISICA
    UPDATE PESSOA_FISICA 
    SET OBSERVACAO = NR_SEQUENCIA 
    
    --------------------------------------------------------
    --ADICIONANDO VALORES A UMA COLUNA E LINHA ESPECIFICA
    UPDATE PESSOA_FISICA SET OBSERVACAO = 222 WHERE NR_SEQUENCIA = 3
    UPDATE PESSOA_FISICA SET COD_PD = 2.13 WHERE NR_SEQUENCIA = 2
    UPDATE PESSOA_FISICA SET COD_PD = 1.53 WHERE NR_SEQUENCIA = 1


    UPDATE PESSOA_FISICA SET TESTE = NULL WHERE NR_SEQUENCIA = 2
        

--DELETANDO UMA LINHA (ROW)
--DELETANDO UMA LINHA POR 'NOME' DA COLUNA.
DELETE FROM
    PESSOA_FISICA
WHERE
    NM_PESSOA_FISICA = 'JOSE'


--INSERINDO DADOS A TABELA
INSERT INTO PESSOA_FISICA (
    NR_SEQUENCIA, 
    NM_PESSOA_FISICA, 
    QT_ALTURA
    )VALUES(2, 'KAKA', 1.85)
    
    --ALTER TABLE PESSOA_FISICA ADD (TESTE VARCHAR2(255))
    
--ADICIONANDO COLUMA A TABELA
ALTER TABLE PESSOA_FISICA ADD (COD_PD NUMBER(5,3))

--MODIFICNADO COLUMA
ALTER TABLE PESSOA_FISICA MODIFY(OBS NUMBER(5,3))
ALTER TABLE PESSOA_FISICA RENAME COLUMN OBSERVACAO TO OBS

--DELETANDO COLUNA
ALTER TABLE PESSOA_FISICA DROP COLUMN OBSERVACAO

--SELECT POR SEQUENCIA
SELECT * FROM PESSOA_FISICA WHERE NR_SEQUENCIA = 1
