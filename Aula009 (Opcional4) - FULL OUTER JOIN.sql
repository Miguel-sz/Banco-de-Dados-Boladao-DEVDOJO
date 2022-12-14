 USE AdventureWorks2019
 GO 

    SELECT  SSP.BusinessEntityID,
                    PP.BusinessEntityID
                  FirstName,
                  MiddleName,
                  LastName,
                  TerritoryID,
                  Bonus,
                  SalesLastYear
 
     FROM    Sales.SalesPerson AS SSP
     FULL OUTER JOIN     Person.Person       AS PP
         ON      SSP.BusinessEntityID = PP.BusinessEntityID
         --ORDER BY SSP.BusinessEntityID  
 GO 

    SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
    SSP.BusinessEntityID AS [SSP.BusinessEntityID],
                    Title,
                    FirstName,
                    MiddleName,
                    LastName,
                    TerritoryID,
                    PEA.EmailAddress,
                    PEA.BusinessEntityID AS [PEA.BusinessEntityID ],
                    HRE.BusinessEntityID AS [HRE.BusinessEntityID],
                    HRE.Gender,
                    HRE.LoginID
    FROM Person.Person AS PP --19000 ROWS 
    FULL OUTER JOIN Person.EmailAddress AS PEA
    ON PP.BusinessEntityID = PEA.BusinessEntityID

    FULL OUTER JOIN HumanResources.Employee AS HRE
    ON PEA.BusinessEntityID = HRE.BusinessEntityID 

    FULL OUTER JOIN Sales.SalesPerson AS SSP  --17 ROWS
    ON HRE.BusinessEntityID = PEA.BusinessEntityID

    SELECT * FROM  Sales.SalesPerson                     --  BusinessEntityID 274 a 290
    SELECT * FROM  Person.Person                           --  BusinessEntityID 1 a 20777
    SELECT * FROM  Person.EmailAddress               --  BusinessEntityID 1 a 20777
    SELECT * FROM HumanResources.Employee     --  BusinessEntityID 1 a 290 