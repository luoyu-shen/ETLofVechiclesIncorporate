
INSERT INTO Stage_Sales_District (
	SD_ID ,

	SD_Name,

	MGR_Key

	)
	select 
	SORG_Region_ID,
	SORG_Region_Name,
	MGR_Key
	from extract_Sales_District
go
