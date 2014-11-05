
--DROP procedure userAuthentication

CREATE PROCEDURE userAuthentication(
	@userName varchar(40),
	@password varchar(40)
	) 
AS
BEGIN

	Declare @role INT
	select @role=ROLE_ID from users where username=@userName and pass_word=@password
	
	if @role = 1
	BEGIN
		select U.ID AS USERID,U.ROLE_ID as ROLEID,U.USERNAME as USERNAME,A.ID AS GROUPID from USERS U,ADMIN A where U.ID = A.USER_ID and U.USERNAME = @userName
	END
	else if @role = 2
	BEGIN
		select U.ID AS USERID,U.ROLE_ID as ROLEID,U.USERNAME as USERNAME,A.ID AS GROUPID from USERS U,AGENCY A where U.ID = A.USER_ID and U.USERNAME = @userName
	END
	else if @role = 3
	BEGIN
		select U.ID AS USERID,U.ROLE_ID as ROLEID,U.USERNAME as USERNAME,A.AGENCY_ID AS GROUPID from USERS U,THEREAPIST A where U.ID = A.USER_ID and U.USERNAME = @userName
	END
END



--EXEC userAuthentication 'TESTAGENT','testagent'