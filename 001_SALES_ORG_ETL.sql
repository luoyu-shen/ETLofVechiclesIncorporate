/** 
This must be run in the SEIS732_Team_28_SALES_ORG database
Creating staging table for SALES_ORG 
**/
if (exists(select name from sysobjects where name = 'Stage_Sales_Area' and type = 'U'))
	begin
		drop table Stage_Sales_Area;
	end;
go

create table Stage_Sales_Area
	(
	SA_Name VARCHAR(60) not null,	
	SA_ID smallint not null,
	SA_Key smallint identity(1,1) not null,
	SD_Key numeric not null,
	MGR_Key numeric not null,
	CONSTRAINT PK_Stage_Sales_Area PRIMARY KEY CLUSTERED (SA_Key ASC)
	);
go
