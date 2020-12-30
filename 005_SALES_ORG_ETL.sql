if (exists(select name from sysobjects where name = 'extract_Sales_Area' and type = 'V'))
	begin
			drop view extract_Sales_Area;
	end;
go

create view extract_Sales_Area
as
select 
SA_ID AS SORG_Zone_ID,
SA_Name AS SORG_Zone_Name, 
ssm.MGR_First_Name as SORG_Zone_Manager_Name,
ssm.MGR_Key ,
sd.SD_Key
from dbo.Sales_Area sa, Stage_Sales_Mgr ssm, Stage_Sales_District sd
where sa.MGR_ID= ssm.MGR_ID AND sa.SD_ID = sd.SD_ID;
go

