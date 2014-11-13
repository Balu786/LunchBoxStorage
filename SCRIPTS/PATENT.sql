INSERT INTO [LunchBox].[dbo].[PATENT]
           ([NAME]
           ,[PRIMARY_PHONE]
           ,[SECONDARY_PHONE]
           ,[DOB]
           ,[SSN]
           ,[MEDICARE]
           ,[MEDICALID]
           ,[INSURANCE]
           ,[THEREAPIST_ID]
           ,[PHYSICIAN]
           ,[HEALTHAGENCY]
           ,[MEDICAL_NECESSITY]
           ,[CREATED_BY]
           ,[CREATED_DATE]
           ,[LAST_UPDATED_BY]
           ,[LAST_UPDATED_DATE])
     VALUES
           (<NAME, varchar(50),>
           ,<PRIMARY_PHONE, varchar(11),>
           ,<SECONDARY_PHONE, varchar(11),>
           ,<DOB, date,>
           ,<SSN, varchar(15),>
           ,<MEDICARE, varchar(10),>
           ,<MEDICALID, varchar(10),>
           ,<INSURANCE, varchar(10),>
           ,<THEREAPIST_ID, int,>
           ,<PHYSICIAN, int,>
           ,<HEALTHAGENCY, int,>
           ,<MEDICAL_NECESSITY, varchar(60),>
           ,<CREATED_BY, int,>
           ,<CREATED_DATE, date,>
           ,<LAST_UPDATED_BY, int,>
           ,<LAST_UPDATED_DATE, date,>)
GO

