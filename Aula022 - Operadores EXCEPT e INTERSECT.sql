USE AdventureWorks2019
GO

/*
            EXCEPT     : retornar� os valores da primeira tabela/consula que n�o est�o na segunda consulta/tabela
        INTERSECT   : retornar� a interse��o dos valores | o que for de comum entre ambos
        OBS: QUANTO MAIS COLUNAS, MAIS AS CONDI��ES DO OPERADOR TEM QUE SER ATENDIDAS
*/

 SELECT 'DevDojo' AS [Nome],
                'Java'        AS [Linguagem]

    INTERSECT 

    SELECT 'Google' AS [Empresa],
                'Kotlin'  AS [Tipo]

    SELECT  BusinessEntityID AS [COL2]
       FROM  Person.Person     -- 19.972 
    EXCEPT
    SELECT BusinessEntityID AS [COL1]
       FROM HumanResources.Employee   --290 
    ORDER BY [COL2]

        SELECT  BusinessEntityID AS [COL2]
       FROM  Person.Person     -- 19.972 
    INTERSECT
    SELECT BusinessEntityID AS [COL1]
       FROM HumanResources.Employee   --290 
    ORDER BY [COL2]