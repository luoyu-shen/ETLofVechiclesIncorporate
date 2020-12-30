/** 
This must be run in the SEIS732_Team_28_SALES_ORG database
Creating staging table for SALES_ORG 
**/
if (exists(select name from sysobjects where name = 'Stage_Sales_Territory' and type = 'U'))
	begin
		drop table Stage_Sales_Territory;
	end;
go

create table Stage_Sales_Territory
	(
	ST_ID smallint not null,

	ST_Name varchar(60) not null,
	SA_Key numeric not null,
	MGR_Key numeric not null,
	ST_Key bigint identity(1,1) not null,
	CONSTRAINT PK_Stage_Sales_Territory PRIMARY KEY CLUSTERED (ST_Key ASC)
	);
go
