USE AdventureWorks2019
GO
/*
                    CHARINDEX(ExpressaoAProcurar, Nome_da_coluna)         -n�o usar em datetime, apenas textos-
                    PATINDEX    ('%padrao%, Nome_da_coluna )
*/

    SELECT CHARINDEX( 'Y', 'O melhor canal do youtube � o DevDojo, brabo demais!') AS [CHARINDEX],
                    PATINDEX    ('%�_o__e%', 'O melhor canal do youtube � o DevDojo, brabo demais!') AS  [PATINDEX]

    SELECT BusinessEntityID,
                    EmailAddress,
                    CHARINDEX('@', EmailAddress) AS [CHARINDEX],
                    SUBSTRING(EmailAddress, 1, CHARINDEX('@', EmailAddress) -1  ) AS NomeUsuario ,
                    ModifiedDate
                    --CHARINDEX('08', ModifiedDate) AS pos   -tr�s a posi��o errada, utilize tipo texto
       FROM Person.EmailAddress