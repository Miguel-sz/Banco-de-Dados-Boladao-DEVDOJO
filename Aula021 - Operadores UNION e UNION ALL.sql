USE AdventureWorks2019
GO

/*
        UNION            : UNI�O DOS VALORES DISTINTOS 
        UNION ALL    : UNI�O COM TODOS OS VALORES (DUPLICADOS)
        OBS: � PRECISO TER O MESMO N�MERO DE COLUNAS PARA UTILIZAR
*/

    SELECT 'DevDojo' AS [Nome],
                'Java'        AS [Linguagem]

    UNION

    SELECT 'Google' AS [Empresa],
                'Kotlin'  AS [Tipo]

    UNION ALL

       SELECT 'DevDojo' AS [Nome],
                'Java'        AS [Linguagem]

    SELECT PersonType   AS  [COLUNA 4],
                    FirstName    AS  [COLUNA 5],
                    MiddleName AS [COLUNA 6]
--ModifiedDate
       FROM Person.Person
    WHERE MiddleName IS NOT NULL
          AND FirstName = 'Aaron'
          --ORDER BY FirstName

    UNION
    
    SELECT PersonType     AS  [COLUNA 1],
                    FirstName      AS  [COLUNA 2],
                    MiddleName  AS  [COLUNA 3] 
                   -- ModifiedDate
       FROM Person.Person
    WHERE MiddleName IS NOT NULL
          AND FirstName = 'Abigail'

          ORDER BY [COLUNA 6]