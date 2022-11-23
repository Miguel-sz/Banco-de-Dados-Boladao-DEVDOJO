USE AdventureWorks2019
GO

    /*
            DATEPART(Parte_da_data/hora , Data/nome_da_coluna) : retorno será do tipo inteiro
            DATENAME(Parte_da_data/hora , Data/nome_da_coluna) : retorno do tipo texto (nvarchar)
            ISDATE(Nome_da_coluna): retorno 1 = TRUE | 0 = FALSE 

    */

    SELECT ISDATE ('GETDADE()' ) AS [ISDATE()],
                    ISDATE ('225F32' ) AS [ISDATE()],
                    GETDATE() AS [GETDATE()],
                    DATEPART(HOUR, GETDATE()) AS HORA,
                    DATEPART(MINUTE, GETDATE()) AS MINUTO,
                    DATEPART(YEAR, GETDATE()) AS ANO,

                    YEAR(GETDATE()) AS ANOSOZINHO,
                    MONTH(GETDATE()) AS MES,
                    DAY(GETDATE()) AS DIA,

                    DATEPART(MICROSECOND, GETDATE()) AS [MICROSECOND],
                    DATEPART(NANOSECOND, GETDATE()) AS NANO,

                    DATENAME(MONTH, GETDATE()) AS NOME_DO_MES,
                    DATENAME(DAY, GETDATE()) AS DIA_DO_MES  
GO

    SELECT BusinessEntityID,
                    Title,
                    FirstName,
                    MiddleName,
                    LastName,
                    TRY_CAST(ModifiedDate AS DATE ) AS ModifiedDate,
                    DATEPART(YEAR, ModifiedDate) AS ANO,
                    ISDATE (ModifiedDate) AS VERIFICADA,
                    ISDATE ( TRY_CONVERT( VARCHAR(10), ModifiedDate,103)) AS VERIFICA2
    FROM Person.Person
    WHERE  DATEPART(YEAR, ModifiedDate) = 2008
        AND    DATENAME(MONTH, ModifiedDate) = 'Dezembro '
GO

