/** 
This must be run in the SEIS732_Team_28_SALES_ORG database
Creating staging table for SALES_ORG 
**/
if (exists(select name from sysobjects where name = 'Stage_Sales_District' and type = 'U'))
	begin
		drop table Stage_Sales_District;
	end;
go

create table Stage_Sales_District
	(
	SD_ID smallint not null,

	SD_Name varchar(60) not null,
	SD_Key smallint identity(1,1) not null,
	
	MGR_Key smallint not null,
	CONSTRAINT PK_Stage_Sales_District PRIMARY KEY CLUSTERED (SD_Key ASC)
	);
go
