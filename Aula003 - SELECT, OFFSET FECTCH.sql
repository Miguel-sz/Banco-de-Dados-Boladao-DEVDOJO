SELECT TOP 1000
            BusinessEntityID, 
            PersonType, Title, 
            FirstName, 
            MiddleName, 
            LastName, 
            ModifiedDate

  FROM Person.Person 
            -- Where MiddleName = 'N'
   ORDER BY BusinessEntityID
  OFFSET 50 ROWS -- IGNORE (PULE) Quantidade_de_linhas ROWS = LINHAS

       -- ORDER BY 4,5,6  EVITEM NUMERAÇÃO 
       /* ORDER BY FirstName,    Default ASC
                                MiddleName DESC,
                                Laste Name */


                                SELECT 
            BusinessEntityID,  
            PersonType, Title, 
            FirstName, 
            MiddleName, 
            LastName, 
            ModifiedDate

FROM Person.Person 
            -- Where MiddleName = 'N'
   ORDER BY BusinessEntityID
  OFFSET 50 ROWS -- IGNORE (PULE) Quantidade_de_linhas ROWS = LINHAS
   FETCH  NEXT 10 ROWS ONLY   --EXECUTE SOMENTE AS PROXIMAS 10 LINHAS 
       -- ORDER BY 4,5,6  EVITEM NUMERAÇÃO 
       /* ORDER BY FirstName,    Default ASC
                                MiddleName DESC,
                                Laste Name */

     SELECT  DISTINCT 
            BusinessEntityID, 
         --   PersonType, Title, 
            FirstName, 
          --  MiddleName, 
            LastName
         --   ModifiedDate

    FROM   Person.Person   
 -- Where MiddleName = 'N'
   ORDER BY LastName
  OFFSET 50 ROWS -- IGNORE (PULE) Quantidade_de_linhas ROWS = LINHAS
   FETCH  NEXT 10 ROWS ONLY   --EXECUTE SOMENTE AS PROXIMAS 10 LINHAS 
       -- ORDER BY 4,5,6  EVITEM NUMERAÇÃO 
       /* ORDER BY FirstName,    Default ASC
                                MiddleName DESC,
                                Laste Name */

                                