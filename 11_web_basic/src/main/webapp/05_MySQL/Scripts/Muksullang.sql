CREATE DATABASE MUKSULLANG_RRS;
USE MUKSULLANG_RRS;

CREATE TABLE POST(
	POST_CD      BIGINT PRIMARY KEY AUTO_INCREMENT,
	POST_NM      VARCHAR(20),
	TITLE        VARCHAR(50),
	SORT         VARCHAR(20),
	LOCATION     VARCHAR(1000),
	PHOTO        VARCHAR(200),
	CONTENT      VARCHAR(1000),
	RUNNING_TIME VARCHAR(200),
	UPLOAD_DT    TIMESTAMP DEFAULT NOW()
);


CREATE TABLE MEMBER(
	MEMBER_ID      VARCHAR(100) PRIMARY KEY,
	PASSWD         VARCHAR(100),
	EMAIL          VARCHAR(50),
	ADDRESS        VARCHAR(20),
	PROFILE        VARCHAR(200),
	AGREE_YN       CHAR(1),
	AGREE_EMAIL_YN CHAR(1)
);

CREATE TABLE COMMENT(
    COMMENT_CD    BIGINT PRIMARY KEY AUTO_INCREMENT,
    POST_CD       BIGINT,
    MEMBER_ID     VARCHAR(100),
    REVIEW        VARCHAR(300),
    RATING        INT,
    REVIEW_LIKE   BIGINT,
    UPLOAD_DT     TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (POST_CD) REFERENCES POST(POST_CD),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE BOOKMARK(
    BOOKMARK_CD BIGINT PRIMARY KEY AUTO_INCREMENT,
	MEMBER_ID VARCHAR(100),
	POST_CD   BIGINT,
	REG_DT    TIMESTAMP,
	FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (POST_CD) REFERENCES POST(POST_CD)
);

CREATE TABLE ADMIN(
	ADMIN_ID VARCHAR(100) PRIMARY KEY,
	PASSWORD VARCHAR(100),
	ROLE     VARCHAR(20)
);