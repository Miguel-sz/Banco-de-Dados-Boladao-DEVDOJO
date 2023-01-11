/*
SQL - STRUCTURED   QUERY LANGUAGEM - LINGUAGEM ESTRUTRADA
T - SQL - TRANSACT SQL

    SELECT = SELECIONE (INSTRUÇÃO SELECT)
    * TUDO (TODAS_AS_COLUNAS)
    FROM = VINDO DE/ A PARTIR DE 
    NOME_DA_TABELA
    WHERE = ONDE
    AND = E 
    AS ALIASES = APELIDO DA COLUNA 

*/      

        SELECT BusinessEntityID,
                        PersonType,
                        Title,
                        FirstName,
                        MiddleName,
                        LastName,
                        ModifiedDate   -- ultima coluna sem virgula
        FROM Person.Person 
        --WHERE FirstName = 'Pete'