USE [Blog]
GO

CREATE OR ALTER PROCEDURE VInformation 
@Name_City varchar(20) AS
SELECT * FROM Weather
WHERE City_id = (SELECT id_City FROM City Where Name_City = @Name_City)
GO