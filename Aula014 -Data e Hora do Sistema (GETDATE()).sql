USE AdventureWorks2019
GO

    --GETDATE()

    SELECT TRY_CAST( GETDATE() AS TIME) AS [TIME],
                    TRY_CAST ( GETDATE() AS DATE) AS [DATE],
                    GETDATE() AS [GETDATE()],
                    CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP],
                    SYSDATETIME()   AS [SYSDATETIME()],      --FRA��O DE SEGUNDOS MAIS DETALHADA
                    GETUTCDATE()    AS [GETUTCDATE()],          -- HORARIO MUNDIAL
                    SYSUTCDATETIME() AS [SYSUTCDATETIME()],
                    SYSDATETIMEOFFSET() AS [SYSDATETIMEOFFSET()],   --FRA��O DETALHADA E FUSO HOR�RIO 
                        CURRENT_TIMEZONE() AS [CURRENT_TIMEZONE()]
