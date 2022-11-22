/*
        COUNT: CONTAGEM
        MIN: MINIMO
        MAX: MÁXIMO
        SUM: SOMATORIO
        AVG:MEDIA

*/
        USE  AdventureWorks2019
        GO

        SELECT COUNT (*) FROM HumanResources.Employee

        SELECT COUNT(*)  AS CONTADOR, 
                        FirstName,
                        MiddleName

            FROM Person.Person
            WHERE MiddleName IS NOT NULL
            GROUP BY FirstName,
                                 MiddleName

            GO 


        SELECT MIN (BusinessEntityID) AS Minimo,
                        MIN (ModifiedDate) AS [Data Modificada]
        FROM Person.Person 

         SELECT MAX (BusinessEntityID) AS Maximo,
                        MAX (ModifiedDate) AS [Data Modificada]
        FROM Person.Person 

        SELECT SUM (BusinessEntityID) AS SOMA
        FROM Person.Person  --214.960.222

        SELECT AVG (BusinessEntityID)
        FROM Person.Person

        SELECT --SSP.BusinessEntityID,
                        --FirstName,
                        MiddleName,
                        --LastName,
                        --TerritoryID,
                        SUM (SalesQuota) AS SalesQuota
                        --Bonus,
                        --CommissionPct,
                        --SalesYTD,
                        --SalesLastYear,
                        --PP.ModifiedDate
        FROM Sales.SalesPerson AS SSP
        JOIN    Person.Person AS PP 
            ON   SSP.BusinessEntityID = PP.BusinessEntityID
            GROUP BY --SSP.BusinessEntityID,
                                 --FirstName,
                                 MiddleName
                                 --Lastname,
                                 --TerritoryID,
                                 --Bonus,
                                 --CommissionPct,
                                 --SalesYTD,
                                 --SalesLastYear,
                                 --PP.ModifiedDate

    SELECT * FROM HumanResources.Department

    SELECT*FROM HumanResources.EmployeeDepartmentHistory
        WHERE StartDate BETWEEN '2001-01-01' AND '2009-01-04'
        ORDER BY StartDate 

        SELECT RateChangeDate,
                        SUM(Rate) AS Rate ,
                        MAX (Rate) AS [MAX]
        FROM HumanResources.EmployeePayHistory
        GROUP BY RateChangeDate 

        SELECT COUNT (*) AS Contador,
                        FirstName
            FROM      Person.Person
        GROUP BY  FirstName
        HAVING COUNT (*) > 20

        SELECT AVG(Rate) AS rate,
                        RateChangeDate
         FROM HumanResources.EmployeePayHistory
         GROUP BY RateChangeDate
         HAVING AVG (Rate) >10.000

         
        SELECT SUM(Rate) AS rate,
                        RateChangeDate
         FROM HumanResources.EmployeePayHistory
         GROUP BY RateChangeDate
         HAVING SUM (Rate) <7.000

        SELECT SUM (Rate) AS [SUM],
         MIN (Rate) AS [MIN],
         MAX (Rate) AS [MAX],
         COUNT (Rate) AS [COUNT],
         AVG (Rate) AS [AVG]
          FROM HumanResources.EmployeePayHistory