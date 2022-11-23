USE AdventureWorks2019
GO

/*
        EOMONTH (DATA/Nome_da_coluna, [precisaoOpcaional])
*/  

    SELECT GETDATE() AS [GETADE()],

                    EOMONTH( GETDATE() ) AS [EOMONTH],
                    EOMONTH( GETDATE(), -4 ) AS [NEG],

                    EOMONTH('2010-02-10') AS FEV,
                    EOMONTH('2010-02-10', 3) AS MES 
GO

    SELECT BusinessEntityID,
                    FirstName,
                    ModifiedDate,
                    EOMONTH(ModifiedDate, -3) AS [-3 MESES],
                    EOMONTH(ModifiedDate) AS ULTIMO_DIA_DO_MES,
                    EOMONTH(ModifiedDate, 6) AS [+6 MESES]
         FROM Person.Person 

         --DATEFROMPARTS(ANO, MES, DIA) [TODOS DO TIPO INTEIRO] : RETORNO SERÁ UM DATE

         SELECT DATEFROMPARTS( '2015', )