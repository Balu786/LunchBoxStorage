USE [Lunchbox]
GO
/****** Object:  StoredProcedure [dbo].[Usp_HEALTHAGENCY]    Script Date: 11/14/2014 22:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_HEALTHAGENCY](@Name Varchar(20),@ADDRESS varchar(40),@taxid varchar(20),@Phone varchar(12))
as
begin
insert into dbo.HEALTHAGENCY(NAME,ADDRESS,TAX_ID, PHONE)
values(@Name,@ADDRESS,@taxid,@Phone)
end