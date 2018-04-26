CREATE PROCEDURE PRODUCTION.usp_UpdateADVERTISEMENTS
AS  
MERGE PRODUCTION.ADVERTISEMENTS AS target  
USING (SELECT [ID],[NAME],[AirDate]	FROM [STAGE].[OData_Advertisements]) AS source
ON (source.ID = target.ID)  
WHEN NOT MATCHED THEN INSERT ([ID],[NAME],[AirDate]) VALUES ([ID],[NAME],[AirDate]);
GO  

