USE AdventureWorks2019
GO
/*
        CONCAT() Quantos argumentos quiser
        CONCAT_WS(SEPARADOR, Nome_da_coluna/Valor 
*/
SELECT CONCAT ('Miguel' , ' ' , 'Gama' , 1212)

--SELECT GETDATE() + 652 +  'sdf'

SELECT BusinessEntityID,
                PersonType,
                NameStyle,
                Title,
                FirstName,
                MiddleName,
                LastName,
                Title+ ' ' + FirstName+ ' ' +MiddleName+ ' ' +LastName AS NomeCompleto,
                CONCAT (TITLE, ' ', FirstName, ' ', MiddleName, ' ', LastName ) AS [CONCAT()],
                CONCAT_WS( ' ', Title,FirstName,MiddleName,LastName) AS [CONCAT_WS()],
                Suffix,
                EmailPromotion,
                MiddleName

FROM Person.Person