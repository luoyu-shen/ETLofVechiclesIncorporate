if (exists(select name from sysobjects where name = 'extract_Staged_SALES_ORG' and type = 'V'))
	begin
			drop view extract_Staged_SALES_ORG;
	end;
go

create view extract_Staged_SALES_ORG
as
select sa.SA_ID AS SORG_Zone_ID,
	sa.SA_Name AS SORG_Zone_Name,
	ssm1.MGR_First_Name AS SORG_Zone_Manager_Name,
	sa.SA_Key AS SORE_Zone_Key,
	st.ST_ID AS SORG_Domain_ID,
	st.ST_Name AS SORG_Domain_Name,
	ssm2.MGR_First_Name AS SORG_Domain_Manager_Name,

	sd.SD_ID AS SORG_Region_ID,
	sd.SD_Name  AS SORG_Region_Name,
	ssm.MGR_First_Name AS SORG_Region_Manager_Name,
	sd.SD_Key AS SORG_Region_Key,
	concat(sd.SD_Name,'-',sa.SA_Name,'/',st.ST_Name) AS SORG_Full_Name
from Stage_Sales_Area sa, 
	Stage_Sales_Mgr ssm,
	Stage_Sales_Mgr ssm1,
	Stage_Sales_Mgr ssm2,
	Stage_Sales_Territory st,
	Stage_Sales_District sd
where sd.MGR_Key = ssm.MGR_Key and 
sa.MGR_Key = ssm1.MGR_Key and 
st.MGR_Key = ssm2.MGR_Key and 
sa.SD_Key = sd.SD_Key and
st.SA_Key = sa.SA_Key;
go
