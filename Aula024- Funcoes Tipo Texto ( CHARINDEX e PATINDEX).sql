USE AdventureWorks2019
GO
/*
                    CHARINDEX(ExpressaoAProcurar, Nome_da_coluna)         -não usar em datetime, apenas textos-
                    PATINDEX    ('%padrao%, Nome_da_coluna )
*/

    SELECT CHARINDEX( 'Y', 'O melhor canal do youtube é o DevDojo, brabo demais!') AS [CHARINDEX],
                    PATINDEX    ('%é_o__e%', 'O melhor canal do youtube é o DevDojo, brabo demais!') AS  [PATINDEX]

    SELECT BusinessEntityID,
                    EmailAddress,
                    CHARINDEX('@', EmailAddress) AS [CHARINDEX],
                    SUBSTRING(EmailAddress, 1, CHARINDEX('@', EmailAddress) -1  ) AS NomeUsuario ,
                    ModifiedDate
                    --CHARINDEX('08', ModifiedDate) AS pos   -trás a posição errada, utilize tipo texto
       FROM Person.EmailAddress