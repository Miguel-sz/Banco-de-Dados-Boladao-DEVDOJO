USE AdventureWorks2019
GO

/*
                DATEDIFF(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ TIPO INT
                DATEDIFF_BIG(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ TIPO BIGINT
                DATEADD( PARTE_DA_DATA, VALOR, DATA/Nome_da_coluna)

*/

    SELECT GETDATE() AS HOJE,
                    DATEDIFF(DAY, '2000-10-15', GETDATE()) AS DIFF_DIAS ,
                    DATEDIFF(HOUR, '2000-10-15 05:05:18', GETDATE()) AS HORAS,
                    DATEDIFF_BIG( NANOSECOND, '2000-10-15 05:05:18', SYSDATETIME()) AS PRECISAO
GO


    SELECT BusinessEntityID,
                    Title,
                    FirstName,
                     DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS DIFF_MONTH ,
                     DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS DIFF_YEAR ,
                     DATEDIFF(DAY, ModifiedDate, GETDATE()) AS DIFF_DIAS ,
                    ModifiedDate,
                    DATENAME(MONTH, ModifiedDate) AS NOME_DO_MES,
                    DATENAME( MONTH, (DATEADD(MONTH, 3 , ModifiedDate)) ) AS MESES_ACRESCIDOS,
                    DATEADD(MONTH, -3 , ModifiedDate) AS MESES_SUB

    FROM    Person.Person 
                                                                                                --SUBSELECT
    WHERE ModifiedDate >= DATEADD(MONTH, -16, (SELECT MAX (ModifiedDate) FROM Person.Person ) )  

GO

    --SELECT MAX (ModifiedDate) FROM Person.Person 

    SELECT DATEDIFF(MONTH, (SELECT MIN( ModifiedDate) FROM Person.Person ), (SELECT MAX(ModifiedDate) FROM Person.Person)  )