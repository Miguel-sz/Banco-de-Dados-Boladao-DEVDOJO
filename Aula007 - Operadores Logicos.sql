/*
        ALL     (SUBQUERY)
        ANY     
        OR
        SOME | ANY      (SUBQUERY)
        BETWEEN     - ENTRE
        EXISTS               (SUBQUERY)
        IN | NOT IN
        LIKE | NOT LIKE

*/
    SELECT * FROM Person.Person
    WHERE BusinessEntityID IN (5,6,8,2,3,2325,121,52,5000,2555,0025)

     SELECT * FROM Person.Person
     WHERE FirstName Not IN ('Terri', 'Ken' )


    SELECT * FROM Person.Person 
        WHERE BusinessEntityID  BETWEEN 600 AND 800 
             --AND  FirstName = 'Aaron' 
             --AND  ( MiddleName = 'DevDojo' OR MiddleName = 'G' )
            -- AND LastName <> 'Boladao'
       -- ORDER BY FirstName 

    SELECT * FROM Person.Person
    --WHERE FirstName LIKE 'G%'
    WHERE FirstName LIKE 'G__a'

        SELECT * FROM Person.Person
    --WHERE FirstName LIKE 'G%'
    WHERE FirstName LIKE '[A,B,C,D,E,F,G,H]___a'
    ORDER BY FirstName

            SELECT * FROM Person.Person
    --WHERE FirstName LIKE 'G%'
    WHERE FirstName NOT LIKE '[A,B,C,D,E,F,G,H]___a'
    ORDER BY FirstName

            SELECT * FROM Person.Person
    --WHERE FirstName LIKE 'G%'
    WHERE FirstName  LIKE '[^A,B,C,D,E,F,G,H]___a'
    ORDER BY FirstName



