if (exists(select name from sysobjects where name = 'extract_Sales_District' and type = 'V'))
	begin
			drop view extract_Sales_District;
	end;
go

create view extract_Sales_District
as
select 
SD_ID AS SORG_Region_ID,
SD_Name AS SORG_Region_Name,
ssm.MGR_First_Name AS SORG_Region_Manager_Name,
ssm.MGR_Key
from dbo.Sales_District sd , 
 dbo.Stage_Sales_Mgr ssm
where sd.MGR_ID = ssm.MGR_ID;
go
