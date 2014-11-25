USE [Lunchbox]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Theraphist]    Script Date: 11/14/2014 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_Theraphist](@Typecode Varchar(20),@FirstName varchar(40),@lastName varchar(20),@Inrenalemail varchar(20),@Phone varchar(12),@Zipcode varchar(20))
as
begin
insert into dbo.THEREAPIST(TYPE_CODE,FIRST_NAME,LAST_NAME,INTERNAL_EMAIL,PHONE_NUMBER,ZIP_CODE_BASE)
values(@Typecode,@FirstName,@lastName,@Inrenalemail,@Phone ,@Zipcode)
end