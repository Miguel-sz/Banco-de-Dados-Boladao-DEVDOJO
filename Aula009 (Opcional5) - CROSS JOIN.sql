USE AdventureWorks2019
GO

SELECT * 
    FROM Sales.SalesPerson
    CROSS JOIN HumanResources.Employee 

                    --Ele multipliciou uma tabela pela outra, e as tr�s em pares. 290 rows "vezes" 17 Rows 