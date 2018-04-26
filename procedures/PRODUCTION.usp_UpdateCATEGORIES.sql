CREATE PROCEDURE PRODUCTION.usp_UpdateCATEGORIES
AS  
MERGE PRODUCTION.CATEGORIES AS target  
USING (SELECT [ID] , [NAME]	FROM [STAGE].[OData_CATEGORIES]) AS source
ON (source.ID = target.ID)  
WHEN NOT MATCHED THEN INSERT ([ID] , [NAME]) VALUES ([ID] , [NAME]);
GO  

