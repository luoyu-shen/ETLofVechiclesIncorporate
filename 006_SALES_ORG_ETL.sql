if (exists(select name from sysobjects where name = 'extract_Sales_Mgr' and type = 'V'))
	begin
			drop view extract_Sales_Mgr;
	end;
go

create view extract_Sales_Mgr
as
select 
MGR_ID, 
MGR_First_Name 

from dbo.Sales_Mgr;
go
