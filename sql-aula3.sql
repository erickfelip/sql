select * from PESSOA_FISICA
ALTER TABLE PESSOA_FISICA ADD (SEXO VARCHAR2(1))
ALTER TABLE PESSOA_FISICA ADD CONSTRAINT SEXO_CK CHECK (SEXO IN('M','F','I')) 

--------------------------------------------------------------------------------

-- Create SEQUENCE

CREATE SEQUENCE PESSOA_FISICA_SEQ
    START WITH 1 
    INCREMENT BY 1 
    MAXVALUE 9999999
    MINVALUE 1
    NOCACHE 
    
    CREATE SEQUENCE UF_SEQ
    START WITH 1 
    INCREMENT BY 1 
    MAXVALUE 9999999
    MINVALUE 1
    NOCACHE 
    
    CREATE SEQUENCE MUNICIPIO_SEQ
    START WITH 1 
    INCREMENT BY 1 
    MAXVALUE 9999999
    MINVALUE 1
    NOCACHE 
    
    SELECT * FROM MUNICIPIO 
--------------------------------------------------------------------------------
-- USANDO A SEQUENCE, 
    
    -- FAZ O INSERT EM TODAS AS COLUNAS PELA ORDEM QUE FOI CRIADA.  
    INSERT INTO UF VALUES()
    
    -- FAZ O INSERT NAS COLUNAS EXPECIFICADAS. 
    INSERT INTO UF(
        NR_SEQUENCIA, 
        DT_CRIACAO, 
        CD_UF_IBGE, 
        SG_UF, 
        DS_UF
        ) VALUES(UF_SEQ.NEXTVAL, SYSDATE, 84, 'RN','RIO GRANDE DO NORTE') 
        
-- APOS INSERERIR OS VALORES NA TABELA, USE O COMMIT PARA GRAVAR O REGISTRO NA TABELA 
COMMIT   

-- USE O ROLLBACK PARA DESFAZER AS ALTERAÇÕES QUE FORAM FEITAS ANTES DO COMMIT
ROLLBACK

-- DELETANDO REGISTROS DA TABELA 
DELETE UF

-- APOS ISSO COMMIT 
COMMIT  
--------------------------------------------------------------------------------
SELECT * FROM UF 
SELECT * FROM MUNICIPIO 

ALTER TABLE MUNICIPIO ADD (CD_UF_IBGE NUMBER(2))
ALTER TABLE MUNICIPIO 
    ADD CONSTRAINT CD_UF_IBGE_FK 
    FOREIGN KEY(CD_UF_IBGE)
    REFERENCES UF(CD_UF_IBGE)

DELETE MUNICIPIO

