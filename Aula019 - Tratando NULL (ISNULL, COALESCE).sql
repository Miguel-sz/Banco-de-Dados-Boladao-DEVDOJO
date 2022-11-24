USE AdventureWorks2019
GO
/*
            ISNULL(Nome_da_coluna/Valor, ValorParaSubstituir/Dado)
            COALESCE(Argumento[Nome_da_coluna]): quantos argumentos desejar
*/
--SELECT ISNULL(NULL, ' ')
SELECT COALESCE(NULL,NULL, 'NULL', '1')

SELECT BusinessEntityID,
                PersonType,
                NameStyle,
                ISNULL(Title, ' ') AS Title,
                FirstName,
                ISNULL(MiddleName, ' ') AS MiddleName,
                COALESCE(Title,MiddleName, Suffix, FirstName) AS [COALESCE()],
                COALESCE(Title,MiddleName, Suffix) AS [COALESCE()_NULO],     --RETORNAR VALOR NULO SE TODOS OS 3 FOREM NULL
                ISNULL  (COALESCE(Title,MiddleName, Suffix), 'COALESCE_NULO' ) AS [COALESCE()_NULO2],
                LastName,
                ISNULL(Suffix, ' ') Suffix,
                ISNULL(AdditionalContactInfo, ' ') AS AdditionalContactInfo,
                TRY_CONVERT (VARCHAR(10), ModifiedDate,103) AS  ModifiedDate
FROM Person.Person
--WHERE Suffix IS NOT NULL 

GO