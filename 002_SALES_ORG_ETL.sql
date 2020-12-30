/** 
This must be run in the SEIS732_Team_28_SALES_ORG database
Creating staging table for SALES_ORG 
**/
if (exists(select name from sysobjects where name = 'Stage_Sales_Mgr' and type = 'U'))
	begin
		drop table Stage_Sales_Mgr;
	end;
go

create table Stage_Sales_Mgr
	(
	MGR_ID smallint not null,
	MGR_First_Name varchar(60) not null,
	MGR_Key numeric identity(1,1) not null,
	CONSTRAINT PK_Stage_Sales_Mgr PRIMARY KEY CLUSTERED (MGR_Key ASC)
	);
go
