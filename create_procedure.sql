SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     :	Mamat Hidayat
-- Create date: January 11, 2023
-- Description:	Invert value from Table TEST2
-- =============================================
CREATE PROCEDURE SelectTest2 @id int, @column Char(1)
AS
BEGIN
	SET NOCOUNT ON;
    declare @sql nvarchar(4000);
    set @sql='SELECT ['+@column+'] FROM TEST2 WHERE [id]='+CAST(@id AS varchar);
    exec TEST.sys.sp_executesql @sql
END
GO
