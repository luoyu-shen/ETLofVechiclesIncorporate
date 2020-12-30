if (exists(select name from sysobjects where name = 'extract_Sales_Territory' and type = 'V'))
	begin
			drop view extract_Sales_Territory;
	end;
go

create view extract_Sales_Territory
as
select 
ST_ID AS SORG_Domain_ID,
ST_Name AS SORG_Domain_Name,
ssm.MGR_First_Name AS SORG_Domain_Manager_Name,
sa.SA_Key ,
ssm.MGR_Key

from dbo.Sales_Territory st , 
dbo.Stage_Sales_Mgr ssm, 
dbo.Stage_Sales_Area sa
where st.MGR_ID = ssm.MGR_ID and sa.SA_ID = st.SA_ID;
go
