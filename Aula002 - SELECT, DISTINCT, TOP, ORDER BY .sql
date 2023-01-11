/*
SQL - STRUCTURED   QUERY LANGUAGEM - LINGUAGEM ESTRUTRADA
T - SQL - TRANSACT SQL

    SELECT = SELECIONE (INSTRUÇÃO SELECT)
    * TUDO (TODAS_AS_COLUNAS)
    FROM = VINDO DE/ A PARTIR DE 
    NOME_DA_TABELA
    WHERE = ONDE (FILTRO)
    AND = E 
    AS ALIASES = APELIDO DA COLUNA 

*/      
                                
/*SELECT BusinessEntityID,
                PersonType,
                Title,
                FirstName, 
                MiddleName,
                LastName,
                ModifiedDate    -- última coluna sem >virgula<

       FROM  Person.Person 
    WHERE  FirstName = 'Pete'
          AND  MiddleName = ''
*/
          SELECT TOP 1000
                          BusinessEntityID               AS    [ID PESSOA],
                          PersonType                        AS    [TIPO PESSOA], 
                          Title                                   AS    [TITULO],
                          FirstName                         AS    [PRIMEIRO NOME],
                          MiddleName                     AS    [NOME DO MEIO],
                          LastName                         AS      [ULTIMO NOME]

             FROM Person.Person
             --Where 
             ORDER BY FirstName,                       --Ordenação Desc - Decrescente
                                  LastName DESC             --ORDENASÇÃO ASCENDENTE        
                                  
                                  
                                  
      SELECT DISTINCT     --DISTINCT = REMOVE DUPLICADOS 
                         -- BusinessEntityID               AS    [ID PESSOA],
                         -- PersonType                        AS    [TIPO PESSOA], 
                         -- Title                                   AS    [TITULO],
                          FirstName,              
                          MiddleName,                   
                          LastName                       

             FROM Person.Person
             --Where TITLE = 'MR.'
             ORDER BY FirstName,
                                  MiddleName
