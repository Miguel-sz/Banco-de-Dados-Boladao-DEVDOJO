    USE AdventureWorks2019
    GO

    SELECT PersonType,
                    NameStyle,
                    
                    Title,

                    CASE Title
                        WHEN 'Ms. ' THEN 'Senhora'
                        WHEN 'Mr. ' THEN 'Senhor'
                        ELSE ' '
                        END AS Titulo, 

                    FirstName,
                    MiddleName,
                    LastName,

                    FirstName + ' ' + MiddleName + ' ' + LastName AS [Nome Completo],

                    ModifiedDate 
    
    FROM Person.Person 
    GO

     SELECT PP.BusinessEntityID,
                    LoginID,
                    OrganizationLevel,
                    JobTitle,
                    BirthDate,

                    CASE MaritalStatus
                            WHEN 'S' THEN 'Solteiro'
                            WHEN 'M' THEN 'Casado'
                            ELSE 'Não Localizado'
                    END AS MaritalStatus, 

                    CASE Gender
                            WHEN 'M' THEN 'Masculino'
                            WHEN 'F' THEN 'Feminino'
                            ELSE 'Não Localizado'
                    END AS Gender, 
 
                    PersonType,
                    NameStyle,
                    Title,
                    FirstName,
                    MiddleName,
                    LastName,
                    Rate,
                    PayFrequency,
                    PEA.EmailAddress,
                    PPP.PhoneNumber,
                    PPP.PhoneNumberTypeID,
                    FirstName + ' ' + MiddleName + ' ' + LastName AS [Nome Completo]

    FROM Person.Person AS PP
    JOIN    Person.EmailAddress AS PEA
    ON       PP.BusinessEntityID = PEA.BusinessEntityID
    JOIN    Person.PersonPhone AS PPP 
    ON       PP.BusinessEntityID = PPP.BusinessEntityID     
    LEFT JOIN    HumanResources.Employee AS HRE 
    ON       HRE.BusinessEntityID = PP.BusinessEntityID
    LEFT JOIN   HumanResources.EmployeePayHistory AS HREPH
    ON       HREPH.BusinessEntityID = PP.BusinessEntityID


    GO