
INSERT INTO Stage_Sales_Territory (
	ST_ID, 
	ST_Name,
	SA_Key,
	MGR_Key
	)
	select 
	SORG_Domain_ID,
SORG_Domain_Name,
SA_Key,
MGR_Key


	from extract_Sales_Territory
go
