USE AdventureWorks2019
GO
/*
                LEN : retornar� a quantidade de caracteres |  ser� tipo int
                DATALENGTH : retornar� a quantidade de bytes | ser� tipo int
                LEFT : (Nome_da_coluna, tamanho)    : retorno nvarchar | varchar
                RIGHT : (Nome_da_coluna, tamanho) : retorno nvarchar | varchar
*/

    SELECT LEN('DEVDOJO       ') AS [LEN],
                    LEN (500)

    SELECT DATALENGTH('DEVDOJO      ') AS [DATALENGTH],
                    DATALENGTH(500)

    SELECT LEN ('O melhor canal do youtube � o DevDojo, brabo demais!')  AS [LEN] ,
                    LEN ('O melhor canal do youtube � o DevDojo, brabo demais!') /2 AS [LEN/2] ,
                    'O melhor canal do youtube � o DevDojo, brabo demais!' AS DevDojo,
                    LEFT ('O melhor canal do youtube � o DevDojo, brabo demais!', 18) AS [LEFT],            --conta esquerda para direita
                    LEFT ('O melhor canal do youtube � o DevDojo, brabo demais!' ,  LEN ('O melhor canal do youtube � o DevDojo, brabo demais!') /2) AS METADEESQUERDA,
                    RIGHT ('O melhor canal do youtube � o DevDojo, brabo demais!' ,  LEN ('O melhor canal do youtube � o DevDojo, brabo demais!') /2) AS METADEDIREITA,
                    RIGHT('O melhor canal do youtube � o DevDojo, brabo demais!', 18) AS [RIGHT]       --conta da direita para esquerda
GO
                                 
SELECT BusinessEntityID,
                EmailAddress,
                LEN (EmailAddress) AS [LEN],    --tamanho do email
                CHARINDEX('@', EmailAddress) AS [Posicao_@],   --posi��o do  @
                LEFT(EmailAddress, CHARINDEX('@', EmailAddress) -1 ) AS UserName,   --Tr�s o que est� a esquerda do @
                RIGHT(EmailAddress, LEN(EmailAddress) -  CHARINDEX('@', EmailAddress) ) AS DominioEmail , --Tr�s o que est� a direita do @
                SUBSTRING(EmailAddress, CHARINDEX( '@', EmailAddress) , 1 ) AS ESTRACAO@
             FROM Person.EmailAddress
    ORDER BY BusinessEntityID

