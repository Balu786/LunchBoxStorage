INSERT INTO [LunchBox].[dbo].[THEREAPIST]
           ([AGENCY_ID]
           ,[USER_ID]
           ,[TYPE_CODE]
           ,[FIRST_NAME]
           ,[LAST_NAME]
           ,[INTERNAL_EMAIL]
           ,[PHONE_NUMBER]
           ,[ZIP_CODE_BASE]
           ,[TAX_ID])
     VALUES
           (<AGENCY_ID, int,>
           ,<USER_ID, int,>
           ,<TYPE_CODE, varchar(5),>
           ,<FIRST_NAME, varchar(20),>
           ,<LAST_NAME, varchar(20),>
           ,<INTERNAL_EMAIL, varchar(25),>
           ,<PHONE_NUMBER, varchar(12),>
           ,<ZIP_CODE_BASE, varchar(6),>
           ,<TAX_ID, varchar(10),>)
GO

