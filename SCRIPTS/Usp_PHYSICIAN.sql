USE [Lunchbox]
GO
/****** Object:  StoredProcedure [dbo].[Usp_PHYSICIAN]    Script Date: 11/14/2014 22:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Usp_PHYSICIAN](@Name Varchar(20),@Email varchar(40),@Phone varchar(12),@Agent_id int)
as
begin
insert into dbo.PHYSICIAN(FULL_NAME,EMAIL,PHONE,AGENT_ID)
values(@Name,@Email,@Phone,@Agent_id)
end