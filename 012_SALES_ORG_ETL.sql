INSERT INTO Stage_Sales_Area (
		
	SA_ID ,
	SA_Name ,
	SD_Key ,
	MGR_Key )
	select 
	SORG_Zone_ID,
	SORG_Zone_Name, 
	SD_Key,
	SORG_Key
	from extract_Sales_Area
go