USE AdventureWorks2019
GO

    SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
                    HRE.BusinessEntityID AS [HRE.BusinessEntityID],

                    FirstName,
                    MiddleName,
                    LastName,
                    LoginID,
                    JobTitle,
                    BirthDate

    FROM Person.Person AS PP --19.972 rows
    LEFT JOIN    HumanResources.Employee  HRE
                ON     PP.BusinessEntityID = HRE.BusinessEntityID
    ORDER BY  PP.BusinessEntityID



    SELECT * FROM HumanResources.Employee --290 rows