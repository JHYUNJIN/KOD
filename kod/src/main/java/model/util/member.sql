CREATE TABLE MEMBER(
	MEMBER_ID 		VARCHAR(20) PRIMARY KEY,
	MEMBER_PW 		VARCHAR(30) NOT NULL,
	MEMBER_NAME 	VARCHAR(30) NOT NULL,
	MEMBER_PHONE 	VARCHAR(20) NOT NULL,
	MEMBER_EMAIL 	VARCHAR(30) NOT NULL UNIQUE,
	MEMBER_GRADE 	VARCHAR(20) NOT NULL,
	MEMBER_GENDER	VARCHAR(10) NOT NULL, 
	MEMBER_BIRTH 	VARCHAR(20) NOT NULL
);

SELECT * FROM MEMBER;

DROP TABLE MEMBER;