USE LunchBox

CREATE TABLE ROLES(
		ID INT IDENTITY(1,1) PRIMARY KEY,
		ROLE VARCHAR(20),
		DESCRIPTION VARCHAR(30),
		CREATEDON DATE
		);

CREATE TABLE USERS( 
		ID int IDENTITY(1,1) PRIMARY KEY,
		USERNAME VARCHAR(20),
		PASS_WORD VARCHAR(20),
		ROLE_ID INTEGER FOREIGN KEY REFERENCES ROLES(ID),
		CREATEDON DATE,
		LASTLOGIN DATE
		);



CREATE TABLE ADMIN(
		ID int IDENTITY(1,1) PRIMARY KEY,
		USER_ID INT FOREIGN KEY REFERENCES USERS(ID),
		NAME VARCHAR(30),
		CREATEDON DATE
		);

CREATE TABLE AGENCY(
		ID int IDENTITY(1,1) PRIMARY KEY,
		ADDRESS VARCHAR(50),
		USER_ID INT FOREIGN KEY REFERENCES USERS(ID),
		TAX_ID VARCHAR(20)
		);

CREATE TABLE THEREAPIST(
		ID INT IDENTITY(1,1) PRIMARY KEY, 
		AGENCY_ID INT FOREIGN KEY REFERENCES AGENCY(Id),
		USER_ID INT FOREIGN KEY REFERENCES USERS(ID),
		TYPE_CODE VARCHAR(5),
		FIRST_NAME VARCHAR(20),
		LAST_NAME VARCHAR(20),
		INTERNAL_EMAIL VARCHAR(25),
		PHONE_NUMBER VARCHAR(12),
		ZIP_CODE_BASE VARCHAR(6),
		TAX_ID VARCHAR(10));
		
CREATE TABLE PHYSICIAN(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	FULL_NAME VARCHAR(50),
	EMAIL VARCHAR(40),
	PHONE VARCHAR(12),
	AGENT_ID INT FOREIGN KEY REFERENCES AGENCY(ID),
	CREATED_BY INT FOREIGN KEY REFERENCES USERS(ID),
	CREATED_DATE DATE
	);
	
CREATE TABLE HEALTHAGENCY(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NAME VARCHAR(40),
	ADDRESS VARCHAR(60),
	PHONE VARCHAR(12),
	TAX_ID VARCHAR(20),
	CREATED_BY INT FOREIGN KEY REFERENCES USERS(ID),
	CREATED_DATE DATE
);

CREATE TABLE PATENT(
	PATID INT IDENTITY(1,1) PRIMARY KEY,
	NAME VARCHAR(50),
	PRIMARY_PHONE VARCHAR(11),
	SECONDARY_PHONE VARCHAR(11),
	DOB DATE,
	SSN VARCHAR(15),
	MEDICARE VARCHAR(10),
	MEDICALID VARCHAR(10),
	INSURANCE VARCHAR(10),
	THEREAPIST_ID INT FOREIGN KEY REFERENCES THEREAPIST(ID),
	PHYSICIAN INT FOREIGN KEY REFERENCES PHYSICIAN(ID),
	HEALTHAGENCY INT FOREIGN KEY REFERENCES HEALTHAGENCY(ID),
	MEDICAL_NECESSITY VARCHAR(60),
	CREATED_BY INT FOREIGN KEY REFERENCES USERS(ID),
	CREATED_DATE DATE,
	LAST_UPDATED_BY INT FOREIGN KEY REFERENCES USERS(ID),
	LAST_UPDATED_DATE DATE
	
);


INSERT INTO PATENT VALUES('tam negun','23147890','','11/04/2014','7893458945','testme','789009','bharati',1,null,null,'comments',3,'11/04/2014',null,'');

select * from PATENT;