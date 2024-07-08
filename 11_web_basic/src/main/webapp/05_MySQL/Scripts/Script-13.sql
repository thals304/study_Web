CREATE DATABASE SPRING_JPA_TRAINING_VER2;

USE SPRING_JPA_TRAINING_VER2;

CREATE TABLE MEMBER (
    MEMBER_ID 				VARCHAR(20)  PRIMARY KEY,
    PASSWD 					VARCHAR(255) NOT NULL,
    PROFILE_ORIGINAL_NAME	VARCHAR(255) NOT NULL,
    PROFILE_UUID			VARCHAR(255) NOT NULL,
	MEMBER_NM 				VARCHAR(50)  NOT NULL,
	SEX 					CHAR(1)  	 NOT NULL,
	BIRTH_AT 				DATE     	 NOT NULL, 
	HP 						CHAR(13) 	 NOT NULL,
	SMSSTS_YN 				CHAR(1)   	 NOT NULL,
	EMAIL 					VARCHAR(30)  NOT NULL,
	EMAILSTS_YN 			CHAR(1)   	 NOT NULL,
	ZIPCODE 				VARCHAR(10),
	ROAD_ADDRESS 			VARCHAR(255),
	JIBUN_ADDRESS 			VARCHAR(255),
	NAMUJI_ADDRESS 			VARCHAR(255),
	ETC 					TEXT,
	ACTIVE_YN				CHAR(1)		DEFAULT 'y',
	INACTIVE_AT				TIMESTAMP,
	JOIN_AT 				TIMESTAMP	DEFAULT NOW()
);