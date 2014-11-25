USE [Lunchbox]
GO
/****** Object:  StoredProcedure [dbo].[Usp_patent]    Script Date: 11/14/2014 22:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_patent](@Name varchar(20),@PatPhno varchar(12),@Pataltphno varchar(12),
@patDob date,@ssn varchar(20),@Patmadicarno varchar(20),@patmadicalid varchar(20),
@patInsurenceno varchar(20),
@medicalnesacity varchar(20),@curentdate varchar(20))
as
begin
insert into PATENT(NAME,PRIMARY_PHONE,SECONDARY_PHONE,DOB,SSN,MEDICARE,MEDICALID,INSURANCE,
MEDICAL_NECESSITY,CREATED_DATE)
values(@Name ,@PatPhno,@Pataltphno ,
@patDob,@ssn ,@Patmadicarno,@patmadicalid ,
@patInsurenceno ,
@medicalnesacity,@curentdate)

end  